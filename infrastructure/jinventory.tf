resource "heroku_app" "jinventory" {
  name   = "cw-jinventory"
  region = "eu"
}

resource "heroku_addon" "jinventory" {
  app  = heroku_app.jinventory.name
  plan = "heroku-postgresql:hobby-dev"
}
