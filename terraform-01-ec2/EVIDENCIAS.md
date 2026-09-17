## ¿La AMI la crea Terraform?
No, Terraform busca la AMI en AWS para poder utilizar su id.

## Después de terraform plan, ¿existe ya la EC2 en AWS?
No, terraform plan tan solo nos muestra un plan de los cambios que se van a realizar en AWS.

## Cambia únicamente la etiqueta Name por ec2-terraform-alumno y ejecuta terraform plan.
Esto realmente no crea un instancia nueva, simplemente cambia el avalor de la etiqueta.