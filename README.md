# Exported Resource Collector Bug

## Overview:

There is [a loop in Puppet](https://github.com/puppetlabs/puppet/blob/master/lib/puppet/parser/compiler.rb#L386) that runs all collectors at the end of processing the catalog, and then evaluates any defined resources (in case the collector added them). This means that collectors are not run at the time of declaration, and the `defined()` funcion in puppet will not find the resources.

The trick to get it working is that the `defined()` method can be put in a defined resource declared after the collector, which will cause the collector to be run first. Icky.
