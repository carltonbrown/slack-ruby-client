# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Reminders
          #
          # This method creates a reminder.
          #
          # @option options [Object] :text
          #   The content of the reminder.
          # @option options [Object] :time
          #   When this reminder should happen: the Unix timestamp (up to five years from now), the number of seconds until the reminder (if within 24 hours), or a natural language description (Ex. "in 15 minutes," or "every Thursday").
          # @option options [user] :user
          #   The user who will receive the reminder. If no user is specified, the reminder will go to user who created it.
          # @see https://api.slack.com/methods/reminders.add
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/reminders/reminders.add.json
          def reminders_add(options = {})
            throw ArgumentError.new('Required arguments :text missing') if options[:text].nil?
            throw ArgumentError.new('Required arguments :time missing') if options[:time].nil?
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('reminders.add', options)
          end

          #
          # This method completes a reminder.
          #
          # @option options [Object] :reminder
          #   The ID of the reminder to be marked as complete.
          # @see https://api.slack.com/methods/reminders.complete
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/reminders/reminders.complete.json
          def reminders_complete(options = {})
            throw ArgumentError.new('Required arguments :reminder missing') if options[:reminder].nil?
            post('reminders.complete', options)
          end

          #
          # This method deletes a reminder.
          #
          # @option options [Object] :reminder
          #   The ID of the reminder.
          # @see https://api.slack.com/methods/reminders.delete
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/reminders/reminders.delete.json
          def reminders_delete(options = {})
            throw ArgumentError.new('Required arguments :reminder missing') if options[:reminder].nil?
            post('reminders.delete', options)
          end

          #
          # This method returns information about a reminder.
          #
          # @option options [Object] :reminder
          #   The ID of the reminder.
          # @see https://api.slack.com/methods/reminders.info
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/reminders/reminders.info.json
          def reminders_info(options = {})
            throw ArgumentError.new('Required arguments :reminder missing') if options[:reminder].nil?
            post('reminders.info', options)
          end

          #
          # This method lists all reminders created by or for a given user.
          #
          # @see https://api.slack.com/methods/reminders.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/reminders/reminders.list.json
          def reminders_list(options = {})
            post('reminders.list', options)
          end
        end
      end
    end
  end
end
