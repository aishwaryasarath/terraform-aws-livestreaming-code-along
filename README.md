# terraform-aws-livestreaming-code-along
https://www.youtube.com/watch?v=UAH3CkWrNmo&list=PL81sUbsFNc5bYnjraNpivm1XxR3WNM_Kd

## VPC analogy
1. VPC - city
2. CIDR block/subnets - range of postal codes
3. roads - route tables
4. IGW - on ramp to internet
5. NAT gateway - on eamp to private sectors
6. services - buildings
7. security groups - security guards outside the buildings (protection around instances), not optional.
8. NACL - gates to the blocks of buildings (protection around subnets) , stateless so need to specify inbound & outbound.
<img width="502" alt="Pasted Graphic" src="https://user-images.githubusercontent.com/49971693/170632046-b151c9d1-f1b4-47ce-8953-ef066ce04cd2.png">


## VPC IaaC
1. Create a VPC
2. Create the public subnet
3. Create the internet gateway and attach the VPC to it
4. Create the public route table
5. Add the routes
6. Associate subnet to the route tables
7. Create public subnet & associate it to the route table
8. Create private subnet & route table
9. Create EIP for NAT Gateway
10. Create NAT Gateway (NAT gateway depends on EIP & IGW)


## Nuggets from the livestream!!
1. [Count Meta Argument](https://www.terraform.io/language/meta-arguments/count)
2. [cidrsubnet Function](https://www.terraform.io/language/functions/cidrsubnet)
3. [Element](https://www.terraform.io/language/functions/element)
4. [Variable](https://www.terraform.io/language/configuration-0-11/interpolation)
5. **Data sources** allow Terraform to use information defined outside of Terraform, defined by another separate Terraform configuration, or modified by functions. **Resource** Blocks documents the syntax for declaring resources.
6. [Default tags](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/default_tags)

<img width="503" alt="image" src="https://user-images.githubusercontent.com/49971693/170728254-13fd0408-6a54-4980-ae17-01da511f94cd.png">
<img width="383" alt="image" src="https://user-images.githubusercontent.com/49971693/170728401-6a73734c-0026-47f1-b062-edc68d558fd3.png">

7. [Splat Expressions](https://www.terraform.io/language/expressions/splat)
8. Terraform format to format the code. ```terraform fmt```
9. Terraform graph ```terraform graph | dot -Tsvg > graph.svg ```

<img width="1425" alt="image" src="https://user-images.githubusercontent.com/49971693/170742209-08ca6583-d0fe-4d4b-8a55-eb2446451ad4.png">

