#ShrimpMonitor

ShrimpMonitor is a platform for monitoring water quality attributes specifically for indoor shrimp aquaculture.

The system uses an ATMega based microcontroller, and environmental sensors to monitor attributes such as:

* Dissolved Oxygen 
* Temperature
* pH
* Salinity
* Oxidation Reduction Potential
* Turbidity (soon to be added)

The microcontroller writes sensor information to an AWS (Amazon Web Services) SQS queue.

A shell script runs periodically on cron, picking up new entries from the AWS queue and inserts the rows into the database (likely be changed to whenever gem in the future).

##Components

ShrimpMonitor uses many open source tools.  The web front end is written in Ruby on Rails, with D3JS for graphing of data, using Twitter Bootstrap for responsive layout.

Using the following gems:
*  aws-sdk
*  cancan
*  coffee-rails (~> 4.0.0)
*  d3js-rails
*  devise
*  jbuilder (~> 1.2)
*  jquery-rails
*  less-rails
*  omniauth-amazon
*  omniauth-facebook
*  omniauth-google-apps
*  omniauth-google-oauth2
*  omniauth-linkedin-oauth2
*  omniauth-windowslive
*  omniauth-yahoo8
*  rails (= 4.0.4)
*  sass-rails (~> 4.0.2)
*  sdoc
*  sqlite3
*  therubyracer
*  turbolinks
*  twitter-bootstrap-rails!
*  uglifier (>= 1.3.0)
*  whenever
*  will_paginate

##Documentation 

Is essentially non existent so far - will add when I have more time.

##Tests

Have not written any tests yet, on the todo list.

##License 
[GPLv3] (http://www.gnu.org/licenses/gpl-3.0.html)
