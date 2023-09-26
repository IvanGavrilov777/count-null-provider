resource "null_resource" "screen_output" {
count = 4
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello'
    EOT
  }
}
