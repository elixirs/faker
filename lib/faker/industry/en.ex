defmodule Faker.Industry.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Industry related data in English
  """

  @doc """
  Returns a industry name string

  ## Examples

      iex> Faker.Industry.En.industry()
      "Oil & Gas"
      iex> Faker.Industry.En.industry()
      "Basic Materials"
      iex> Faker.Industry.En.industry()
      "Consumer Services"
      iex> Faker.Industry.En.industry()
      "Health Care"
  """
  @spec industry() :: String.t()
  sampler(:industry, [
    "Oil & Gas",
    "Basic Materials",
    "Industrials",
    "Consumer Goods",
    "Health Care",
    "Consumer Services",
    "Telecommunications",
    "Utilities",
    "Financials",
    "Technology"
  ])

  @doc """
  Returns a super sector name string

  ## Examples

      iex> Faker.Industry.En.super_sector()
      "Automobiles & Parts"
      iex> Faker.Industry.En.super_sector()
      "Banks"
      iex> Faker.Industry.En.super_sector()
      "Automobiles & Parts"
      iex> Faker.Industry.En.super_sector()
      "Health Care"
  """
  @spec super_sector() :: String.t()
  sampler(:super_sector, [
    "Oil & Gas",
    "Chemicals",
    "Basic Resources",
    "Construction & Materials",
    "Industrial Goods & Services",
    "Automobiles & Parts",
    "Food & Beverage",
    "Personal & Household Goods",
    "Health Care",
    "Retail",
    "Media",
    "Travel & Leisure",
    "Telecommunications",
    "Utilities",
    "Banks",
    "Insurance",
    "Real Estate",
    "Financial Services",
    "Technology"
  ])

  @doc """
  Returns a sector name string

  ## Examples

      iex> Faker.Industry.En.sector()
      "Food & Drug Retailers"
      iex> Faker.Industry.En.sector()
      "Banks"
      iex> Faker.Industry.En.sector()
      "Software & Computer Services"
      iex> Faker.Industry.En.sector()
      "Media"
  """
  @spec sector() :: String.t()
  sampler(:sector, [
    "Oil & Gas Producers",
    "Oil Equipment, Services & Distribution",
    "Alternative Energy",
    "Chemicals",
    "Forestry & Paper",
    "Industrial Metals & Mining",
    "Mining",
    "Construction & Materials",
    "Aerospace & Defense",
    "General Industrials",
    "Electronic & Electrical Equipment",
    "Industrial Engineering",
    "Industrial Transportation",
    "Support Services",
    "Automobiles & Parts",
    "Beverages",
    "Food Producers",
    "Household Goods & Home Construction",
    "Leisure Goods",
    "Personal Goods",
    "Tobacco",
    "Health Care Equipment & Services",
    "Pharmaceuticals & Biotechnology",
    "Food & Drug Retailers",
    "General Retailers",
    "Media",
    "Travel & Leisure",
    "Fixed Line Telecommunications",
    "Mobile Telecommunications",
    "Electricity",
    "Gas, Water & Multiutilities",
    "Banks",
    "Nonlife Insurance",
    "Life Insurance",
    "Real Estate Investment & Services",
    "Real Estate Investment Trusts",
    "Financial Services",
    "Equity Investment Instruments",
    "Nonequity Investment Instruments",
    "Software & Computer Services",
    "Technology Hardware & Equipment"
  ])

  @doc """
  Returns a sub sector name string

  ## Examples

      iex> Faker.Industry.En.sub_sector()
      "Electrical Components & Equipment"
      iex> Faker.Industry.En.sub_sector()
      "Publishing"
      iex> Faker.Industry.En.sub_sector()
      "Alternative Electricity"
      iex> Faker.Industry.En.sub_sector()
      "Forestry"
  """
  @spec sub_sector() :: String.t()
  sampler(:sub_sector, [
    "Exploration & Production",
    "Integrated Oil & Gas",
    "Oil Equipment & Services",
    "Pipelines",
    "Renewable Energy Equipment",
    "Alternative Fuels",
    "Commodity Chemicals",
    "Specialty Chemicals",
    "Forestry",
    "Paper",
    "Aluminum",
    "Nonferrous Metals",
    "Iron & Steel",
    "Coal",
    "Diamonds & Gemstones",
    "General Mining",
    "Gold Mining",
    "Platinum & Precious Metals",
    "Building Materials & Fixtures",
    "Heavy Construction",
    "Aerospace",
    "Defense",
    "Containers & Packaging",
    "Diversified Industrials",
    "Electrical Components & Equipment",
    "Electronic Equipment",
    "Commercial Vehicles & Trucks",
    "Industrial Machinery",
    "Delivery Services",
    "Marine Transportation",
    "Railroads",
    "Transportation Services",
    "Trucking",
    "Business Support Services",
    "Business Training & Employment Agencies",
    "Financial Administration",
    "Industrial Suppliers",
    "Waste & Disposal Services",
    "Automobiles",
    "Auto Parts",
    "Tires",
    "Brewers",
    "Distillers & Vintners",
    "Soft Drinks",
    "Farming & Fishing",
    "Food Products",
    "Durable Household Products",
    "Nondurable Household Products",
    "Furnishings",
    "Home Construction",
    "Consumer Electronics",
    "Recreational Products",
    "Toys",
    "Clothing & Accessories",
    "Footwear",
    "Personal Products",
    "Tobacco",
    "Health Care Providers",
    "Medical Equipment",
    "Medical Supplies",
    "Biotechnology",
    "Pharmaceuticals",
    "Drug Retailers",
    "Food Retailers & Wholesalers",
    "Apparel Retailers",
    "Broadline Retailers",
    "Home Improvement Retailers",
    "Specialized Consumer Services",
    "Specialty Retailers",
    "Broadcasting & Entertainment",
    "Media Agencies",
    "Publishing",
    "Airlines",
    "Gambling",
    "Hotels",
    "Recreational Services",
    "Restaurants & Bars",
    "Travel & Tourism",
    "Fixed Line Telecommunications",
    "Mobile Telecommunications",
    "Conventional Electricity",
    "Alternative Electricity",
    "Gas Distribution",
    "Multiutilities",
    "Water",
    "Banks",
    "Full Line Insurance",
    "Insurance Brokers",
    "Property & Casualty Insurance",
    "Reinsurance",
    "Life Insurance",
    "Real Estate Holding & Development",
    "Real Estate Services",
    "Industrial & Office REITs",
    "Retail REITs",
    "Residential REITs",
    "Diversified REITs",
    "Specialty REITs",
    "Mortgage REITs",
    "Hotel & Lodging REITs",
    "Asset Managers",
    "Consumer Finance",
    "Specialty Finance",
    "Investment Services",
    "Mortgage Finance",
    "Equity Investment Instruments",
    "Nonequity Investment Instruments",
    "Computer Services",
    "Internet",
    "Software",
    "Computer Hardware",
    "Electronic Office Equipment",
    "Semiconductors",
    "Telecommunications Equipment"
  ])
end
