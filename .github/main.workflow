workflow "New workflow" {
  on = "push"
  resolves = ["ACTION1"]
}

action "ACTION1" {
  uses = "./action-a"
  args = "\"Hello world, $GITHUB_TOKEN!\""
}
