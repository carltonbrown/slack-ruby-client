# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::ToolingTokens do
  let(:client) { Slack::Web::Client.new }
  context 'tooling.tokens_rotate' do
    it 'requires refresh_token' do
      expect { client.tooling_tokens_rotate }.to raise_error ArgumentError, /Required arguments :refresh_token missing/
    end
  end
end
