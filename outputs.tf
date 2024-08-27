## XRAY ENCRYPTION CONFIG

output "encryption_config_id" {
  value = try(
    aws_xray_encryption_config.this.*.id
  )
}

output "encryption_config_type" {
  value = try(
    aws_xray_encryption_config.this.*.type
  )
}

output "encryption_config_key_id" {
  value = try(
    aws_xray_encryption_config.this.*.key_id
  )
}

## GROUP

output "group_id" {
  value = try(
    aws_xray_group.this.*.id
  )
}

output "group_arn" {
  value = try(
    aws_xray_group.this.*.arn
  )
}

output "group_name" {
  value = try(
    aws_xray_group.this.*.group_name
  )
}

## SAMPLING RULE

output "sampling_rule_arn" {
  value = try(
    aws_xray_sampling_rule.this.*.arn
  )
}

output "sampling_rule_id" {
  value = try(
    aws_xray_sampling_rule.this.*.id
  )
}

output "sampling_rule_priority" {
  value = try(
    aws_xray_sampling_rule.this.*.priority
  )
}

output "sampling_rule_fixed_rate" {
  value = try(
    aws_xray_sampling_rule.this.*.fixed_rate
  )
}

output "sampling_rule_tags" {
  value = try(
    aws_xray_sampling_rule.this.*.tags
  )
}