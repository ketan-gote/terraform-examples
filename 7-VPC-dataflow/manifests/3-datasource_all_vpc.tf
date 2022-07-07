
data "aws_vpcs" "demovpclist" {
  tags = {
    flow-log = "demo"
  }
}

output "demovpclist" {
  value = data.aws_vpcs.demovpclist.ids
}

output "vpc_count" {
  value = length(data.aws_vpcs.demovpclist.ids)
}
