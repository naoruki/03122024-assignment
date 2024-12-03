# Resource to create DynamoDB table
resource "aws_dynamodb_table" "example" {
  name           = "cornelia-assignment"               # Replace with your table name
  billing_mode   = "PAY_PER_REQUEST"             # Billing mode (On-demand)
  hash_key       = "ActivityID"                  # Partition key

  attribute {
    name = "ActivityID"
    type = "S"                                   # 'S' stands for String
  }

  # Optional: Define tags for the table
  tags = {
    Environment = "Development"
    Project     = "Assignment"
  }
}

# Resource to create DynamoDB table for state locking
resource "aws_dynamodb_table" "terraform_locks" {
  name           = "terraform-locks"             # Lock table for state management
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "Terraform"
    Purpose     = "StateLocking"
  }
}
