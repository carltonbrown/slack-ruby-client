# frozen_string_literal: true
module Slack
  module RealTime
    module Stores
      # Doesn't store anything.
      class Base
        class << self
          attr_accessor :events
        end

        attr_accessor :users, :bots, :channels, :groups, :teams, :ims

        def self
          nil
        end

        def team
          nil
        end

        def initialize(_attrs); end

        def self.on(event, &block)
          self.events ||= {}
          self.events[event.to_s] ||= []
          self.events[event.to_s] << block
        end
      end
    end
  end
end
