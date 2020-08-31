defmodule Faker.Aws.En do
  import Faker, only: [sampler: 2]

  @moduledoc """
  Functions for generating Aws information in English
  """

  @doc """
  Returns a random region from the available Aws regions

  ## Examples

      iex> Faker.Aws.En.region()
      "Asia Pacific (Tokyo)"
      iex> Faker.Aws.En.region()
      "US East (Ohio)"
      iex> Faker.Aws.En.region()
      "Europe (Milan)"
      iex> Faker.Aws.En.region()
      "Africa (Cape Town)"
  """

  @spec region() :: String.t()
  sampler(:region, [
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
