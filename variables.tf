variable "name" {}

variable "env" {
  default = "test"
}

variable "vpc" {
  type = "map"
}

variable "alb" {
  type = "map"
}

variable "cluster" {
  type = "map"
}

variable "cw" {
  type    = "map"
  default = {}
}

variable "config" {
  type    = "map"
  default = {}
}

variable "defaults" {
  type = "map"

  default = {
    container_name   = "mailcow"
    container_image  = "ubuntu:latest"
    container_memory = 512
    container_cpu    = 512

    aws_region = "us-west-2"

    aws_route53_map_public_ip = true
    aws_route53_private_zone  = false
    aws_route53_zone          = ""
    aws_route53_record        = ""

    aws_logs_stream_prefix = "mail"

    vpn_daemon_enable = false
  }
}
