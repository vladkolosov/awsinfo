# awsinfo
HTML viewer for AWS services description info

This repository contains 2 scripts:

0. Bash script `awsinfo.sh` describes `ec2`, `rds`, `elb`, `elasticache`, and `cloudformation` services from `us-east-1` region and outputs the data as a `json` document.
0. Python script `awsinfo.py` calls the bash script and parses the output data into HTML format. Resulting data is included into a HTML 5 page with bootstrap framework styling and printed to the standard output.

Requirements
------------

* Python version >= 2.7
* AWS CLI version 1.7.13

Usage
-----

0. Bash script
```
./awsinfo.sh
```

0. Python script
```
./awsinfo.py
```
