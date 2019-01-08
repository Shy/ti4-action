action "Contentful Update" {
  uses = "./contentful-update/"
}

workflow "Migrate and Rebuild on Push" {
  on = "push"
  resolves = ["Contentful Migration"]
}

action "Contentful Migration" {
  uses = "./contentful-update"
  secrets = ["accessToken", "spaceId"]
}
