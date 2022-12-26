variable "avail_zones" {
  default = ["a","b","c"]
}

variable "net_prefix" {
  default = {
    public_net_prefix = "172.18"
  }
}

### VPC ###
resource "yandex_vpc_network" "vpc_netology" {
  name = "vpc-netology"
}

resource "yandex_vpc_subnet" "public_subnets" {
  count          = "${length(var.avail_zones)}"
  name           = "public-${var.avail_zones[count.index]}"  
  zone           = "ru-central1-${var.avail_zones[count.index]}"
  network_id     = "${yandex_vpc_network.vpc_netology.id}"
  v4_cidr_blocks = ["${var.net_prefix.public_net_prefix}.${count.index}.0/24"]
  depends_on = [
    yandex_vpc_network.vpc_netology,
  ]
}