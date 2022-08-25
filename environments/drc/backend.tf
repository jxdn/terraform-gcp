
terraform {
  backend "gcs" {
    bucket = "ln-int-apps-and-oa-drc-tfstate" ###change to your own tfstate
    prefix = "env/drc"
  }
}
