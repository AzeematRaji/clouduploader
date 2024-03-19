# Clouduploader - A simple AWS s3 upload CLI tool
This is a simple command line tool written in bash used to upload files to s3 bucket using the AWS CLI'

## Prerequisites:

* Windows,macOS or linux with a Bash interpreter
* AWS CLI installed and configured with your AWS credentials. You can find installation instructions [here](https://aws.amazon.com/cli/)

## How to use:

* Create and save the script as ```script.sh```
* Make it executable ```chmod +x script.sh```
* Run the script in this format:

```./script.sh <file_path> <bucket_path>```

* Replace <file_path> with the path of file you want to upload
* Replace <bucket_path> with the name of the bucket you want to upload to.

## Script features:

* Checks for the AWS CLI availability.
* Validates the presence of required arguments (file path and bucket path).
* Uploads the file using the aws s3 cp command.
* Provides informative messages for success or failure.


