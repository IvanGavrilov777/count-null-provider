variable "condition" {
  default = false
}
resource "null_resource" "screen_output" {
count = var.condition?1 : 3
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello'
    EOT
  }
}
#
