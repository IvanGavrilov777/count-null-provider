output "IDserver2" {
  value = null_resource.db2_check_status[0].id
sensitive = true
}
