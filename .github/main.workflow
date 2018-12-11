action "Contentful Update" {
  uses = "./contentful-update/"
}

workflow "New workflow" {
  on = "push"
  resolves = ["Contentful Update-1"]
}

action "Contentful Update-1" {
  uses = "./contentful-update"
}
