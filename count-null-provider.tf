variable "condition" {
  default = false
}
resource "null_resource" "screen_output" {
triggers = {
time = timestamp ()
}
count = var.condition?1 : 300
  provisioner "local-exec" {
    command = <<EOT
    asdf
    EOT
  }
}
#######12312313231123123123123123112123
