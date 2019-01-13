workflow "New workflow" {
  on = "push"
  resolves = ["ACTION1"]
}

action "ACTION1" {
  uses = "./action-a"
  args = "Hello world, $(curl -s -X GET -u \"miyajan:${GITHUB_TOKEN}\" https://api.github.com/repos/miyajan/test-github-actions/commits)"
  secrets = ["GITHUB_TOKEN"]
}
