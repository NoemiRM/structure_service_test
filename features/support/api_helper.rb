require 'json'
require 'rest_client'

module ServiceHelper

  def self.send_get(info)
    unless info.key?(:headers)
      info[:headers] = {}
    end
    info[:headers]['Content-Type'] = "application/json"
    begin
      response = RestClient.get info[:url], info[:headers]

      if response.nil?
        print_nil_response_error(response, info[:url].to_s, info[:headers].to_s)
      else
        return response
      end

    rescue => error
      print_response_error(error, info[:url], info[:headers], info[:payload])
      return error.response
    end
  end

end