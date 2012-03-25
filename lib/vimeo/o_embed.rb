module Vimeo
  class OEmbed
    include HTTParty
    base_uri 'vimeo.com/api'

    def self.get_info(video_id, params=nil)
      query_url = "/oembed.json?url=http%3A//vimeo.com/#{video_id}"
      query_url += "&"+params.to_query if params
      get(query_url)
    end
  end
end
