output "IDserver2" {
  value = "${null_resource.screen_output[0].id}"
sensitive = true
}
