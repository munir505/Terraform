resource "google_compute_instance" "default" {
        name = "${var.name}"
        machine_type = "${var.machine_type}"
        zone = "${var.zone}"
        tags = "${var.tags}"
        boot_disk {
                initialize_params {
                        image = "centos-7"
                }
        }
        network_interface {
                network = "default"
                access_config {
                        // Ephermal IP
                }
        }
        metadata {
                sshKeys = "terraform:${file("~/.ssh/id_rsa.pub")}"
        }
        connection = {
                type = "ssh"
                user = "terraform"
                private_key = "${file("~/.ssh/id_rsa")}"
        }
        provisioner "remote-exec" {
                scripts = [
                        "${var.scripts}"
                ]
        }
}

