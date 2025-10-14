
### Past attacks

1. Brain virus - licenses tracking - productivity issues
2. Morris worm - 1988- size of the internet to just tally number of devices having internet. But repeated already infected ones. 
3. Love letter - steal login creds - emails - I love you - introduced social engineering and phishing
4. Equifax breach - 40% of americans, PII, SSI, driver licence numbers etc. multiple vulnerabilities 
### 8 Security Domains by Certified Information Systems Security Professional (CISSP) - 
1. Security and Risk Management - Defines goals, policies, objectives, compliances, business continuation etc HIPA etc
	
2. Asset Security - digital or physical like data(PII), equipment, servers etc
	
3. Security Architecture and Engineering - Tools, systems, processes etc are in place - Fire wall
	
4. Communication and network security - Physical and wireless comms, hotspots, network security and policy - crypto graphic attacks 
	
5. IAM - policies to control and manage assets, physical, network and software. Key card
	
6. Security assessment and testing - Audits, data analysis, vulnerability checks, controls etc - permission testing
	
7. SecOps - investigations and preventive measures. 
	
8. Software DevOps - coding practices for security - user data handling, password policies etc. 
### Security Frameworks: 
1. Security frameworks are guidelines used for building plans to help mitigate risks and threats to data and privacy
	
2. Purpose - Protecting PII, Financial info, identifying security weakness, org risk, align sec with business goals
	
3.  Components - ID and Doc sec goals(like GDPR), understand guidelines, implementing processes, monitor results
### Security Model - CIA 
1. helps inform how organizations consider risk when setting up systems and security policies
	
2. Confidentiality - only Authorized person has access - need to know basis
	
3. Integrity - correct, reliable, trusted
	
4. Availability - accessible data, network and reliable access
### Tools
1.  Security professionals use playbooks to help them manage a security incident before, during, and after it has occurred. 
2. SIEM Tool: monitors logs and activities data. 
	1. Splunk:    
	2. Chronicle: 
	3. Network Protocol Analyzer (packet sniffer) - TCPDump and wireshark
	
## Manage Security Risks

1. The steps in the Risk Management Framework RMF are prepare, categorize, select, implement, assess, authorize, and monitor
    
2. Frameworks and controls: 
	1. Guidelines to prevent vulnerability and breaches, social engineering etc
	2. Controls are safeguards to reduce specific risks. 
		1. Encryption - ciphertext - confidentiality of data
		    
		2. Authentication - Make sure the person is real MFA, biometrics
		    
		3. Authorization - access control, permissions

### NIST frameworks - 
1. Cybersecurity Framework(CSF) - Govern, Identify, Protect, Detect, Respond, and Recover

2. OWASP Open Worldwide Application Security Project -
	1. Minimize surface
	2. Principle of least privilege
	3. Defense in Depth: vary the security controls
	4. Separation of duties
	5. Keep simple
	6. Fix correctly: root cause
    
### Security Audits: 
1. Type:
	1. Usage 
	2. Previlege
	3. Account change

2. Establish and understand the scope and goals of the audits

3. Conducting a risk assessment 

4. Conduct a controls assessment
	1. Admin: policies, roles
	2. Technical: hw and sw systems 
	3. Physical : cameras etc
5. Compliance checklist: HIIPA and GDPR
    
6. Communication: results and recommendations
### **Logs:** 

1. Firewall
2. Network
3. Server


### Incident Response Playbook: 

1. Manual for operational action.
	
2. Identity, contain and correct
	
3. 6 phases: 
	1. Preparation: education, plans, procedures - roles etc
		
	2. detection and analysis
		
	3. Containment: impact reduction and minimize damage
		
	4. Eradication and recovery: normallize, It restoration
		
	5. Post incident: comms, analysis of the incident and try to fix posture
		
	6. Coordination: meet compliance and coordinate response

### Networks and Network Security

1. Network Tools: 

	1. Hub - broadcast
	    
	2. Switch - intelligent and can direct data as needed
	    
	3. Router - connect multiple networks and devices
	    
	4. Model - internet access
    

2. TCP/IP: 

3. TCP- 2 endpoints connection
    
	1. IP - between devices on a networl
		1. IPv4: 4 char . 0 to 255
		    
		2. IPv6: 8 hex chars -  better routing
		    

4. 4 layers: 
	1. Network access: Creation of packets and transmission
	    
	2. Internet: IP addresses are attached - LAN or WAN
	    
	3. Transport: protocols, error control etc, TCP, UDP etc
	    
	4. Application: HTTP, TLS, DNS
    

5. OSI Model: 
	1. Physical
	    
	2. Data LInk
	    
	3. Network
	    
	4. Transport
	    
	5. Session
	    
	6. Presentation
	    
	7. Application
    
6. Network Protocols: 

	1. Communication 
		1. TCP - handshake - request - response
		    
		2. HTTP/S - secure comm
		    
		3. UDP
		    
		4. DNS - translate domain names to IP addresses
    

