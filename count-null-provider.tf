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
    echo 'Hello World'
    EOT
  }
}
#######12312313231123123123123123
