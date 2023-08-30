variable "condition" {
  default = false
}
resource "null_resource" "screen_output" {
triggers = {
time = timestamp ()
}
count = var.condition?1 : 3
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello World'
    EOT
  }
}
#######123
