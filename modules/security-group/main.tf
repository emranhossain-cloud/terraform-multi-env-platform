resource "aws_security_group" "this" {
  name        = "${var.environment}-${var.security_group_name}"
  description = var.security_group_description
  vpc_id      = var.vpc_id

  tags = {
    Name        = "${var.environment}-${var.security_group_name}"
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Terraform"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress" {
  count = length(var.ingress_rules)

  security_group_id = aws_security_group.this.id
  cidr_ipv4         = var.ingress_rules[count.index].cidr_ipv4
  from_port         = var.ingress_rules[count.index].from_port
  ip_protocol       = var.ingress_rules[count.index].ip_protocol
  to_port           = var.ingress_rules[count.index].to_port
  description       = var.ingress_rules[count.index].description
}

resource "aws_vpc_security_group_egress_rule" "egress" {
  count = length(var.egress_rules)

  security_group_id = aws_security_group.this.id
  cidr_ipv4         = var.egress_rules[count.index].cidr_ipv4
  from_port         = var.egress_rules[count.index].from_port
  ip_protocol       = var.egress_rules[count.index].ip_protocol
  to_port           = var.egress_rules[count.index].to_port
  description       = var.egress_rules[count.index].description
}
