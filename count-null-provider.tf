terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

resource "null_resource" "screen_output" {
count = 2
  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello'
    EOT
  }
}
