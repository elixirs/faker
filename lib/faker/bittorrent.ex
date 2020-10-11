defmodule Faker.BitTorrent do
  import Faker, only: [sampler: 2]
  @moduledoc """
  Function for generating BitTorrent-related data.
  """

  @doc """
  Returns a random info hash.

  ## Examples

      iex> Faker.BitTorrent.info_hash()
      <<214, 217, 139, 136, 200, 102, 244, 150, 219, 212, 222, 123, 164, 141, 15, 82, 41, 250, 123, 249>>
      iex> Faker.BitTorrent.info_hash()
      <<7, 40, 178, 114, 103, 188, 91, 124, 150, 79, 51, 45, 201, 237, 208, 44, 201, 243, 129, 222>>
      iex> Faker.BitTorrent.info_hash() |> Base.encode16(case: :lower)
      "f9d922a146bf85508a5f03ff18750bf363f4aef1"
      iex> Faker.BitTorrent.info_hash() |> Base.encode16(case: :lower)
      "264e3bcc9b5c2accb99a3a4993ad56b778dc26ed"

  """
  def info_hash do
    Faker.random_bytes(20)
  end

  @doc """
  Returns a random client ID, which is part of the peer ID for some peer ID formats.

  ## Examples

      iex> Faker.BitTorrent.client_id()
      "EL"
      iex> Faker.BitTorrent.client_id()
      "RC"
      iex> Faker.BitTorrent.client_id()
      "eA"
  """
  def client_id do
    Faker.Util.format("%2b")
  end

  @doc """
  Returns a random peer ID.

      iex> Faker.BitTorrent.peer_id()
      "-LR4264-610832970523"
      iex> Faker.BitTorrent.peer_id()
      "VyocpC---VOYtpLTPqyr"
      iex> Faker.BitTorrent.peer_id()
      "XYDTov---cZbesVVNqvV"
      iex> Faker.BitTorrent.peer_id()
      "FygLkc---pydycqXMIPh"
      iex> Faker.BitTorrent.peer_id()
      "sdWCQj---RAWsnKEuofR"
      iex> Faker.BitTorrent.peer_id()
      <<51, 188, 53, 37, 187, 69, 148, 161, 163, 120, 220, 41, 247, 65, 221, 112, 62, 253, 148, 221>>
  """
  def peer_id do
    ["-%2b%4d-%12d", "%6b---%11b", "%r"]
    |> Enum.at(Faker.random_between(0, 2))
    |> Faker.Util.format(
      r: fn -> Faker.random_bytes(20) end,
      d: &Faker.Util.digit/0,
      b: &Faker.Util.letter/0)
  end

  @doc """
  Returns a random piece size, in bytes.

  ## Examples

      iex> Faker.BitTorrent.piece_size_bytes()
      1048576
      iex> Faker.BitTorrent.piece_size_bytes()
      524288
      iex> Faker.BitTorrent.piece_size_bytes()
      131072
  """
  sampler(:piece_size_bytes, [
    # Values taken from qBittorrent v4.2.5's torrent creator
    16384, # 16 KiB
    32768, # 32 KiB
    65536, # 64 KiB
    131072, # 128 KiB
    262144, # 256 KiB
    524288, # 512 KiB
    1048576, # 1 Mib
    2097152, # 2 MiB
    4194304, # 4 MiB
    8388608, # 8 MiB
    16777220, # 16 MiB
    33554430 # 32 MiB
  ])

  @doc """
  Returns a random peer wire protocol message

  ## Examples

      iex> Faker.BitTorrent.message()
      <<1::size(4), 3>>
      iex> Faker.BitTorrent.message()
      <<1::size(4), 2>>
      iex> Faker.BitTorrent.message()
      <<13::big-size(4), 6, 13704::big-size(4), 72::big-size(4), 16384::big-size(4)>>
  """
  def message do
    case message_type() do
      :choke -> <<1::big-size(4), 0>>
      :unchoke -> <<1::big-size(4), 1>>
      :interested -> <<1::big-size(4), 2>>
      :not_interested -> <<1::big-size(4), 3>>
      :have ->
        index = Faker.random_between(0, 51200)
        <<5::big-size(4), 4, index::big-size(4)>>
      :bitfield ->
        # simulate bitfields for something between a 16 KiB torrent and a 100 GiB torrent
        bitfield_bytes = Faker.random_between(16384, 107374200000)
        bitfield_integer_byte_length = ceil(bitfield_bytes / 8)
        total_message_length = bitfield_integer_byte_length + 1

        <<total_message_length::big-size(4), 5, bitfield_bytes::binary>>
      :request ->
        index = piece_index()
        offset = block_offset()
        <<13::big-size(4), 6, index::big-size(4), offset::big-size(4), 16384::big-size(4)>>
      :piece ->
        index = piece_index()
        offset = block_offset()
        data = Faker.random_bytes(16384)
        <<16393::big-size(4), 7, index::big-size(4), offset::big-size(4), data::binary>>
      :cancel ->
        index = piece_index()
        offset = block_offset()
        <<13::big-size(4), 7, index::big-size(4), offset::big-size(4), 16384::big-size(4)>>
    end
  end

  defp message_type do
    ~W(choke unchoke interested not_interested have bitfield request piece cancel)a
    |> Enum.at(Faker.random_between(0, 8))
  end

  @doc """
  Returns a random index of a piece within a download.

  By default, uses a 100 GiB torrent in 2 MiB pieces, resulting in 512000 pieces total,
  but you can configure these with the `:download_size` and `:piece_size` options (both in bytes).

  ## Examples

      iex> Faker.BitTorrent.piece_index()
      17110
      iex> Faker.BitTorrent.piece_index(download_size: 33554430)
      11
      iex> Faker.BitTorrent.piece_index(piece_size: 33554430)
      1035
      iex> Faker.BitTorrent.piece_index(download_size: 33554430, piece_size: 524288)
      5
  """
  def piece_index(opts \\ []) do
    download_size = Keyword.get(opts, :download_size, 107374200000)
    piece_size = Keyword.get(opts, :piece_size, 2097152)

    Faker.random_between(0, floor(download_size / piece_size) - 1)
  end

  @doc """
  Returns a random offset of a block within a piece.

  By default, uses a 2 MiB piece size, and a 16 KiB block size,
  but you can configure these with the `:piece_size` and `:block_size` options.

  ## Examples

      iex> Faker.BitTorrent.block_offset()
      86
      iex> Faker.BitTorrent.block_offset(piece_size: 32768)
      1
      iex> Faker.BitTorrent.block_offset(piece_size: 65536, block_size: 32768)
      1
  """
  def block_offset(opts \\ []) do
    piece_size = Keyword.get(opts, :piece_size, 2097152)
    block_size = Keyword.get(opts, :block_size, 16384)

    Faker.random_between(0, floor(piece_size / block_size) - 1)
  end
end
