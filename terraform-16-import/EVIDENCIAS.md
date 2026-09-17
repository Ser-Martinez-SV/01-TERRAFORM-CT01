$ history 10
   90  cd ..
   91  clear
   92  mkdir terraform-16-import
   93  terraform init
   94  cd terraform-16-import/
   95  terraform init
   96  terraform import aws_vpc.vpc_importada vpc-original
   97  terraform state list
   98  terraform plan
   99  history 10