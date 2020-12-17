# edr-snapshot-athena

A schema for Amazon Athena which will allow you to quickly query the JSON formatted snapshots exported from the InterceptX EDR tool once they are uploaded to Amazon S3.

The JSON schema is documented here:

https://support.sophos.com/support/s/article/KB-000038810?language=en_US

This schema has been translated to a database and table in Athena with multiple views for each data type collected by the EDR tool.

To make use of this tool, you will need to export your EDR snapshots in JSON format and then upload them to a location in Amazon S3, then create a database within an AWS Glue data catalog (a simple create database DDL statement is provided for reference, but you can easily do this in the UI if you want) and use the queries detailed here to create table to access the data.  

Not all the views are required (actually only the table is required if you're happy writing the queries yourself), if you aren't interested in a particular data type, there is no need to create the view for it.
