defmodule Faker.Job.En do
  import Faker, only: [sampler: 2]

  @doc """
  Returns a random job title

  ## Examples

      iex> Faker.Job.En.title()
      "Product Mining Officer"
      iex> Faker.Job.En.title()
      "Sales Planner"
      iex> Faker.Job.En.title()
      "Legacy Manufacturing Producer"
      iex> Faker.Job.En.title()
      "Accounting Consultant"
  """
  @spec title() :: String
  def title, do: title(Faker.random_between(0, 4))

  defp title(0) do
    "#{seniority()} #{field()} #{position()}"
  end

  defp title(1) do
    "#{seniority()} #{field()} #{position()}"
  end

  defp title(2) do
    "#{field()} #{position()}"
  end

  defp title(3) do
    "#{field()} #{position()}"
  end

  defp title(4) do
    "#{seniority()} #{position()}"
  end

  @doc """
  Returns a random job position

  ## Examples

      iex> Faker.Job.En.position()
      "Administrator"
      iex> Faker.Job.En.position()
      "Associate"
      iex> Faker.Job.En.position()
      "Administrator"
      iex> Faker.Job.En.position()
      "Officer"
  """
  @spec position() :: String
  sampler(:position, [
    "Supervisor",
    "Associate",
    "Executive",
    "Liaison",
    "Officer",
    "Manager",
    "Engineer",
    "Specialist",
    "Director",
    "Coordinator",
    "Administrator",
    "Architect",
    "Analyst",
    "Designer",
    "Planner",
    "Orchestrator",
    "Technician",
    "Developer",
    "Producer",
    "Consultant",
    "Assistant",
    "Facilitator",
    "Agent",
    "Representative",
    "Strategist"
  ])

  @doc """
  Returns a random job field

  ## Examples

      iex> Faker.Job.En.field()
      "Government"
      iex> Faker.Job.En.field()
      "Accounting"
      iex> Faker.Job.En.field()
      "Mining"
      iex> Faker.Job.En.field()
      "Hospitality"
  """
  @spec field() :: String
  sampler(:field, [
    "Marketing",
    "IT",
    "Accounting",
    "Administration",
    "Advertising",
    "Banking",
    "Community-Services",
    "Construction",
    "Consulting",
    "Design",
    "Education",
    "Farming",
    "Government",
    "Healthcare",
    "Hospitality",
    "Legal",
    "Manufacturing",
    "Marketing",
    "Mining",
    "Real-Estate",
    "Retail",
    "Sales",
    "Technology"
  ])

  @doc """
  Returns a random job key skill

  ## Examples

      iex> Faker.Job.En.key_skill()
      "Confidence"
      iex> Faker.Job.En.key_skill()
      "Work under pressure"
      iex> Faker.Job.En.key_skill()
      "Leadership"
      iex> Faker.Job.En.key_skill()
      "Networking skills"
  """
  @spec key_skill() :: String
  sampler(:key_skill, [
    "Teamwork",
    "Communication",
    "Problem solving",
    "Leadership",
    "Organisation",
    "Work under pressure",
    "Confidence",
    "Self-motivated",
    "Networking skills",
    "Proactive",
    "Fast learner",
    "Technical savvy"
  ])

  @doc """
  Returns a random job seniority

  ## Examples

      iex> Faker.Job.En.seniority()
      "Central"
      iex> Faker.Job.En.seniority()
      "Product"
      iex> Faker.Job.En.seniority()
      "Lead"
      iex> Faker.Job.En.seniority()
      "District"
  """
  @spec seniority() :: String
  sampler(:seniority, [
    "Lead",
    "Senior",
    "Product",
    "National",
    "Regional",
    "District",
    "Central",
    "Global",
    "Customer",
    "Investor",
    "Dynamic",
    "International",
    "Legacy",
    "Forward",
    "Internal",
    "Chief",
    "Direct",
    "Corporate",
    "Future",
    "Human",
    "Principal"
  ])

  @doc """
  Returns a random job employment type

  ## Examples

      iex> Faker.Job.En.employment_type()
      "Full-time"
      iex> Faker.Job.En.employment_type()
      "Commission"
      iex> Faker.Job.En.employment_type()
      "Contract"
      iex> Faker.Job.En.employment_type()
      "Temporary"
  """
  @spec employment_type() :: String
  sampler(:employment_type, [
    "Full-time",
    "Part-time",
    "Temporary",
    "Contract",
    "Internship",
    "Commission"
  ])

  @doc """
  Returns a random job education level

  ## Examples

      iex> Faker.Job.En.education_level()
      "Master"
      iex> Faker.Job.En.education_level()
      "Bachelor"
      iex> Faker.Job.En.education_level()
      "Doctorate"
      iex> Faker.Job.En.education_level()
      "Associates"
  """
  @spec education_level() :: String
  sampler(:education_level, [
    "Associates",
    "Bachelor",
    "Master",
    "Doctorate"
  ])
end
