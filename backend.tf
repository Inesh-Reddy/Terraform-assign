terraform {
  backend "s3" {
    bucket = "ineshreddy-terraform"
    key = "terraform.tfstate"
    region = "us-east-2"   

    #dynamodb_table = "ineshreddy-ddb"
    #encrypt        = true  
  }

}


/*resource "aws_dynamodb_table" "terraform_locks" { 
    name         = "ineshreddy-ddb" 
    billing_mode = "PAY_PER_REQUEST" 
    hash_key     = "LockID" 
    attribute {   
        name = "LockID"  
        type = "S" 
    }
}
*/