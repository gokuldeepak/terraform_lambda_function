#First create a bucket or use Data
#Second Create a lambda Function
#Third Permission for any triggers(S3) to access Lambda
#Fourth S3 Notification trigger for particular lambda Function

#Function 1

module "lambda_function" {
  source = "../modules/lambda"
  lambda_name = var.lambda_name
  runtime = var.runtime_version
  filename = data.archive_file.python_zip.output_path
  handler = var.handler
  iam_role = data.terraform_remote_state.infra.outputs.iam_lambda_role_arn
  source_code_hash = data.archive_file.python_zip.output_base64sha256
  memory_size = var.memory_size
  timeout = var.timeout
  layers = var.layers
  variables_env = var.variables_env
  subnet_id = data.terraform_remote_state.infra.outputs.private_subnet_id
  sg_id = data.terraform_remote_state.infra.outputs.sg_id
  depends_on = [
      data.archive_file.python_zip
    ]
}
module "s3_permission_lambda" {
  source = "../modules/lambda_permission"
  statement_id = "AllowExecutionFromS3Bucket"
  action = "lambda:InvokeFunction"
  function_name = module.lambda_function.arn
  principal = "s3.amazonaws.com"
  source_arn = data.terraform_remote_state.infra.outputs.s3_bucket_arn
}
module "data_s3_bucket_trigger" {
  source = "../modules/s3_notification"
  bucket_id = data.terraform_remote_state.infra.outputs.s3_bucket_id
  lambda_function_arn = module.lambda_function.arn
  events = ["s3:ObjectCreated:*"]
  filter_prefix = "foldername"
  filter_suffix = ".zip"
  depends_on = [module.s3_permission_lambda]
} 




