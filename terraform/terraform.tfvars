﻿# Updated terraform.tfvars for us-east-1

aws_region   = "us-east-1" # Changed from ap-south-1
environment  = "production"
project_name = "hopjetair"


# ECR repositories configuration
ecr_repositories = [
  {
    name             = "non-ai-api"
    scan_on_push     = false
    lifecycle_policy = "standard"
  },
  {
    name             = "rag-api"
    scan_on_push     = false
    lifecycle_policy = "standard"
  },
  {
    name             = "sentiment-api"
    scan_on_push     = false
    lifecycle_policy = "standard"
  },
  {
    name             = "intent-api"
    scan_on_push     = false
    lifecycle_policy = "standard"
  },
  {
    name             = "langgraph-api"
    scan_on_push     = false
    lifecycle_policy = "standard"
  },
  {
    name             = "frontend-api"
    scan_on_push     = false
    lifecycle_policy = "standard"
  }
]

# RDS Configuration
rds_instance_class    = "db.t4g.micro" #"db.t3.micro"
rds_allocated_storage = 20
rds_database_name     = "hopjetairline_db"
rds_username          = "" #"hopjetair"
rds_password          = "" #"SecurePass123!" # IMPORTANT: Change this!


# API credentials
api_key    = "my-secret-key"
api_secret = "Capst0neo3@2024"

# Database credentials  
db_user = "hopjetair"
db_pass = "SecurePass123!"


# Service configurations (optional - can use defaults)
service_configs = {
  frontend-api = {
    cpu    = 512
    memory = 1024
    count  = 1
    port   = 8075
  }
  langgraph-api = {
    cpu    = 1024
    memory = 2048
    count  = 1
    port   = 8065
  }
  intent-api = {
    cpu    = 1024
    memory = 3072
    count  = 1
    port   = 8085
  }
  sentiment-api = {
    cpu    = 1024
    memory = 3072
    count  = 1
    port   = 8095
  }
  non-ai-api = {
    cpu    = 512
    memory = 1024
    count  = 1
    port   = 8003
  }
  rag-api = {
    cpu    = 1024
    memory = 3072
    count  = 1
    port   = 8080
  }
}

#Conditional ALB Target Groups
expose_internal_services = true
