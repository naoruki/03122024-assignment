terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
    region = "ap-southeast-1"
    key = "cornelia-key-pair" # must be different from other projects
  }
}
