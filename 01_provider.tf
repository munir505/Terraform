provider "google" {
	credentials = "${file("~/.gcp/terraform_key.json")}"
	project = "t-rider-219612"
	region = "europe-west2"
}
