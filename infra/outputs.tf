output "iam_lambda_role_arn" {
  value = aws_iam_role.lambda_role.arn
}

output "private_subnet_id" {
  value = module.private_subnet.id
}

output "sg_id" {
    value = module.sg.id
}

output "s3_bucket_id" {
  value = module.s3_bucket.id
}

output "s3_bucket_arn" {
  value = module.s3_bucket.arn
}