# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Users
          #
          # This method helps answer questions like:
          # - Which conversations am I a member of?
          # - Which public channels is my bot user in?
          # - Do I have any direct messages open with my friend Suzy?
          # - Is my bot a member of any private channels?
          #
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [Object] :exclude_archived
          #   Set to true to exclude archived channels from the list.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached. Must be an integer no larger than 1000.
          # @option options [Object] :types
          #   Mix and match channel types by providing a comma-separated list of any combination of public_channel, private_channel, mpim, im.
          # @option options [user] :user
          #   Browse conversations by a specific user ID's membership. Non-public channels are restricted to those where the calling user shares membership.
          # @see https://api.slack.com/methods/users.conversations
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.conversations.json
          def users_conversations(options = {})
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            if block_given?
              Pagination::Cursor.new(self, :users_conversations, options).each do |page|
                yield page
              end
            else
              post('users.conversations', options)
            end
          end

          #
          # This method allows the user to delete their profile image. It will clear whatever image is currently set.
          #
          # @see https://api.slack.com/methods/users.deletePhoto
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.deletePhoto.json
          def users_deletePhoto(options = {})
            post('users.deletePhoto', options)
          end

          #
          # This method lets you find out information about a user's presence.
          # Consult the presence documentation for more details.
          #
          # @option options [user] :user
          #   User to get presence info on. Defaults to the authed user.
          # @see https://api.slack.com/methods/users.getPresence
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.getPresence.json
          def users_getPresence(options = {})
            throw ArgumentError.new('Required arguments :user missing') if options[:user].nil?
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('users.getPresence', options)
          end

          #
          # After your Slack app is awarded an identity token through Sign in with Slack, use this method to retrieve a user's identity.
          #
          # @see https://api.slack.com/methods/users.identity
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.identity.json
          def users_identity(options = {})
            post('users.identity', options)
          end

          #
          # This method returns information about a member of a workspace.
          #
          # @option options [user] :user
          #   User to get info on.
          # @option options [Object] :include_locale
          #   Set this to true to receive the locale for this user. Defaults to false.
          # @see https://api.slack.com/methods/users.info
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.info.json
          def users_info(options = {})
            throw ArgumentError.new('Required arguments :user missing') if options[:user].nil?
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('users.info', options)
          end

          #
          # This method returns a list of all users in the workspace. This includes deleted/deactivated users.
          #
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [Object] :include_locale
          #   Set this to true to receive the locale for users. Defaults to false.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.
          # @see https://api.slack.com/methods/users.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.list.json
          def users_list(options = {})
            if block_given?
              Pagination::Cursor.new(self, :users_list, options).each do |page|
                yield page
              end
            else
              post('users.list', options)
            end
          end

          #
          # Retrieve a single user by looking them up by their registered email address. Requires users:read.email.
          #
          # @option options [Object] :email
          #   An email address belonging to a user in the workspace.
          # @see https://api.slack.com/methods/users.lookupByEmail
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.lookupByEmail.json
          def users_lookupByEmail(options = {})
            throw ArgumentError.new('Required arguments :email missing') if options[:email].nil?
            post('users.lookupByEmail', options)
          end

          #
          # This method is no longer functional and the behavior it controlled is no longer offered. The method will no longer exist beginning May 8, 2018.
          #
          # @see https://api.slack.com/methods/users.setActive
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.setActive.json
          def users_setActive(options = {})
            post('users.setActive', options)
          end

          #
          # This method allows the user to set their profile image. The caller can pass image data via image.
          #
          # @option options [Object] :image
          #   File contents via multipart/form-data.
          # @option options [Object] :crop_w
          #   Width/height of crop box (always square).
          # @option options [Object] :crop_x
          #   X coordinate of top-left corner of crop box.
          # @option options [Object] :crop_y
          #   Y coordinate of top-left corner of crop box.
          # @see https://api.slack.com/methods/users.setPhoto
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.setPhoto.json
          def users_setPhoto(options = {})
            throw ArgumentError.new('Required arguments :image missing') if options[:image].nil?
            post('users.setPhoto', options)
          end

          #
          # This method lets you set the calling user's manual presence.
          # Consult the presence documentation for more details.
          #
          # @option options [Object] :presence
          #   Either auto or away.
          # @see https://api.slack.com/methods/users.setPresence
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users/users.setPresence.json
          def users_setPresence(options = {})
            throw ArgumentError.new('Required arguments :presence missing') if options[:presence].nil?
            post('users.setPresence', options)
          end
        end
      end
    end
  end
end
