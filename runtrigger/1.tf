#asd1231231231
resource "null_resource" "screen_output" {
count = 20961
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello-20961resources'
    EOT
  }
}
#
