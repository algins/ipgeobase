# frozen_string_literal: true

require "test_helper"
require_relative "../lib/ipgeobase"

class TestIpgeobase < TestCase
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_lookup_succeeds
    response_body = File.read(get_fixture_path("response.xml"))
    stub_request(:get, /.*/).to_return(body: response_body)
    ip_meta = Ipgeobase.lookup("24.48.0.1")

    assert_equal ip_meta.city, "Montreal"
    assert_equal ip_meta.country, "Canada"
    assert_equal ip_meta.countryCode, "CA"
    assert_equal ip_meta.lat, 45.6085
    assert_equal ip_meta.lon, -73.5493
  end
end
