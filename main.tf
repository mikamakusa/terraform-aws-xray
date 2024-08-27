resource "aws_xray_encryption_config" "this" {
  count  = length(var.encryption_config)
  type   = lookup(var.encryption_config[count.index], "type")
  key_id = try(element(module.kms.*.key_arn, lookup(var.encryption_config[count.index], "key_id")))
}

resource "aws_xray_group" "this" {
  count             = length(var.group)
  filter_expression = lookup(var.group[count.index], "filter_expression")
  group_name        = lookup(var.group[count.index], "group_name")
  tags              = merge(var.tags, data.aws_default_tags.this.tags, lookup(var.group[count.index], "tags"))

  dynamic "insights_configuration" {
    for_each = try(lookup(var.group[count.index], "insights_configuration") == null ? [] : ["insights_configuration"])
    iterator = in
    content {
      insights_enabled      = lookup(in.value, "insights_enabled")
      notifications_enabled = lookup(in.value, "notifications_enabled")
    }
  }
}

resource "aws_xray_sampling_rule" "this" {
  count          = length(var.sampling_rule)
  fixed_rate     = lookup(var.sampling_rule[count.index], "fixed_rate")
  host           = lookup(var.sampling_rule[count.index], "host")
  http_method    = lookup(var.sampling_rule[count.index], "http_method")
  priority       = lookup(var.sampling_rule[count.index], "priority")
  reservoir_size = lookup(var.sampling_rule[count.index], "reservoir_size")
  resource_arn   = lookup(var.sampling_rule[count.index], "resource_arn")
  service_name   = lookup(var.sampling_rule[count.index], "service_name")
  service_type   = lookup(var.sampling_rule[count.index], "service_type")
  url_path       = lookup(var.sampling_rule[count.index], "url_path")
  version        = lookup(var.sampling_rule[count.index], "version")
  attributes     = lookup(var.sampling_rule[count.index], "attributes")
  tags           = merge(var.tags, data.aws_default_tags.this.tags, lookup(var.sampling_rule[count.index], "tags"))
}