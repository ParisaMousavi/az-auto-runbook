variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "automation_account_name" {
  type = string
}

variable "log_verbose" {
  type    = bool
  default = true
}

variable "log_progress" {
  type    = bool
  default = true
}

variable "description" {
  type = string
}

variable "runbook_type" {
  type = string

}

variable "publish_content_link" {
  type    = string
  default = null
}

variable "additional_tags" {
  default = {}
  type    = map(string)
}

variable "content" {
  type    = string
  default = null
}

