require 'httparty'

module OmniAuth
  module Zoom
    class API
      include HTTParty
      base_uri 'https://api.zoom.us/v2'

      def initialize(token)
        @access_token = token
        self.class.headers ||= {}
        self.class.headers('Authorization' => "Bearer #{@access_token}")
      end

      def get(*args, &block)
        self.class.get(*args, &block)
      end

      def post(*args, &block)
        self.class.post(*args, &block)
      end

      def patch(*args, &block)
        self.class.patch(*args, &block)
      end

      def put(*args, &block)
        self.class.put(*args, &block)
      end

      def delete(*args, &block)
        self.class.delete(*args, &block)
      end

      def head(*args, &block)
        self.class.head(*args, &block)
      end

      def options(*args, &block)
        self.class.options(*args, &block)
      end

      def move(*args, &block)
        self.class.move(*args, &block)
      end

      def copy(*args, &block)
        self.class.copy(*args, &block)
      end
    end
  end
end
