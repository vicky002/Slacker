require 'ostruct'

module Slacker
  class Response < OpenStruct
    attr_reader :response

    def initialize response
      parsed = JSON.parse(response.body)
      super(parsed)
      self.response = response
      self.code = response.code
    end

    def to_h
      marshal_dump.with_indifferent_access
    end

    def to_json
      JSON.dump(to_h)
    end

    def success?
      parsed["ok"]
    end

    def failed?
      !parsed["ok"]
    end

  end
end