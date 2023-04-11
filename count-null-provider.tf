resource "null_resource" "screen_output" {
count = 3
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello'
    EOT
  }
}
