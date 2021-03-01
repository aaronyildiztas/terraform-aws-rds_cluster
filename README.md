# Build RDS Instance
### Please copy paste below code. Make sure update the username. Subnet id's needs to be replaced with your own subnet id's
```
module "db" {
    source = "aaronyildiztas/rds_cluster/aws"
    region = "us-east-2"
    subnet_ids = [
        "subnet-01247d99afb162cdb",
        "subnet-06ba492480eda4958",
        "subnet-0e8af25fe00cb1d29"
    ]
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    username            = "foo"
    publicly_accessible = true
    db_access = [
        "50.194.68.230/32",
        "50.194.68.231/32",
        "0.0.0.0/0"
    ]
}
output region {
	value = module.db.region
}
output subnet_list {
	value = module.db.subnet_list
}
output db_access {
	value = module.db.db_access
}
output DB_NAME {
	value = module.db.DB_NAME
}
output endpoint {
	value = module.db.endpoint
}

```
### NOTE:  Password will be created in SSM & AWS

### Please run
```
terraform init
terraform apply
```
