Adhearsion Callengine
====================

Provision routes and connect incoming calls to destination using Adhearsion 
and Rails for the CRUD.

Description
-----------

This is a sample use application that demonstrates one of the many uses of 
Adhearsion. Adhearsion Callengine allows you to create provisioned routes with 
Rails and connect incoming calls to those routes with their ringto number. It 
can be configured with Asterisk or Tropo but the sample dialplan makes use of 
[Tropo](http://tropo.com "Tropo"). 

Installation
-----------

    git clone git://github.com/libryder/ahn-callengine.git
    cd ahn-callengine

How you specifically setup your Ruby environment is up to you but I recoomend 
using RVM with Ruby 1.9.2. 

    rvm use 1.9.2
    rvm gemset create callengine
    gem install bundler

Start the rails server as a daemon and start Adhearsion. 

    bundle install && bundle exec rails s &
    bundle exec ahn -

Navigate to *http://<yourserver>:3000/routes* to begin provisioning routes. 

Follow this [simple guide](http://libryder.com/2011/using-tropo-to-connect-inbound-calls-to-adhearsion) to get calls from 
Tropo to your Adhearsion server. 

*Note* - This only works with incoming calls from a SIP number. Support for Skype will
be added in the future.

