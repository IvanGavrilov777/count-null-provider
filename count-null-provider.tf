resource "null_resource" "screen_output" {
count = 20
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello'
    EOT
  }
}

