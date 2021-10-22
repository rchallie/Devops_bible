# Cloud concept
## What is AWS and its value proposition:
[What is AWS](https://aws.amazon.com/what-is-aws/)
AWS is the cloud platform of amazon, offering over 200 featured services. Interresting to lower costs, become more agile and innovate faster.
### Advantages of AWS cloud:
[Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/?pg=WIAWS-N&tile=learn_more)
- Security:
Is built to satisfy security requirements for the military, global banks and other high-sensitivity organizations. Usage of security tool with 230 secutiry, compliance and governance services. Support 90 security standards ans compliance certifications. The 117 AWS service that store customer data offer to encrypt datas. The infrastrucure is monitored 24/7 to help ensure the confidentiality of datas. Data flowing accros global network is encrypted at the physical layer before leaves secured facilities. User can control data: encrypt it, move it, manage it.
- Availability:
Provide offers as many Regions with multiple avaibility zones connected by low atency, high throughput and redundant networking. AWS hase 81 avaibility zones within 25 geographic regions. The AWS Region and avaibility zone is recommended for running entreprise applications that require high avaibility. It's possible to split applications in multiple zones in the same region to isolated possible problems. AWS control planes and management console are distribued across regions and include regional API endpoints to allow the the customer to access it, during 24 hours is isolated from the global control plane, without external networks.
- Scalability:
AWS Global Infrastructure enables companies to be flexible by the infinite scalibility of the cloud. Ensure customers they had enought capacity at the peak level of activity. Provide the amount of resources that actually needed, with the possibility to instanly scale up or down along which also reduces cost and match customer's ability with users's demandes. Possibility to deploying thousands of servers in minutes.
- Flexibility:
Give the flexibility of choosing how and where you want to run your workloads, so use the same network, contorl plane, API's and AWS Services. Chosse any AWS region to run applications globally, or a specific region for a reason (like need latencies to mobile devices) with AWS Local Zones or AWS Wavelength. Run applications on-premises with AWS Outposts.
- Pay-as-you-go:
Pay only for the individual services needed, without long-term contracts or complex licensing. Pay for the services consumed and once the services are stoped, ther are no additional costs or termination fees. 
- Save on reserve:
Can invest on reserved capacity (ex: EC2, Amazon RDS). With Reserved Instances, save up to 75% over equivalent on-demande capacity. The larger the upfront payment, the greater the discount.
- Economie of scale:
Get volume based discounts and realize important saving as the usage increases. 
(ex S3, pricing is tiered, more use = less pay per GB). AWS give options to acquire services that help to address business needs.
### How AWS Cloud allow customer to focus on operational value:
AWS Cloud give services in many areas, enought for that the customer may be focus on income generator activities, not on the infrastructure.
## AWS Cloud and economic aspects:
### Content of the total cost of ownership proposal:
- OpEx (Functionnary costs): are the current charges to exploit services.
- CapEx (Investment): The investment on services to be profitable in the long term.
- On-site operations labor costs: The total management of an infrastructur on-site require to invest on servers bay, skilled workers, time, constant security check etc.     
by definition a certain amount of money.
- Software Licence: The user of a licence pay a higher starting cost, next he will pay maintenance costs, updates, and support.
### How reduct costs when using the cloud
- Infrastructure with an adapted size: The best way to doesn't pay to much is to have a to pay only that those which are necessary. Saved on reserve can be more iterresting if the usage is not contant, otherwise the best is to use/pay only what it needed.
- Automation advantages:
	- it reduce costs
	- redirect the productivity on other tasks
	- disponibility (ex: data redundancy on multiple disks)
	- increase the fiability, human error is possible where a computer with a script will do the exact same task in the same way
	- automation increase performances of a system
- Scope of conformity: Reform data used / stocked to don't invest time / money on certifications or licenses. 
-  Managed services: The best stay to adapt used services, and use managed services, like ECS or EKS (managed cluster or managed kubernetes)
## Fundamental cloud architecture model 
### Explain model principles
- Failsafe: Is a model method permitting to a system to continue to work, possibly throttled but not totally killed, when a component doesn't work properly.
- Difference between splitted component and a monolithic architecture: Split an application in different component (in micro-services), like multiple containers (Ex: 1: API, 2: DB, 3: Frontend etc..) help an application to be failsafe, start each part of the application in parrallel, update only one part to don't have to stop everything and a repatirtion of erratic workloads. Monolithic architecture is the invert of all the good points of splitted component, excepted that everything is at the same place.
- Cloud vs on-site elasticity: On cloud it's easy to expand applications by adding services, on-site it possible to, but it has a cost (ex: add physical servers) 
# Security and compliance
## Define the shared responsability design (AWS)
[Shared responsabily model (FR)](https://aws.amazon.com/fr/compliance/shared-responsibility-model/)
### Elements of the shared responsability model
This model distribute responsability between AWS (Hardware, availibility, networking etc..) and the customer (Used applications, laws, encryption etc..)
- AWS responsability : This model permetted to reduce the customer's operational burden. AWS execute, manage and control the components from the OS to the virtualization layer passing by the physical security of intallations.
-  Customer responsaibility: The customer have the responsability of the guest OS, the executed applications (update & security), the group firewall provides by WAS, the laws relevant to the applications, data security (encryption) and the integrations of used services. This model of responsability provide a flexibility that give some control to the customer.![Amazon shared responsability model](https://d1.awsstatic.com/security-center/Shared_Responsibility_Model_V2.59d1eccec334b366627e9295b304202faf7b899b.jpg)
## Security and compliance concept (AWS)
### Where can be found AWS compliance informations:
[AWS Compliance ressources](https://aws.amazon.com/compliance/resources/)
[AWS Compliance program](https://aws.amazon.com/compliance/programs/)
The compliance requierement vary between applications, it depends of the region and of components aims , the level of security depends often of the critical level/type of datas (RGPD != PCI != HIPAA...), the customer have the responsability to adapt security and compliance. 
### How the customer can respect compliance:
AWS provide tools to respects compliances like AES (AES-256) the strongest industry-adopted and government-approved algorithm for encrypting data, used by Amazon S3 for server-side encryptin.
- Protecting key as rest: Best way to encrypting data is to stored the key in an HSM (Hardwars security modul) a specialised computing device that has several security controls built into it to. Amazon provide KMS (AWS Key Management Service) to manage keys using AWS system or CloudHSM to manage keys using own HSM.
- In motion: Encrypt datas transmissions using TLS. AWS Certificate Manager and AWS Private Certificate Authority, are two services used to manage and rotate certificates accros infrastructures. AWS s2n is an open source implementation of TLS.
### Who active encryption on a service (AWS)
AWS generate a key for each services. It's possible to manage keys, create client keys shareable, and use mains keys with AWS KMS. KMS API is usable on the command line interface AWS KMS or with the SDK AWS kit for the programmation.
1. It possible to KMS to encrypt and decrypt datas
2. AWS services have the possibility to encrypt data, in this case, datas are encrypted with key protected by KMS.
3. Use the SDK AWS Encryption kit integrate in AWS KMS to encrypt applications operated in AWS or not.
AWS KMS is integrated to most other AWS services, just tick a box. Some service allow to choose between to let it manage the keys or by yourself (using CMK _client main keys_).
### Some services aid to do audits and reporting
#### Logs for audits and supervision
AWS provide logs for audit and supervision [Exemple logs](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-log-file-examples.html#cloudtrail-log-file-examples-ec2).
- Amazon CloudWatch: Is a "metrics repository". An AWS service places metric in this repository and allow to get stats from this metrics. It provide to use custom metrics. The stats can be used to create graphics on CloudWatch console. It's possible to generate alarms and do actions based on conditions (ex: stop, star or kill Amazon EC2 instance) or Amazon EC2 Auto Scaling actions and Amazon Simple Notification Service (Amazon SNS) actions.
![Amazon CloudWatch](https://docs.aws.amazon.com/fr_fr/AmazonCloudWatch/latest/monitoring/images/CW-Overview.png)
- AWS Config: Allow to determine, control and evaluate AWS ressources configurations. It supervise and save permanently AWS ressources configurations and automate the evaluation of registered configurations compared to desired configurations. 
- IAM stategy: standard security advice of granting least privilege, or granting only the permissions required to perform a task. Aim is to start with a minimum set of permissions and grant additional permissions as necessary.
## Access management fonctionnality (AWS):
### Management of users and roles:
#### Access key and identity strategy:
Best way to be secure access is to rotate password, access key. AWS able to to update the credentials on each instance when rorate AWS credentials.
#### Multi-factor auth (MFA):
For increased security, configure multi-factor authentication (MFA) to protect AWS ressources. Enable MFA for IAM users or the AWS account root user. Each identity has its own MFA configuration.
- Virtual MFA devices: A software app that runs on a phone or other device and emulates a physical device.
- U2F security key: A device to plug into a USB port. Instead of manually entering a code, sign in by entering cedentials and then tapping the device.
- Hardware MFA device: that generates a six-digit nueric code based upon a time-synchronized one-time password algorithm. The user must type a valid code from the device on a second webpage during sign-in.
- Sms text message-based MFA: When the user signs in, AWS sends a six-digit numeric code by SMS text message to the user's mobile device. (Depreciated) 
###  AWS Identity and Access Management (IAM):
Allow to securly control accesses and AWS ressources.
#### Groups / Users: 
- Groups: is a collection of IAM users. Allow to specify permissions for multiple users. A user group can contain many users, and a user can belong to multiple user group. User groups can't be nested; they can contain only users, not other user groups. There is not default user group that automatically includes all users in the AWS account, but allowed to create one by assign each new user to it. The number and size of IAM resources in an AWS account are limited. 
![Groups exemples](https://docs.aws.amazon.com/IAM/latest/UserGuide/images/Relationship_Between_Entities_Example.diagram.png)
- Roles: is an IAM identity that can be created in account that has specific permissions. IAM roles is similar to an IAM user excepted that instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it. No long-term credentials but temporary security credentials for role session. Use roles to delegate access ot users, applications or services that don't normally have access to AWS resource on an account.[Roles usage exemples](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html)
- Policies, managed policy vs customer policy vs inline policies: 
(Policy: group of permissions)
	- Managed policy: Standalone policy that is created and administered by AWS, that mean that the policy has its own Amazon Resource Name ([ARN](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns)) that includes the policy name. AWS managed policies are designed to provide permissions for many common use cases and mae it easier to assign appropriate permissions to users, groups and roles than if to write own policies. It's not able to change permissions defined in AWS managed policies. ![AWS Managed policies exemple](https://docs.aws.amazon.com/IAM/latest/UserGuide/images/policies-aws-managed-policies.diagram.png)
	- Customer managed policies: Create standalone policies that are administered in customer AWS account. When attach a policy to principal entity, give the entity the permissions that are defined in the policy.![AWS Customer managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/images/policies-customer-managed-policies.diagram.png)
	- Inline policies: is a policy that's embedded in an IAM identity (user, group, role). That is, the policy is an inherit part of the identity.
![AWS Inline policies exemple](https://docs.aws.amazon.com/IAM/latest/UserGuide/images/policies-inline-policies.diagram.png)
####   Tasks requiring the use of root accounts:
[Root vs IAM](https://docs.aws.amazon.com/general/latest/gr/root-vs-iam.html)
- First (!): Create IAM user with administrator permissions to use everyday AWS tasks. 
- Can close root accounts.
- Restor IAM user permissions, if the only IAM administrator accidentally revokes their own permissions.
-  Activate IAM access to the Billing and Cost Management console
- View certain tax invoices
- Change / cancel AWS Support plan 
- Register as a seller
- Configure an Amazon S3 bucket to enable MFA
- Edit / delete an Amazon S3 bucket that includes an invalid VPC ID or VPC endpoint ID.
- Sign up for GovCloud.
> Think to active MFA on root account. And seal you password on a IRL bank.
## Security services:
### Network security services:
#### AWS natifs services:
- Security group: [ VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-security-groups.htmll)
Allow/deny traffic. It acts as a virtual firewall that controls the traffic for one or more instances. When an instance is launched, associate one or more security groups with the instance. Define modifiable rules that allow traffic to or from its associated instances. New rules are automatically applied to all instances that are assiciated with the security group. Allow only traffic that is required.
- Network ACLs: is an optional layer acts as traffic firewall that control inbound and outbount traffic for one or multiple subnets. [Difference between Security groups and Network ACLs](https://docs.aws.amazon.com/en_en/vpc/latest/userguide/VPC_Security.html#VPC_Security_Comparison)
- AWS WAF: Is web application firewall that help to protect Web applications or API against bots and common Web breaks, SQL injection or cross-site scripts.
#### Security products from AWS Marketplace:
[Marketplace](https://aws.amazon.com/marketplace/solutions/security)
A lot security solution can be provided by vendors on AWS Marketplace, to respond to specific problems. Solutions can be cours, tools or services.
### Usefull documentation
- [White papers](https://aws.amazon.com/whitepapers)
- [Documentation](https://docs.aws.amazon.com/)
- [Best practice](https://aws.amazon.com/blogs/security/getting-started-follow-security-best-practices-as-you-configure-your-aws-resources/)
- [Knowledge center](https://aws.amazon.com/premiumsupport/knowledge-center/)
- [Secutiry Hub](https://aws.amazon.com/security-hub/)
- [Forum](https://forums.aws.amazon.com/forum.jspa?forumID=283)
- [Blog](https://aws.amazon.com/blogs/security/)
- [Partner solutions](https://aws.amazon.com/networking/partner-solutions/)
### AWS Trusted Advisor
AWS Trusted Advisor help to encrease security, performance and show best practices. It evalute account using verifications.
# Technologies
## Methods of deploying and operating 
- Programmatic access: IAM user might needs to make API calls, use the AWS CLI, or use the Tools for Windows PowerShell. In that case, create an access key (access key ID and a secret access key) for that user.
- API: Amazon API Gateway: allow creating, publishing, maintaining, monitorif and securing REST, HTTP, and WebSocket APIs that access AWS or other web services and data stored in the AWS Cloud.![Amazon API Gateway](https://docs.aws.amazon.com/fr_fr/apigateway/latest/developerguide/images/Product-Page-Diagram_Amazon-API-Gateway-How-Works.png)
- SDK kits: AWS provide a lot of SDK kits to interact with AWS services (JavaScript, Python, PHP, .NET, Ruby, Java, Go, Node.js, C++).
- AWS Management Console: Graphical interface for accessing a wide range of AWS Cloud services and managing compute, storage, and other cloud resources. The console includes the Tag Editor tool. Tags stack (as well AWS CloudFormation) is used to create resource groups in AWS Resource Groups , and manage your AWS resources collectively.
- Infrastructure as code: AWS CloudFormation: Enable to create and provision AWS Infrastructure deployments predictably and repeatedly. (Terraform is infrastructure as code.)
### Deployment models
- Total cloud / Cloud native :  Cloud native is a term used to describe container-based environments. Cloud-native technologies are used to develop applications built with services packaged in containers, deployed as microservices and managed on elastic infrastructure through agile DevOps processes and continuous delivery workflows.
- Hybrid : Hybrid cloude is a solution that combines a private cloud with one or more public cloud services, with proprietary software enabling communication between each distinct service. A hybrid cloud strategy provides businesses with greater flexibility by moving workloads between cloud solutions as needs and costs fluctuate.
- On-promise : In an on-premise environment, resources are deployed in-house and within an enterprise's IT infrastructure. An enterprise is responsible for maintaining the solution and all its related processes
### Connection options
- VPN:
	- AWS Site-to-Site VPN: Use VPN between remote network and VPC.
	- AWS Client VPN: Client based VPN to securely access AWS resources or on-premises network
	- AWS VPN CloudHub: Multiple branch offices can create multiple AWS Site-to-Site VPN connections via a virtual private gateway to enable communication between these networks.
	- Third party software VPN appliance: Create a VPN connection to a remote network by using an Amazon EC2 instance in a VPC that's running a third party software VPN appliance.
- AWS Direct Connect: Connect internal network to AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to a router, the other to an AWS Direct Connect router. Enable to create virtual interface to public AWS Service (like Amazon s3) or to a VPC bypassing internet service providers.
![AWS Direct Connect](https://docs.aws.amazon.com/directconnect/latest/UserGuide/images/direct-connect-overview.png)
- Internet public: Connect an internet gateway to a VPC, it provide a target in a VPC route tables for internet-routable traffic, and to perform network address translation (NAT) for instances that have been assigned public IPv4 addresses.
## AWS global infrastructure
### Relations amont Regions, Avaibility Zones and Edge Locations:
There are more edge locations than AWS Regions. There are more Avaibility Zones than Regions. ((:> = contain) AWS Regions :> Avaibility Zones :> edge locations). It's used to split workload on different places and have failsafe model.
### Achieve high availability through the use of multiple Availability Zones:
Availability Zones are connected to each other with fast, private fiber-optic networking. enabling to architect applications that automatically fail-over between AZs without interruption. Use AZs provide highly available, fault tolerant, and scalable than traditional single data center infrastructures or multi-data center infrastructures. <br>
A Load Balancer that is a single AZ Load balancer is concidered as on of the Single Points of Failure on AWS Cloud, otherwise a multi AZ Load Balancer allow to split the traffic to the other zones if one of them is down.
### When to consider the use of multiple AWS Regions:
- Disaster recovery/business continuity: To avoid disaster, own an infrastructure that is in different AWS Regions allow to have no downtime and move the traffic to another place during the recovery.
- Low latency for end-users: An applications deployed in differents AWS Regions, reduce latency for end-users because it will be connected to the closest AWS Regions. 
- Data sovereignty: AWS keeps the datas in the Regions in which they are deployed for every server, excepted a little list.
### High level the benefits of Edge Locations: 
It provide faster response because is present very close to the request and minimizing the access time by providing a quicker response.
- Amazon CloudFront: Is a fast content delivery network (CDN) that provide advance security policies, HTTPS, integrated to AWS Shield, AWS Web Application Firewell and Amazon Route 53. Amazon CloudFront associated with thousands of telecom operators, connected to major networks to provide bests performances.
![AWS CDN edges](https://d1.awsstatic.com/global-infrastructure/maps/Cloudfront-Map_5.18.2021.aa21671b133fd3abd94ff6b8150b515cfe55aaed.png)
- AWS Global Accelerator: upgrade to 60% the network performances when Internet is crowded. It optimize the way to applications to maintain losts packet, instability and latency to the lower level possible.
