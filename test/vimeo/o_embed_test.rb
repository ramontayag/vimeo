require 'test_helper'

class OEmbedTest < Test::Unit::TestCase
  setup do
    @oembed = Vimeo::Advanced::OEmbed.new
  end

  should "be able to get the embed information" do
    stub_post("?url=http%3A//vimeo.com/7100569", "oembed.json")
    response = @oembed.get_info("7100569")
    assert_equal 'ok', response['stat']
  end

end
