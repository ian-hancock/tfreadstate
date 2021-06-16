### What this does

This very simple code generates a random integer using terraform 11 and outputs it into a state file. I then use the terraform_remote_state data source to read that value from the state and output it to the console (and save it in the state also). The reverse is also true, in that a state file created with tf11 can be parsed by a configuration using TF1

![image](https://user-images.githubusercontent.com/46765905/122205392-8a698000-cee3-11eb-9e85-3dfee329360a.png)

![image](https://user-images.githubusercontent.com/46765905/122205155-46767b00-cee3-11eb-97db-500a02688849.png)
