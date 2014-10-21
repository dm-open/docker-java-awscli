docker-java-awscli
==================

Docker with Java and AWS CLI installed. Intended as a base image.

Building
--------

docker build -t dmopen/java-awscli .

Running
-------
When running the image on an EC2 host you can use the IAM roles assigned to the instance. http://docs.aws.amazon.com/IAM/latest/UserGuide/role-usecase-ec2app.html
```
docker run -i -t dmopen/java-awscli
```

If you do are not running on EC2 or have not assigned IAM roles you can supply the credentials as environment variables
```
docker run -i -t -e "AWS_ACCESS_KEY_ID=your-key" -e "AWS_SECRET_ACCESS_KEY=your-secret" dmopen/java-awscli
```
