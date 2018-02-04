defmodule Faker.Industry.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Beer related data in English
  """

  @doc """
  Returns a industry name string
  """
  @spec industry() :: String.t
  sampler :industry, ["Oil & Gas", "Basic Materials", "Industrials", "Consumer Goods", "Health Care", "Consumer Services", "Telecommunications", "Utilities", "Financials", "Technology"]

  @doc """
  Returns a super sector name string
  """
  @spec super_sector() :: String.t
  sampler :super_sector, ["Oil & Gas", "Chemicals", "Basic Resources", "Construction & Materials", "Industrial Goods & Services", "Automobiles & Parts", "Food & Beverage", "Personal & Household Goods", "Health Care", "Retail", "Media", "Travel & Leisure", "Telecommunications", "Utilities", "Banks", "Insurance", "Real Estate", "Financial Services", "Technology"]

  @doc """
  Returns a sector name string
  """
  @spec sector() :: String.t
  sampler :sector, ["Oil & Gas Producers", "Oil Equipment, Services & Distribution", "Alternative Energy", "Chemicals", "Forestry & Paper", "Industrial Metals & Mining", "Mining", "Construction & Materials", "Aerospace & Defense", "General Industrials", "Electronic & Electrical Equipment", "Industrial Engineering", "Industrial Transportation", "Support Services", "Automobiles & Parts", "Beverages", "Food Producers", "Household Goods & Home Construction", "Leisure Goods", "Personal Goods", "Tobacco", "Health Care Equipment & Services", "Pharmaceuticals & Biotechnology", "Food & Drug Retailers", "General Retailers", "Media", "Travel & Leisure", "Fixed Line Telecommunications", "Mobile Telecommunications", "Electricity", "Gas, Water & Multiutilities", "Banks", "Nonlife Insurance", "Life Insurance", "Real Estate Investment & Services", "Real Estate Investment Trusts", "Financial Services", "Equity Investment Instruments", "Nonequity Investment Instruments", "Software & Computer Services", "Technology Hardware & Equipment"]

  @doc """
  Returns a sub sector name string
  """
  @spec sub_sector() :: String.t
  sampler :sub_sector, ["Oil & Gas Producers", "Oil Equipment", "Services & Distribution", "Alternative Energy", "Chemicals", "Forestry & Paper", "Industrial Metals & Mining", "Mining", "Construction & Materials", "Aerospace & Defense", "General Industrials", "Electronic & Electrical Equipment", "Industrial Engineering", "Industrial Transportation", "Support Services", "Automobiles & Parts", "Beverages", "Food Producers", "Household Goods & Home Construction", "Leisure Goods", "Personal Goods", "Tobacco", "Health Care Equipment & Services", "Pharmaceuticals & Biotechnology", "Food & Drug Retailers", "General Retailers", "Media", "Travel & Leisure", "Fixed Line Telecommunications", "Mobile Telecommunications", "Electricity", "Gas", "Water & Multiutilities", "Banks", "Nonlife Insurance", "Life Insurance", "Real Estate Investment & Services", "Real Estate Investment Trusts", "Financial Services", "Equity Investment Instruments", "Nonequity Investment Instruments", "Software & Computer Services", "Technology Hardware & Equipment"]

end
