# Cloud concept
## What is AWS and its value proposition:
- Cloud platform
- Over 200 services
- Low costs
### Advantages of AWS cloud:
- Security:
	- Satisfy military, global banks, high-sensitivity 
	- 230 secutiry, compliance and governance services and features
	- Support 90 security standars and certifications
	- 117 AWS customer datas storer, encrypt datas
	- Monitored 24/7
	- Datas flows encrypted at physical layer 
	- User can control data (encryption, movement, etc.)
- Avaibility:
	- Multiple avaibility zones connected by low atency, high throughput and redundant networking
	- Recommended for running entreprise applications that require high avaibility
	- Possible to split applications in multiple zones in the same region to isolated possible problems
	- Control planes and management console to acess without external networking
- Scalability:
	- Infinite scalibility of the cloud
	- Instanly scale up or down along
	- Reduces cost
	- Match customer's ability with users's demandes
	- Deploying thousands of servers in minutes.
- Flexibility:
	- How and where run your workloads
	- Run applications globally on any region
	- AWS Local Zones or AWS Wavelength (ex: end-users and need latencies)
	- AWS Outposts to run on-premises
- Pay-as-you-go:
	- Pay only for the individual services
	- No additional costs or termination fees
- Save on reserve:
	- Save up 75% over equivalent on-demande capacity
	- the larger the upfront payment, the greater the discount
### How AWS Cloud allow customer to focus on operational value:
- Give many services
- Allow the user to focus on app not on infrastructure
## AWS Cloud and economic aspects:
### Content of the total cost of ownership proposal:
- OpEx (Functionnary costs): current charges
-  CapEx (Investment): investment for long term
- On-site operations labor costs: few needs = doesn't require fat on-site infrastructure
- Software Licence: pay for use, update, maintenance, support.
### How reduct costs when using the cloud
- Infrastructure with an adapted size
- Automation advantages:
	- Reduce costs
	- Redirect productivity
	- Disponibility
	- Fiability
- Scope of conformity: Reform used data to don't spend time / money on certifications
- Managed services: Use it to don't have to do it
## Fundamental cloud architecture model 
### Explain model principles
- Failsafe
- Advantage of splitted component (micro-service)
# Security and conformity
## Define the shared responsability design (AWS)
### Elements of the shared responsability model
- AWS responsability:
	- Execute ] 
	- Manage ] => OS, virtualization layer, physical security of installations,
	- Control  ]		 Hardware, availibility, networking etc..
- Customer responsability :
	- Applications
	- Group firewall
	- Laws relevant to applications
	- Data security (encryption)
	- Integration of used services.
![Amazon shared responsability model](https://d1.awsstatic.com/security-center/Shared_Responsibility_Model_V2.59d1eccec334b366627e9295b304202faf7b899b.jpg)
## Security and compliance concept (AWS)
### Where can be found AWS compliance informations:
[AWS Compliance ressources](https://aws.amazon.com/compliance/resources/)
[AWS Compliance program](https://aws.amazon.com/compliance/programs/)
Compliance requierement:
	- Vary between apps
	- Depends of components aims
	- Depend of the critical level/type of datas (RGPD != PCI != HIPAA...
	- Customer responsability
### How the customer can respect compliance:
-  AES (AES-256) data encryption
- Protecting key as rest: Using HSM, AWS CloudHSM, AWS KSM to store encryption key
- In motion: Use TSL. AWS Certificate Manager and AWS Private Certificate Authority manage and rotate certificates.
- AWS s2n : implementation of TLS.

