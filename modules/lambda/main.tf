resource "aws_lambda_function" "this" {
  runtime = var.runtime
  filename         = var.filename
  function_name    = var.lambda_name
  handler          = var.handler
  source_code_hash = var.source_code_hash
  role             = var.iam_role
  memory_size = var.memory_size
  timeout = var.timeout
  layers = var.layers
  vpc_config {
    subnet_ids         = [var.subnet_id]
    security_group_ids = [var.sg_id]
  }
  dynamic "environment" {
    for_each = length(keys(var.variables_env)) == 0 ? [] : [true]
    content {
      variables = var.variables_env
    }
  }
}

