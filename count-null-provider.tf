variable "condition" {
  default = true
}
resource "null_resource" "screen_output" {
count = var.condition?1 : 3
  provisioner "local-exec" {
    command = <<EOT
    packer --help
    EOT
  }
}
###
