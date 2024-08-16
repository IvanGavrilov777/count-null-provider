variable "condition" {
  default = true
}
resource "null_resource" "screen_output" {
triggers = {
time = timestamp ()
}
count = var.condition?1 : 300
  provisioner "local-exec" {
    command = <<EOT
    ls
    EOT
  }
}
#######123123132311231231231231231
