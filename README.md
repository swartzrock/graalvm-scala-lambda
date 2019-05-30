# graalvm-scala-lambda


A Hello, World app for AWS Lambda. Written in Scala, compiled with the GraalVM and executed with the AWS Lambda Custom Runtime.


This is the example project for my [AWS Lambda, Scala, and GraalVM](https://www.bks2.com/2019/05/17/scala-lambda-functions-with-graalvm/)
blog post.


## Requirements

This project uses SBT for building Scala projects, Docker for further compiling the Scala code to a linux executable, 
and Amazon's SAM CLI app for testing/packaging/deploying AWS Lambda functions. You'll need all of the following to run the project:

1. [SBT](https://www.scala-sbt.org/) 
    * The Scala Build Tool
1. [SAM CLI](https://aws.amazon.com/serverless/sam/) 
    * The AWS Serverless Application Model app (a wrapper around AWS CloudFormation and the CLI)
1. [AWS CLI](https://aws.amazon.com/cli/) 
    * The popular CLI for accessing the AWS API
1. [Docker](https://www.docker.com/) 
    * Required by SAM for local testing of Lambda functions
1. curl 
    * The performant web client used to test the running Lambda functions
1. An AWS account and valid credentials
    * Allows the SAM tool to deploy your function to API Gateway / AWS Lambda

## Building and Running The Function Locally

Open your terminal to the project directory and run the following to build and run the function locally:

    $ ./build.sh && sam local start-api

Open a separate terminal in the same directory and test out the function with `curl`:

    $ curl http://127.0.0.1:3000/hello/developer
    Hello, developer

The `Hello, $name` response from the function appears, with the name taken from the path parameter following the `hello/` segment. 

See the [post](https://www.bks2.com/2019/05/17/scala-lambda-functions-with-graalvm/) for the remaining instructions on uploading and deploying your function
to AWS Lambda.

