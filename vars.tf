## MODULES

variable "kms_key" {
  type = any
}

## TAGS

variable "tags" {
  type    = map(string)
  default = {}
}

## RESOURCES

variable "encryption_config" {
  type = list(object({
    id     = number
    type   = string
    key_id = optional(any)
  }))
  default = []

  validation {
    condition     = length([for a in var.encryption_config : true if contains(["KMS", "NONE"], a.type)]) == length(var.encryption_config)
    error_message = "Valid value : KMS or NONE."
  }
}

variable "group" {
  type = list(object({
    id                = number
    filter_expression = string
    group_name        = string
    tags              = optional(map(string))
    insights_configuration = optional(list(object({
      insights_enabled      = bool
      notifications_enabled = optional(bool)
    })))
  }))
  default = []
}

variable "sampling_rule" {
  type = list(object({
    id             = number
    fixed_rate     = number
    host           = string
    http_method    = string
    priority       = number
    reservoir_size = number
    resource_arn   = string
    service_name   = string
    service_type   = string
    url_path       = string
    version        = number
    attributes     = optional(map(string))
    tags           = optional(map(string))
  }))
  default = []
}
