#12
variable "condition" {
  default = false
}
resource "null_resource" "db2_check_status" {
#triggers = {
#time = timestamp ()
#}
count = var.condition?1 : 2
  provisioner "local-exec" {
    command = <<EOT
   ls
    EOT
  }
}
resource "null_resource" "wrm" {
#triggers = {
#time = timestamp ()
#}
count = var.condition?1 : 2
  provisioner "local-exec" {
    command = <<EOT
   ls
    EOT
  }
depends_on = [null_resource.ystar]
}

resource "null_resource" "wsm" {
#triggers = {
#time = timestamp ()
#}
count = var.condition?1 : 2
  provisioner "local-exec" {
    command = <<EOT
   ls
    EOT
  }
depends_on = [null_resource.db2_check_status]
}
resource "null_resource" "ystar" {
#triggers = {
#time = timestamp ()
#}
count = var.condition?1 : 2
  provisioner "local-exec" {
    command = <<EOT
   ls
    EOT
  }
depends_on = [null_resource.wsm]
}



resource "null_resource" "volume_creation" {
#triggers = {
#time = timestamp ()
#}
count = var.condition?1 : 2
  provisioner "local-exec" {
    command = <<EOT
   ls
    EOT
  }
depends_on = [null_resource.wrm]
}
#######12312313231123123123123123112123123