### Security 
1. HTTP/S - secure comm
2. SFTP
3. Mangement: 
	1. SNMP: Simple Network Management Protocol (SNMP) is a network protocol used for monitoring and managing devices on a network.
	    
	2. ICMP: Internet Control Message Protocol (ICMP) is an internet protocol used by devices to tell each other about data transmission errors across the network

	3. TLS/SSL 
	    
	4. ARP - resolve MAC address
	    
	5. DHCP - dynamically assign IP public addressed
	    
	6. Telnet - remote system connection
	    
	7. SSH - Secure remote connection
    
#### Wireless protocols: 

1. WEP: Wired equivalent privacy - trial and error key detection
    
2. WPA : Temporal Key Integrity Protocol (TKIP) - multiple keys - vulnerable by can insert themselves in the WPA authentication handshake process and insert a new encryption key instead of the dynamic one assigned by WPA
    
3. WPA 2 - AES, WPA2 uses the Counter Mode Cipher Block Chain Message Authentication Code Protocol (CCMP), which provides encapsulation and ensures message authentication and integrity
    
4. WPA 3 - uses Simultaneous Authentication of Equals (SAE), a password-authenticated, cipher-key-sharing agreement - can't download data and crack it - 128 bit encryption AES
    

#### Firewalls: 

1. Monitor and filter - port filtering - security rules - 
    
2. Stateful - proactive learns from the data packets - keeps track of source and data
    
3. Stateless - predefined rules only
    
4. NGFW -  stateful inspection of incoming and outgoing traffic, but it also performs more in-depth security functions like deep packet inspection and intrusion protection. 
    
#### Subnet: 

1. Subdivision of networks
    
2. IP groups
    
3. Classless Inter-Domain Routing (CIDR) - creating subnet masks to IP address to create subnets
    
4. they include a slash (“/’”) at the end of the IP address
##### Proxy servers: 

1. Forward - handles internal server requests to access the internet. 
    
2. Reverse - regulates and restricts the internet’s access to an internal server
    
3. Email - Spams filtering etc
    

#### DOS

1. TCP attack by sending SYN messages of handshake protocol
    
2. ICMP attach by sending ICMP packets and flooding the network

3. Ping of death - sending > 64kb ICMP packets
    
#### IP Spoofing: 

1. On path: man in the middle - alter source data to gain access and firewall
    
2. Replay attack - repeat or delay
    
3. Smurf :  attacker sniffs an authorized user’s IP address and floods it with packets. 
#### Security Hardening: 

1.strengthening the system/ network - reduce attack surface - vulnerability check

1.OS Hardening: 
1. Patch Updates, backups, auth users
		
2. Use baseline configs to compare to current version
	
3. Remove unused software
	
4. Password policy - MFA
    
5. Network hardening: 
	1. Network Log analysis using SIEM tools to find vulnerabilities - prioritized
	    
	2. Port filtering - encryption - tunnelling(VPN)
	    
	3. IDS Intrusion Detection system: monitors - alerts - signature of malicious traffic.


6. Cloud Hardening: 
	1. Cryptographic erasure: remove keys after encryption and store elsewhere. 
	    
	2. Key Management: in TPMs, CloudHSM
	    

### Tools in Kali linux

1. Metasuite: system security
    
2. Burp suite: app security
    
3. John the ripper: password breaking
#### Shell: 
	1. Grep: filters through a file 
	2. Grep <search term> <target> 
	3. Piping (|) - sends the output of one command to the input of another
	4. File permission: 
	
		1. R , w, x
			
		2. Ls -l -> type<user perm><group perms><other perms>
			
		3. Chmod: 
			1. Three types of owners - users(u), groups(g), other(o)
				
			2. Chmod <owner><arithmatic + or -> <permission> <target>
	
	5. Add/remove users: 
	
		1. Root - most privileges
			
		2. Useradd and userdel

## Vulnerabilities in systems
1. Cycle through the management step
2.  CI/CD can make automated tests easier.
3. Threats: dependencies, permissions, sec testing missing, exposed secrets, build environments
### Defense in depth model: 5 layer design

1. Perimeter layer: authentication layer - passwords
	
2. Network layer: authorization layer - firewalls
	
3. Endpoint layer: devices - antivirus
	
4. Application layer: MFA etc
	
5. Data Layer: PII defense etc, asset classification
### CVE: common vulnerability and exposures
1. Criteria; 
	1. Independence of other issues
		
	2. Potential sec risk
		
	3. Submitted with evidence
		
	4. Affects only one codebase
