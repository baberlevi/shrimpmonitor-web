#!/usr/bin/env bash

source /home/levi/.rvm/environments/ruby-2.1.1

cd /home/levi/shrimpmonitor

rails runner lib/grab_new_sqs_readings.rb
