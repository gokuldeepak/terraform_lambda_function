#Lambda Function
lambda_name = "Data_Extraction"
runtime_version = "python3.9"
handler = "file.lambda_handler"
layers = []
variables_env = {
  ALLOCATIONS_KEY = "value",
  AVAILS_KEY = "value",
  INVENTOTY_KEY = "value",
  S3_BUCKET = "value"

}
memory_size = 1024
timeout = 900
