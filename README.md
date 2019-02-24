# Jupyter Notebooks Overview
> Example Jupyter Notebooks and Infrascture Code put together for learning and presentation.


The sample notebooks were built to use for demos and learning the Jupyter Lab system.  These notebooks will give you a good overview of Jupyter basics, loading data, plotting data, debugging, and Magic Commands.  Code is in Python and there is an example in R.

These notebooks can be used locally or on an EC2 instance in Amazon Web Services (AWS).

The related presentation slide deck can be found [here](https://t.co/lEfMkm0UOz).


## Running Locally
##### Checkout the Bash Command Line helpers: [/local_setup/bash_profile_helpers.txt](https://github.com/ryanbales/Jupyter-Notebooks-Overview/blob/master/local_setup/bash_profile_helpers.txt)

1. Fork and Pull this Repo

2. Change Directory into your local version of this Repo.

3. Install Python 3.6 or later.

4. Create a Virtual Environment: ```python3 -m venv <path-to-venvs\env_name>```

5. Actiivate the Virtual Environment: ```source <path-to-venvs\env_name>\bin\activate```

6. Install Jupyter Lab: ```pip install jupyterlab```

7. Install Project Requirements: ```pip install -r requirements.txt```


## Running in Amazon Web Services (AWS)
The examples in this repo can be run on an EC2 servers in Amazon Web Servcies (AWS) Check out the [AWS Setup Folder](https://github.com/ryanbales/Jupyter-Notebooks-Overview/blob/master/aws_setup/) for terraform code and help scripts.

Please follow these steps to get started:

1. Fork and Pull this Repo

2. Change Directory into your local version of this Repo.

3. Create an account on the [AWS platform] (https://aws.amazon.com/)

4. Setup terraform on your local system. Here's a [blog post](https://hackernoon.com/introduction-to-aws-with-terraform-7a8daf261dc0) with more details.

5. Open a Terminal Window

6. Initialize terraform: ```terraform init```

7. Execute the terraform plan: ```terraform apply``` (enter yes when prompted)

8. Your AWS resources are now available.

9. Setup SSH your local system by updating your SSH config based on the `ssh_config.txt` in the repo.

10.  You will now be able run either the ``start_lab.sh`` or ``start_notebook.sh`` script to launch Jupyter Lab or Jupyter Notebook on your EC2 instance.  The script will SSH into the EC2 instance and leverage port forwarding for communication.  You'll be given the same experience in your browser that you see if running locally.

11.  You'll need to get these sample notebooks on your EC2 instance.  This can be accomplished by using the ```scp``` command or by pulling directly from github to the EC instance.


## Meta

Ryan Bales – [@ryanbales](https://twitter.com/ryanbales) – ryan@balesofdata.com

Distributed under the Apache 2.0 license. See ``LICENSE`` for more information.

[https://github.com/ryanbales/](https://github.com/ryanbales/)

## Contributing

1. Fork it (<https://github.com/ryanbales/Jupyter-Notebooks-Overview/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -m "<comments>"`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
