# frozen_string_literal: true

module SigfoxApi
  class Response
    def initialize(faraday_response)
      @row_status = faraday_response.status
      @row_body = faraday_response.body
    end

    def status
      @row_status
    end

    def body
      @row_body
    end
  end
end
