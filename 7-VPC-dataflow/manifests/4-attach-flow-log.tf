 
resource "aws_flow_log" "vpcflowlogkg_demo" {
  log_destination      = "arn:aws:s3:::vpcflowlogkg" 
  log_destination_type = "s3"
  traffic_type         = "ALL"
  
  for_each = toset(data.aws_vpcs.demovpclist.ids)

  vpc_id               = each.key
  
  destination_options {
    file_format        = "parquet"
    per_hour_partition = true
  }
}
