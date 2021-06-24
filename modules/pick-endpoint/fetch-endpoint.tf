resource "local_file" "main"{
  #source = "./modules/create-db"
  content = <<-EOF
db_host:  ${var.rds_endpoint}
db_port: 5432
db_user: database_user
pgpassfile: /tmp/.pgpass 
EOF
filename = "./ansible-scripts/vars/main.yml"

}