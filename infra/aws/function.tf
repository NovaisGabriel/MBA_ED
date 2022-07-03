resource "aws_lambda_function" "decompresss" {
  filename      = "../../functions/fn_extract_rais.zip"
  function_name = "decompresss"
  role          = aws_iam_role.lambda_decompress.arn
  handler       = "handler.handler"
  runtime       = "python3.8"
  timeout       = 800
  memory_size   = 9999
  tags          = local.common_tags

}