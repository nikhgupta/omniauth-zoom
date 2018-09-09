require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Zoom < OmniAuth::Strategies::OAuth2
      option :name, 'zoom'

      option :client_options, {
        token_url: "/oauth/token",
        authorize_url: "/oauth/authorize",
        site: "https://zoom.us"
      }

      uid { info['id'] }

      info do
        unless @info
          api = OmniAuth::Zoom::API.new(token)
          @info = api.get("/users/me")
        end

        @info
      end

      def callback_url
        full_host + script_name + callback_path
      end

      def user_info
        info
      end

      def token
        access_token.token
      end

      credentials do
        _credentials = {'token' => access_token.token}

        if access_token.expires? && access_token.refresh_token
          _credentials = _credentials.merge('refresh_token' => access_token.refresh_token)
        end

        if access_token.expires?
          _credentials = _credentials.merge('expires_at' => access_token.expires_at)
        end

        _credentials.merge!('expires' => access_token.expires?)
      end

      extra do
        { 'scope' => access_token.params['scope'] }
      end
    end
  end
end
