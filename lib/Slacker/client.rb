require 'httmultiparty'
require 'active_support/core_ext'
require 'active_support'

require 'Slacker/response'

module Slacker
  class Client

    attr_reader :access_token, :username, :icon_url, :namespaces

    def initialize(access_token, opts={})
      opts = opts.with_different_access.reject { |_,v| v.nil? }
      opts.reverse_merge!(default_slack_configuration)

      @access_token = acc
    end

  end
end