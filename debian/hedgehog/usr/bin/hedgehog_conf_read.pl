#!/usr/bin/perl -w
# 
# Copyright 2014 Internet Corporation for Assigned Names and Numbers.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# Developed by Sinodun IT (www.sinodun.com)
#

# 
# File:   hedgehog_conf_read.pl
#

use YAML::Tiny;
$yaml = YAML::Tiny->read("/etc/hedgehog/hedgehog.yaml");
foreach $key (keys  $yaml->[0]{database}){
  print "hhconfig_database_$key=\"$yaml->[0]{database}{$key}\"\n";
}
foreach $key (keys  $yaml->[0]{directories}){
  print "hhconfig_directories_$key=\"$yaml->[0]{directories}{$key}\"\n";
}