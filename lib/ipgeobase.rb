# frozen_string_literal: true

require_relative "ipgeobase/version"
require "addressable/uri"
require "happymapper"
require "net/http"

module Ipgeobase
  class Error < StandardError; end

  class IpMeta
    include HappyMapper

    tag "query"
    element :city, String, tag: "city"
    element :country, String, tag: "country"
    element :countryCode, String, tag: "countryCode"
    element :lat, Float, tag: "lat"
    element :lon, Float, tag: "lon"
  end

  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    xml = Net::HTTP.get(uri)
    IpMeta.parse(xml)
  end
end
