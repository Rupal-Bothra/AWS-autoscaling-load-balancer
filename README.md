* ### &#x20; AWS Auto Scaling and Load Balancer Project



* #### &#x20; Project Overview



This project demonstrates how to manage and maintain web server traffic using an AWS Application Load Balancer (ALB) and Auto Scaling Group (ASG).



The Auto Scaling Group automatically launches additional EC2 instances when CPU utilization increases and terminates them when the load decreases. The Load Balancer distributes incoming traffic across healthy instances to ensure high availability and scalability.



* #### &#x20;Architecture



attached (architecture.png)





* #### &#x20;AWS Services Used

\- Amazon EC2

\- Launch Template

\- Auto Scaling Group (ASG)

\- Application Load Balancer (ALB)

\- Target Group

\- Amazon CloudWatch





* #### Project Workflow

1\. Created a Launch Template.

2\. Created an Auto Scaling Group.

3\. Configured Minimum, Desired, and Maximum capacity.

4\. Created an Application Load Balancer.

5\. Attached Target Group to Auto Scaling Group.

6\. Monitored CPU utilization using CloudWatch.

7\. Generated CPU load on EC2 instances.

8\. Verified automatic scaling of instances.





* #### &#x20;Screenshots



1. Launch Template
(launch-template.png)

2. Auto Scaling 
(Auto Scaling.png)

3. Load Balancer
(Load Balancer.png)

4. Target Group
(Target-group.png)

5. CPU Utilization
(cpu-utilization.png)

6. Auto Scaled Instance
(Instance.png)

7. CloudWatch

&#x20; (cloudwatch.png)





* #### User Data Script

The `user-data.sh` file is used to automatically configure the EC2 instance at launch. It installs and starts the Apache web server.





* #### Load Testing

CPU load was generated using:



```bash

sha1sum /dev/zero &

```



* #### Result



The Application Load Balancer successfully distributed traffic across EC2 instances, and the Auto Scaling Group automatically launched additional instances when CPU utilization crossed the configured threshold.





