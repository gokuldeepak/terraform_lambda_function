#First create a bucket or use Data
#Second Create a lambda Function
#Third Permission for any triggers(S3) to access Lambda
#Fourth S3 Notification trigger for particular lambda Function

#Function 1

module "lambda_function_1" {
  source = "../modules/lambda"
  lambda_name = var.lambda_name_1
  runtime = var.runtime_version_1
  filename = data.archive_file.python_zip.output_path
  handler = var.handler_1
  iam_role = data.terraform_remote_state.infra.outputs.iam_lambda_role_arn
  source_code_hash = data.archive_file.python_zip.output_base64sha256
  memory_size = var.memory_size_1
  timeout = var.timeout_1
  layers = var.layers_1
  variables_env = var.variables_env_1
  subnet_id = data.terraform_remote_state.infra.outputs.private_subnet_id
  sg_id = data.terraform_remote_state.infra.outputs.sg_id
  depends_on = [
      data.archive_file.python_zip
    ]
}
module "s3_permission_lambda_1" {
  source = "../modules/lambda_permission"
  statement_id = "AllowExecutionFromS3Bucket"
  action = "lambda:InvokeFunction"
  function_name = module.lambda_function_1.arn
  principal = "s3.amazonaws.com"
  source_arn = data.terraform_remote_state.infra.outputs.s3_bucket_arn
}
module "data_s3_bucket_trigger_1" {
  source = "../modules/s3_notification"
  bucket_id = data.terraform_remote_state.infra.outputs.s3_bucket_id
  lambda_function_arn = module.lambda_function_1.arn
  events = ["s3:ObjectCreated:*"]
  filter_prefix = "foldername"
  filter_suffix = ".zip"
  depends_on = [module.s3_permission_lambda_1]
} 




