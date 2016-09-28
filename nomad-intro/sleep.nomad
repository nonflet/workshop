  job "sleep" {
  region = "global"

  datacenters = ["nomad-intro"]

  type = "system"

  group "infra" {
    task "sleep" {
      driver = "exec"
	    config {
	      # When running a binary that exists on the host, the path must be absolute
	      command = "/bin/sleep"
	      args = ["1"]
	    }
      env {
        DEMO_NAME = "nomad-intro"
      }
      resources {
        cpu = 100
        memory = 32
        network {
          mbits = 100
          port "sleep" {
          }
        }
      }
    }
  }
}
