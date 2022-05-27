# terraform-aws-livestreaming-code-along
https://www.youtube.com/watch?v=UAH3CkWrNmo&list=PL81sUbsFNc5bYnjraNpivm1XxR3WNM_Kd

## VPC analogy
1. VPC - city
2. CIDR block/subnets - range of postal codes
3. roads - route tables
4. IGW - on ramp to internet
5. NAT gateway - on eamp to private sectors
6. services - buildings
7. security groups - security guards outside the buildings
8. NACL - gates to the blocks of buildings
<img width="502" alt="Pasted Graphic" src="https://user-images.githubusercontent.com/49971693/170632046-b151c9d1-f1b4-47ce-8953-ef066ce04cd2.png">


## VPC IaaC
1. Create a VPC
2. Create the public subnet
3. Create the internet gateway and attach the VPC to it
4. Create the route table
5. Add the routes
6. Associate subnet to the route tables
7. Create public subnet & associate it to the route table

## Nuggets from the livestream!!
1. [Count Meta Argument](https://www.terraform.io/language/meta-arguments/count)
2. [cidrsubnet Function](https://www.terraform.io/language/functions/cidrsubnet)
3. [Element](https://www.terraform.io/language/functions/element)
4. [Variable](https://www.terraform.io/language/configuration-0-11/interpolation)
