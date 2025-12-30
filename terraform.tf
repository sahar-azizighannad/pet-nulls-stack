terraform { 
  cloud { 
    hostname = "tfcdev-0b06bcb7.ngrok.app" 
    organization = "arun" 

    workspaces { 
      name = "arun" 
    } 
  } 
}