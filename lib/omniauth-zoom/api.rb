require 'httparty'

module Omniauth
  module Zoom
    class API
      include HTTParty
      base_uri 'https://zoom.us/v2'

      def initialize(token)
        @access_token = token
        self.class.headers ||= {}
        self.class.headers['Authorization'] = "Bearer #{@access_token}"
      end

      class_eval do
        HTTParty::Request::SupportedHTTPMethods.each do |klass|
          method = klass.demodulize.underscore
          define_method(method) do |*args, &block|
            self.class.send(method, *args, &block)
          end
        end
      end
    end
  end
end
