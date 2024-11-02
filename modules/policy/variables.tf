 variable "create_policy" {
   type = bool
   default = true
 }
variable "policy_file" {
    type = string
}

variable "policy_name" {
    type = string
}
variable "policy_description" {
    type = string
}
variable "policy_path" {
    type = string
    default = "/"
}

variable "policy_tags" {
     type = map(string)
     default= {
         "Name" = "Terraform"
     }
 } 

 variable "attach_policy" {
   type = bool
   default = false
 }
  variable "role_name" {
   type = string
   default = ""
 }

 variable "iam_username" {
   type = string
 }

 variable "attach_iam_user_policy" {
   default = false
 }