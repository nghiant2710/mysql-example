# MySQL Example in Resin.io

## Introduction

This is a simple example for using mysql in [Resin.io](http://resin.io).

The mysql data folder is changed to `/data/mysql` which is in `/data` - [the persistent storage](http://docs.resin.io/#/pages/runtime.md#persistent-storage) in [Resin.io](http://resin.io).

`testdb` is a script to generate a test database on mysql.
Usage: `bash testdb <DBNAME> <USERNAME> <PASSWORD>`.