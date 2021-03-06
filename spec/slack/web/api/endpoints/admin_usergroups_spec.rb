# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::AdminUsergroups do
  let(:client) { Slack::Web::Client.new }
  context 'admin.usergroups_addChannels' do
    it 'requires channel_ids' do
      expect { client.admin_usergroups_addChannels(usergroup_id: %q[]) }.to raise_error ArgumentError, /Required arguments :channel_ids missing/
    end
    it 'requires usergroup_id' do
      expect { client.admin_usergroups_addChannels(channel_ids: %q[]) }.to raise_error ArgumentError, /Required arguments :usergroup_id missing/
    end
  end
  context 'admin.usergroups_addTeams' do
    it 'requires team_ids' do
      expect { client.admin_usergroups_addTeams(usergroup_id: %q[]) }.to raise_error ArgumentError, /Required arguments :team_ids missing/
    end
    it 'requires usergroup_id' do
      expect { client.admin_usergroups_addTeams(team_ids: %q[]) }.to raise_error ArgumentError, /Required arguments :usergroup_id missing/
    end
  end
  context 'admin.usergroups_listChannels' do
    it 'requires usergroup_id' do
      expect { client.admin_usergroups_listChannels }.to raise_error ArgumentError, /Required arguments :usergroup_id missing/
    end
  end
  context 'admin.usergroups_removeChannels' do
    it 'requires channel_ids' do
      expect { client.admin_usergroups_removeChannels(usergroup_id: %q[]) }.to raise_error ArgumentError, /Required arguments :channel_ids missing/
    end
    it 'requires usergroup_id' do
      expect { client.admin_usergroups_removeChannels(channel_ids: %q[]) }.to raise_error ArgumentError, /Required arguments :usergroup_id missing/
    end
  end
end
