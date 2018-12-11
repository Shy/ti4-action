action "Contentful Update" {
  uses = "./contentful-update/"
}

workflow "Migrate and Rebuild on Push" {
  on = "push"
  resolves = ["Contentful Update-1"]
}

action "Contentful Update-1" {
  uses = "./contentful-update"
}
