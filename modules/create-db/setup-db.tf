resource "aws_db_instance" "db_cluster" {
  identifier              = var.rds_instance_identifier
  instance_class          = var.database_instance_class
  engine                  = "postgres"
  engine_version          = "12.5"
  multi_az                = true
  storage_type            = "gp2"
  allocated_storage       = var.database_storage
  name                    = var.database_name
  username                = var.database_user
  password                = var.database_password
  apply_immediately       = "true"
  backup_retention_period = 0
  backup_window           = "03:00-06:00"
  db_subnet_group_name    = var.db_subnet_group_name
  vpc_security_group_ids  = [ var.vpc_security_group_ids]
  skip_final_snapshot       = true
  final_snapshot_identifier = "Ignore"
  
  #depends_on = [
  #   aws_db_subnet_group.db_subnet,]



 /*
 output "rds_endpoint" {
  value = "${aws_db_instance.db_cluster.endpoint}" 
 }
 */

}





