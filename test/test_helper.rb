# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "ipgeobase"

require "minitest/autorun"
require "webmock/minitest"

class TestCase < MiniTest::Test
  def get_fixture_path(filename)
    segments = [__dir__, "fixtures", filename]
    segments.join("/")
  end
end
