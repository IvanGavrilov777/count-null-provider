variable "condition" {
  default = true
}
resource "null_resource" "screen_output" {
triggers = {
time = timestamp ()
}
count = var.condition?1 : 3000
  provisioner "local-exec" {
    command = <<EOT
   ls
    EOT
  }
}
#######1231231323112312312312312311212312312
