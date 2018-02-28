# auto-puppet-jenkins
Objective: Automate the installation and configuration of the jenkins continuous integration server with Puppet.

REQUIREMENTS:

(a) The solution must run on a clean installation of the chosen operating system without errors.

(b) Jenkins and its prerequisites must be installed without manual intervention.

(c) Jenkins must be configured to serve requests over port 8000.

NOTE: It is not sufficient to forward port 8000 on either the host or the guest OS to the default jenkins port. Jenkins itself must be configured to listen on port 8000.

(d) Subsequent applications of the solution should not cause failures or repeat redundant configuration tasks

INSTRUCTIONS: Please perform this exercise on one of the following operating systems:

CentOS/RHEL (6 or 7)
Ubuntu (14.04 or 16.04)
Windows Server 2012R2.

We will use a vagrant box to review your solution. While not a requirement, we encourage you to use one of the vagrant boxes located here:
 
https://atlas.hashicorp.com/boxes/search
https://atlas.hashicorp.com/puppetlabs
 
You should accomplish this challenge using the freely available open source Puppet.

 Please attach:
 
(1) Your code solution in the file format in which it is expected to run. Submissions that cannot be executed as delivered will be disqualified.

(2) A separate README ASCII text document which briefly but clearly explains the steps required to apply your solution. Please explicitly state all assumptions (e.g. Only runs on RHEL6).
 
(3) A separate ANSWERS ASCII text document with clearly thought out but succinct answers to the following questions. Limit total length to 1 page.

Describe the most difficult hurdle you had to overcome in implementing your solution.
Please explain why requirement (d) above is important.
Where did you go to find information to help you?
Briefly explain what automation means to you, and why it is important to an organization's infrastructure design strategy.
