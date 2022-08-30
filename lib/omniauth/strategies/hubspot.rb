require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class HubspotOauth2 < OmniAuth::Strategies::OAuth2
      option :name, "hubspot_oauth2"

      args [:client_id, :client_secret]

      option :client_options, {
        site: 'https://api.hubapi.com',
        authorize_url: 'https://app.hubspot.com/oauth/authorize',
        token_url: 'oauth/v1/token'
      }
    end
  end
end

OmniAuth.config.add_camelization 'hubspot', 'HubSpot'
