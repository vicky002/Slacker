require_relative './base'

module Slacker
  module API
    class API < Slacker::API::Base

      def test opts={}
        call_method('api', 'test', opts)
      end

    end
  end
end