variable "environment" {}

variable "vpc_id" {}

variable "instance_type" {}

variable "image" {
  default = "ami-09ba5a3670f7ac8f7"
}

variable "key_name" {}

variable "name" {}

variable "private_subnet_ids" {}

variable "public_subnet_ids" {}

variable "ansible_user" {
  default = "ec2-user"
}

variable "private_key" {
  default = <<EOT
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcn
NhAAAAAwEAAQAAAQEA2OPCsIU+yhgkV98II2aJ/LpKvrE/OKcG3cVE+YOkBPPFfckoxTLa
nEsYbKkKpAZTBvD4sEbWvRkT89Xy2MGhHSGroleCea836IN5xDlweRtGJXuyEQ+5KGEMle
vEdl3Uv+8WKtJa5T2v8eBt54nCNothBk/lLs9/iol/zbQtO0YnyJ+uQhLjSHmK7BT3L61R
vIAl2IfV95RO+Jy57YDB6MajNDqkRpypA82R5i4Uq0YXrYP9mtHz1d0vakzVkUFAJIRlla
WED0ihPJ8d4eh5RjUV8+ly+arQU2b8vAfIEa4kAsxtY2dlsdlTQzw4F+/HGn8Z+i6c6PaR
OvkZo4Co2wAAA9AGix7tBose7QAAAAdzc2gtcnNhAAABAQDY48KwhT7KGCRX3wgjZon8uk
q+sT84pwbdxUT5g6QE88V9ySjFMtqcSxhsqQqkBlMG8PiwRta9GRPz1fLYwaEdIauiV4J5
rzfog3nEOXB5G0Yle7IRD7koYQyV68R2XdS/7xYq0lrlPa/x4G3nicI2i2EGT+Uuz3+KiX
/NtC07RifIn65CEuNIeYrsFPcvrVG8gCXYh9X3lE74nLntgMHoxqM0OqRGnKkDzZHmLhSr
Rhetg/2a0fPV3S9qTNWRQUAkhGWVpYQPSKE8nx3h6HlGNRXz6XL5qtBTZvy8B8gRriQCzG
1jZ2Wx2VNDPDgX78cafxn6Lpzo9pE6+RmjgKjbAAAAAwEAAQAAAQAefV44LHMYO+6X/72I
JHkPcyzgw9AMacaYVIwOu4fKPm6r8SRvHGgJArGLTPQ2/MCdQDDlrv+vE6Bvbcs213mLu9
kB+GVaL9yfLiRnBmAeVkw1Jr9wkJJJ7+KyDLPQo/4tgTHPkUS/5z0dtpwcqYwI2O0p0v93
5ima0xuJUmPtafwTrgNjK1uKu1C0lKCDJXdpOcwIM1LjeE/2uufAuBEC87m0p1BWXZnhVI
5v5AfBN1EMf7COwWM/e7szXsyL4ecsJFuQouavrea3w6+eeGyy5KwfMwIbVi/P/emf6Yat
dOuPPbTQYcliQVbKq0E9uE92Nn7feIA2vM7N81QeUcaRAAAAgQCiZ9j/m9nQgtLGW8ItgB
aC/tbBKkXD/LHkThK9PyAgIMWncbtFHuRUzm6o/X5IsfAfDkmQ0hqZgWoLzH2lAHCg2nWh
K+TT1BZI8aa3WsF+ViziE1qqzH95EGYhrx3SnYEcgeXEfI/SJrpp355YTPp+mog012fqZj
S0toUa+iEiYwAAAIEA8u/cG8XuINu1St+ktGQMHZQEmyLQ7ys9VV+9Ht8mEOWAL4bdiPxV
UUBJrmn7QjupgBSZMXWGb4WiHMDc3Vu+eYVYO7ffcu81TCtoghCjJPlZfq3HAyBb4secde
eB1MBPfQ9c9arlI6lxFHzH2Lo2oDX0aUgYQR/Omahl3TD9nKMAAACBAOSNWRdbQEbFYfvc
1Ji39QyDz+U9Rsd8+Zll42YpD/rs28mquTFAKn5HNmzoBrTWD0nwM+5Ih7sVtlgSDgX47E
8Gqeg0ygDv7rK+8/40zVA07EpV+ComYXxBFHpi9E2nPgCPFv4twKVXfwdzkLCWctihaPRi
ommzSYvZifsvk45pAAAAFXJhanJhamFyQFdLTUlOOTIxNDgyNgECAwQF
-----END OPENSSH PRIVATE KEY-----
  EOT
}
