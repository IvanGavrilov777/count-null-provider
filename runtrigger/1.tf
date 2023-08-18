#asd1231231231
resource "null_resource" "screen_output" {
count = 3
triggers = {
value = timestamp ()
}
  provisioner "local-exec" {
    command = <<EOT
    aws eks get-token --cluster-id 'ivan-cluster'
    EOT
  }
}
##
