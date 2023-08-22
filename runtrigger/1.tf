#asd1231231231
resource "null_resource" "screen_output" {
count = 65000
triggers = {
value = timestamp ()
}
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello World'
    EOT
  }
}
###
