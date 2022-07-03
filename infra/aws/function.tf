resource "aws_lambda_function" "decompresss" {
  filename      = "../../functions/fn_extract_rais.zip"
  function_name = "${local.prefix}_igti_df_extract_rais"
  role          = aws_iam_role.lambda_decompress.arn
  handler       = "handleroutside.handlerinside"
  runtime       = "python3.8"
  timeout       = 899
  memory_size   = 128
  tags          = local.common_tags

}