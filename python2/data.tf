data "terraform_remote_state" "infra" {
    backend = "s3"
    config = {
          bucket = "gokuldeepak"
          key    = "statefiles/infra.tfstate"
          region = "us-east-1"
    }
}

data "archive_file" "python_zip" {
  type             = "zip"
  source_file      = "${path.module}/python-script/file.py"
  output_file_mode = "0666"
  output_path      = "${path.module}/python-script/file.zip"
}


# #For the existing Bucket available
# data "aws_s3_bucket" "selected" {
#   bucket = var.bucket_name
# }

# data "aws_subnet" "selected_public" {
#   filter {
#     name = "tag:Name"
#     values = ["public_subnet_name"]
#   }
# }
# data "aws_subnet" "selected_private" {
#   filter {
#     name = "tag:Name"
#     values = ["private_subnet_name"]
#   }
# }

# data "aws_vpc" "selected" {
#   filter {
#     name = "tag:Name"
#     values = ["vpc_name"]
# }
# }