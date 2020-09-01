defmodule Faker.Aws.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating AWS information in English
  """

  @doc """
  Returns a random region name available on AWS

  ## Examples

      iex> Faker.Aws.En.region_name()
      "Asia Pacific (Tokyo)"
      iex> Faker.Aws.En.region_name()
      "US East (Ohio)"
      iex> Faker.Aws.En.region_name()
      "Europe (Milan)"
      iex> Faker.Aws.En.region_name()
      "Africa (Cape Town)"
  """
  @spec region_name() :: String.t()
  sampler(:region_name, [
    "US East (N. Virginia)",
    "US East (Ohio)",
    "US West (N. California)",
    "US West (Oregon)",
    "Africa (Cape Town)",
    "Asia Pacific (Hong Kong)",
    "Asia Pacific (Mumbai)",
    "Asia Pacific (Seoul)",
    "Asia Pacific (Singapore)",
    "Asia Pacific (Sydney)",
    "Asia Pacific (Tokyo)",
    "Canada (Central)",
    "Europe (Frankfurt)",
    "Europe (Ireland)",
    "Europe (London)",
    "Europe (Milan)",
    "Europe (Paris)",
    "Europe (Stockholm)",
    "Middle East (Bahrain)",
    "South America (São Paulo)"
  ])

  @doc """
  Returns a random region code available on AWS

  ## Examples

      iex> Faker.Aws.En.region_code()
      "ap-northeast-1"
      iex> Faker.Aws.En.region_code()
      "us-east-2"
      iex> Faker.Aws.En.region_code()
      "eu-south-1"
      iex> Faker.Aws.En.region_code()
      "af-south-1"
  """
  @spec region_code() :: String.t()
  sampler(:region_code, [
    "us-east-1",
    "us-east-2",
    "us-west-1",
    "us-west-2",
    "af-south-1",
    "ap-east-1",
    "ap-south-1",
    "ap-northeast-2",
    "ap-southeast-1",
    "ap-southeast-2",
    "ap-northeast-1",
    "ca-central-1",
    "eu-central-1",
    "eu-west-1",
    "eu-west-2",
    "eu-south-1",
    "eu-west-3",
    "eu-north-1",
    "me-south-1",
    "sa-east-1"
  ])

  @doc """
  Returns a random Aws service in 

  ## Examples

    iex> Faker.Aws.En.service()
    "AWS Compute Optimizer"
    iex> Faker.Aws.En.service()
    "Ground Station"
    iex> Faker.Aws.En.service()
    "Neptune"
    iex> Faker.Aws.En.service()
    "DataSync"
  """
  @spec service() :: String.t()
  sampler(:service, [
    "EC2",
    "Lightsail",
    "Lambda",
    "Batch",
    "Elastic Beanstalk",
    "Serverless Application Repository",
    "AWS Outposts",
    "EC2 Image Builder",
    "S3",
    "EFS",
    "FSx",
    "S3 Glacier",
    "Storage Gateway",
    "AWS Backup",
    "RDS",
    "DynamoDB",
    "ElastiCache",
    "Neptune",
    "Amazon Redshift",
    "Amazon QLDB",
    "Amazon DocumentDB",
    "Amazon Keyspaces",
    "AWS Migration Hub",
    "Application Discovery Service",
    "Database Migration Service",
    "Server Migration Service",
    "AWS Transfer Family",
    "AWS Snow Family",
    "DataSync",
    "VPC",
    "CloudFront",
    "Route 53",
    "API Gateway",
    "Direct Connect",
    "AWS App Mesh",
    "AWS Cloud Map",
    "Global Accelerator",
    "CodeStar",
    "CodeCommit",
    "CodeArtifact",
    "CodeBuild",
    "CodeDeploy",
    "CodePipeline",
    "Cloud9",
    "X-Ray",
    "AWS RoboMaker",
    "AWS IQ",
    "Support",
    "Managed Services",
    "Amazon Managed Blockchain",
    "Ground Station",
    "Amazon Braket",
    "AWS Organizations",
    "CloudWatch",
    "AWS Auto Scaling",
    "CloudFormation",
    "CloudTrail",
    "Config",
    "OpsWorks",
    "Service Catalog",
    "Systems Manager",
    "AWS AppConfig",
    "Trusted Advisor",
    "Control Tower",
    "AWS License Manager",
    "AWS Well-Architected Tool",
    "Personal Health Dashboard",
    "AWS Chatbot",
    "Launch Wizard",
    "AWS Compute Optimizer",
    "Kinesis Video Streams",
    "MediaConnect",
    "MediaConvert",
    "MediaLive",
    "MediaPackage",
    "MediaStore",
    "MediaTailor",
    "Elemental Appliances & Software",
    "Amazon Interactive Video Service",
    "Elastic Transcoder",
    "Amazon SageMaker",
    "Amazon Augmented AI",
    "Amazon CodeGuru",
    "Amazon Comprehend",
    "Amazon Forecast",
    "Amazon Fraud Detector",
    "Amazon Kendra",
    "Amazon Lex",
    "Amazon Personalize",
    "Amazon Polly",
    "Amazon Rekognition",
    "Amazon Textract",
    "Amazon Transcribe",
    "Amazon Translate",
    "AWS DeepComposer",
    "AWS DeepLens",
    "AWS DeepRacer",
    "Athena",
    "EMR",
    "CloudSearch",
    "Elasticsearch Service",
    "Kinesis",
    "QuickSight",
    "Data Pipeline",
    "AWS Data Exchange",
    "AWS Glue",
    "AWS Lake Formation",
    "MSK",
    "IAM",
    "Resource Access Manager",
    "Cognito",
    "Secrets Manager",
    "GuardDuty",
    "Inspector",
    "Amazon Macie",
    "AWS Single Sign-On",
    "Certificate Manager",
    "Key Management Service",
    "CloudHSM",
    "Directory Service",
    "WAF & Shield",
    "AWS Firewall Manager",
    "Artifact",
    "Security Hub",
    "Detective",
    "AWS Amplify",
    "Mobile Hub",
    "AWS AppSync",
    "Device Farm",
    "Amazon Sumerian",
    "Step Functions",
    "Amazon AppFlow",
    "Amazon EventBridge",
    "Amazon MQ",
    "Simple Notification Service",
    "Simple Queue Service",
    "SWF",
    "AWS Cost Explorer",
    "AWS Budgets",
    "AWS Marketplace Subscriptions",
    "Amazon Connect",
    "Pinpoint",
    "Simple Email Service"
  ])
end
