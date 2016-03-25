require_relative './base'

module Slacker
  module API
    class Auth < Slacker::API::Base

      def test
        call_method('auth', 'test', {})
      end
    end
  end
end