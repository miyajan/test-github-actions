workflow "New workflow" {
  on = "push"
  resolves = ["ACTION1"]
}

action "ACTION1" {
  uses = "./action-a"
  env = {
    GITHUB_NAME = "Mona"
  }
  args = "\"Hello world, I'm $GITHUB_NAME!\""
}
