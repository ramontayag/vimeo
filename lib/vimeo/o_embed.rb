module Vimeo
  class OEmbed
    include HTTParty
    base_uri 'vimeo.com/api'

    def self.get_info(video_id)
      get("/oembed.json?url=http%3A//vimeo.com/#{video_id}")
    end
  end
end
