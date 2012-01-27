# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/fr/property_nameservers_multiple_ipv4.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.fr.rb'

describe Whois::Record::Parser::WhoisNicFr, "property_nameservers_multiple_ipv4.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.fr/fr/property_nameservers_multiple_ipv4.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.boursedirect.fr"
      @parser.nameservers[0].ipv4.should == "212.157.203.190"
      @parser.nameservers[0].ipv6.should == nil
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns2.boursedirect.fr"
      @parser.nameservers[1].ipv4.should == "212.157.203.189"
      @parser.nameservers[1].ipv6.should == nil
    end
  end
end
