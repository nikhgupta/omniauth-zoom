require 'spec_helper'

RSpec.describe OmniAuth::Strategies::Zoom do
  subject do
    OmniAuth::Strategies::Zoom.new({})
  end

  context "client options" do
    it 'should have correct name' do
      expect(subject.options.name).to eq("zoom")
    end

    it 'should have correct token url' do
      expect(subject.options.client_options.token_url).to eq('/oauth/token')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('/oauth/authorize')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq("https://zoom.us")
    end
  end
end
