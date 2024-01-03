/*--------------- Output Values ---------------*/

output "public_instance_ids" {
  value = aws_instance.ec2-project[*].id
}

output "key_pair_name" {
  value = aws_key_pair.private-key-pair.key_name
}
