# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module TeamBilling
          #
          # Reads a workspace's billing plan information.
          #
          # @see https://api.slack.com/methods/team.billing.info
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/team.billing/team.billing.info.json
          def team_billing_info(options = {})
            post('team.billing.info', options)
          end
        end
      end
    end
  end
end
