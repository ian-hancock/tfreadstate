What this does
This very simple code generates a random integer using terraform 11 and outputs it into a state file. I then use the terraform_remote_state data source to read that value from the state and output it to the console (and save it in the state also)
