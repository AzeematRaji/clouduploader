#!/bin/bash

# function to upload files to AWS s3 bucket 
upload_to_s3() {
    file_path="$1" # capture the file path as the first argument
    bucket_path="$2" # capture the bucket path as the second argument 

# confirm if the AWS CLI commamd "aws" is available
    if ! command -v aws &> /dev/null; then
      echo "Error: The AWS CLI (aws) is not installed or not accessible from this path."
      exit 1
    fi
# confirm if there two arguments passed 
    if [[ -z "$file_path" || -z "$bucket_path" ]]; then
      echo "Error: please provide the two paths as arguments"
      echo "Usage: $0 <file_path> <bucket_path>"
      exit 1
    fi
# upload thefiles using the AWS CLI
    aws s3 cp "$file_path" s3://"$bucket_path"

# check the exitcode
    if [[ $? -eq 0 ]]; then
      echo "Successfully uploaded $file_path to s3://$bucket_path"
    else
      echo "couldnt upload the $file_path to s3://$bucket_path, check aws CLI log"
    fi
}

# Read the paths from the commmand line arguments
file_path="$1"
bucket_path="$2"

# call the upload function
upload_to_s3 "$file_path" "$bucket_path"
