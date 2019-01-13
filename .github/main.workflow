workflow "New workflow" {
  on = "push"
  resolves = ["ACTION1"]
}

action "ACTION1" {
  uses = "./action-a"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}
