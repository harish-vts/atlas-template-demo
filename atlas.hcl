variable "env" {
  type = string
}

data "template_dir" "migrations" {
  path = "migrations"
  vars = {
    env = var.env
  }
}

env "default" {
  dev = "docker://postgres/15/dev?search_path=public"
  migration {
    dir = data.template_dir.migrations.url
  }
}
