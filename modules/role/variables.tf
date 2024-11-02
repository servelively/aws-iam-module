variable "create_role" {
  type = bool
  default = true
}

variable "role_name" {
    type = string
}
variable "role_description" {
    type = string
    default = ""
}
variable "role_force_detach_policies" {
    type= bool
    default = false
}
variable "role_max_session_duration" {
    type = number
    default = 3600
}
variable "role_path" {
    type = string
    default = "/"
}

variable "roles_assume_policy_json" {
    type = string
}

variable "additional_policy_json_file_content" {
    type = string
    default = null
}
variable "role_create_additional_policy" {
    type = bool
    description = "(optional) describe your variable"
    default = false
}

variable "policy_additional" {
    type = list(string)
    default = []
}

variable "role_additional_policy_name" {
    type = string
    default = "custom"
}
variable "role_additional_policy_description" {
  type = string
  default = ""
}

variable "role_tags" {
    type = map(string)
    default = {
      "Terraform" = "True"
    }
}