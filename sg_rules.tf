resource "aws_security_group_rue" "catalogue_ingress_rule" {
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.catalogue_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.backend_alb_sg_id.value
}

resource "aws_security_group_rue" "user_ingress_rule" {
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.user_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.backend_alb_sg_id.value
}

resource "aws_security_group_rue" "cart_ingress_rule" {
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.cart_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.backend_alb_sg_id.value
}

resource "aws_security_group_rue" "shipping_ingress_rule" {
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.shipping_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.backend_alb_sg_id.value
}

resource "aws_security_group_rue" "payment_ingress_rule" {
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.payment_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.backend_alb_sg_id.value
}

resource "aws_security_group_rue" "frontend_ingress_rule" {
    type = "ingress"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.frontend_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
}

resource "aws_security_group_rue" "backend_alb_ingress_rule" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.backend_alb_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.frontend_sg_id.value
}

resource "aws_security_group_rue" "frontend_alb_ingress_rule" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
    cidr_blocks = [ "0.0.0.0/0" ]
}

resource "aws_security_group_rue" "catalogue_ingress_rule" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_group_id = data.aws_ssm_parameter.catalogue_sg_id.value
    source_security_group_id = data.aws_ssm_parameter.bastion_sg_id.value
}