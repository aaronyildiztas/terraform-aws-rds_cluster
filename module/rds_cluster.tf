module "db" {
    source = "../"
    region = "us-east-2"
    subnet_ids = [
        "subnet-01247d99afb162cdb",
        "subnet-06ba492480eda4958",
        "subnet-0e8af25fe00cb1d29"
    ]
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "aurora-mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    username            = "foo"
    publicly_accessible = true
    db_access = [
      
        "0.0.0.0/0"
    ]
}

