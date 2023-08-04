#asd1231231231
resource "null_resource" "screen_output" {
count = 3
  provisioner "local-exec" {
    command = <<EOT
    sleep 1000
    echo 'Hello-subfolder'
    EOT
  }
}
#