2. CVSS: score - 0 to 10, <4 is low risk, >9 is high list
3. List of common vulnerabilities - Top 10 by OWASP: 

	1. Broken access control
		
	2. Cryptographic failures
		
	3. Injection
		
	4. Insecure design
		
	5. Security misconfiguration
		
	6. Vulnerable and outdated components. 
		
	7. Identification and authentication failures
		
	8. Software and data integrity failures
		
	9. Security logging and monitoring failures
		
	10. Server-side request forgery
		
### Assessments: 
    
1. Identification: state of security system
	
2. Analysis: source of the problem
	
3. Assessment: Scoring. 
	
4. Remediation
    

### Pentesting: 

1. Simulated attach to identify vulnerabilities.
	
2. Pentesting can also be done to check compliance standards, HIIPA and GDPR
	
3. Strategies: 
	1. Openbox - full access to the system as an admin or dev - with privilege access. 
		
	2. Closedbox - no access at all - external, black-box, or zero knowledge penetration testing
		
	3. Partial knowledge: limited knowledge and access - greybox testing
### Threats: 
1. Cryptojacking: Illegally installing malware to mine crypto
	
2. Crosssite scripting (XSS): 
	

3. Insert code to manipulate;
	
4. Reflected - script sent to server and it actuates in the server. 
	
5. Stored - us stored infected data like images or other assets
	
6. DOM based: doesn’t involve server - like use URL queries. On the client side
	
7. SQL Injection: 
	1. In-band - use same communication channel - query to get passwords
		
	2. Out-of-band - use query to establish a new communication connection
		
	3. Inferential - analyzing the behavior of the system.

### Prevention 
1. Prepared statements: a coding technique that executes SQL statements before passing them on to a database
	
2. Input sanitization: programming that removes user input which could be interpreted as code.
	
3. Input validation: programming that ensures user input meets a system's expectations.
    

## Threat Modeling
###  Process
1. Define the scope
	
2. Identify threat
	
3. Characterize the environment
	
4. Analyze threats
	
5. Mitigate risks
	
6. Evaluate findings
    

### Framework
	### STRIDE -  spoofing, tampering, repudiation, information disclosure, denial of service, and elevation of privilege.
	### Process of Attack Simulation and Threat Analysis (PASTA) 
	### Trike
	### VAST: Visual, Agile, and Simple Threat (VAST)
    
## Incident detection and response: 
### Lifecycle 
1. Preparation
	
2. Detection and Analysis
	
3. Containment and eradication
	
4. Postincident analysis
### Computer security incident response teams(CSIRTs) Roles: 
1. security analyst 
	
2. Tech/op lead
	
3. Incident Coordinator - Communication
### Tools 
1. Intrusion Detection/Prevention system - Snort, Sarcata
	
2. Documentation Tools
	
3. Endpoint Detection System - bitdefender
	
4. Alert and Event management tools

5. SIEM
		1. Collect
			
		2. Normalize
			
		3. Analyze 
	
6. SIEM tools used Unified Data Model to store and query data. 
7. Entities or nouns like hostname, username
8. Event metadata: like timestamp and type
9. Network metadata: like protocol
10. Security result: sec outcome
    
### SOAR - Security Orchestration, Analysis and Response
1. Automate
	
2. Manage and central access
## Network Security: 
    
1. Flow Analysis
	
2. Packet payload information
	
3. Temporal patterns
	
4. Tools like IDS and Network protocol analyzers(packet sniffers)
	
5. Data exfiltration attack

6. Packet Captures: 
	
	1. Network protocol analyzers (packet sniffers) like tcpdump, wireshark etc
	
		1. They collect packet from the NIC)network interface car)
			
		2. `WireShark -
			1. Frame - Info about the packet - frame length and the arrival time of the packet
				
			2. Ethernet II - Ethernet level - source/dest MAC 
				
			3. IPv4 - source/dest IP addresses, protocol like TCP or UDP
				
			4. TCP/ICMP other final internet protocol information 

		3. TCP Dump: 
			1. -i - interface
			2. Common IPV4 header fields:
				1. Version
					
				2. Header length
					
				3. ToS - type of service
					
				4. Total length
					
				5. ID + flags + offset
					
			3. TTL
				
			4. Protol - TCP(6)
				
			5. Checksum
				
			6. Source + destination
		

	2. IDS 
		1. host-based intrusion detection system (HIDS) -endpoints
			
		2. Network-based intrusion detection system (NIDS)

#### Detection: 
1.  Signature analysis to detect events. 

2. Suracata is a NIDS where rules can be created for signature
``` <action> <header> <source> -> <dest> (<options>)  <option> ```

4. Options are in parentheses -:value like (msg:”GET something”)

5. Format type is EVE.JSON - extensible event  Format JSON

6. Fast.log has the alerts
    
#### Anomaly-based analysis
1. Security Testing with python: 
	
	2. Testing:
	3. Static Application Security testing(SAST): Code analyst before build
	4. Dynamic AST: when code is running - in the CI/CD pipeline
	5. Software Composition Analysis (SCA): check dependencies - rules for problem
