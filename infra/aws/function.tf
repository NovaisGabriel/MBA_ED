resource "aws_lambda_function" "decompresss3" {
  filename      = "../../functions/fn_extract_rais.zip"
  function_name = "${local.prefix}_igti_df_extract_rais"
  role          = aws_iam_role.lambda_decompress.arn
  handler       = "handler.handler"
  runtime       = "python3.8"
  timeout       = 900
  memory_size   = 10000
  tags          = local.common_tags

}