**AWS Security Group Terraform light module**

**A security group module for Terraform.**

**Usage**

module &quot;test\_sg&quot; {

source                 = &quot;github.com/fopingn/terraform-aws-sg-basic.git&quot;

  version                = &quot;~\&gt; 2.0&quot;

name = &quot;testsecuritygroup&quot;

description = &quot;Terraform dev test purpose&quot;

vpc\_id      = &quot;vpc-123abcd&quot;



ingress = []

egress = []

cidr\_blocks\_ingress = []

cidr\_blocks\_egress = []

 tags = {

    Terraform   = XXXX

    Name = XXXX

    Environment = XXXX

   Owner = XXXX

  }

You have to:

- give list of map values for every ingress and egress block such as

{

    from\_port   = XXXX

    to\_port     = XXXX

    protocol    = XXXX

    description = XXXX

  }

- give list of cidr\_blocks for ingress ans egress rules to be applied on
- give several values to tag in all above tags

## License

MIT
