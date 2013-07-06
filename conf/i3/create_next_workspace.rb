#!/usr/bin/env ruby

require 'json'

workspaces = JSON.load(`i3-msg -t get_workspaces`)
num = ((1..10).to_a - workspaces.map { |w| w['num'] }).min
exec "i3-msg workspace #{num}"
