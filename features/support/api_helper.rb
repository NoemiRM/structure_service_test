require 'json'
require 'rest_client'

module ApiHelper

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

  def self.send_post(info)
    unless info.key?(:headers)
      info[:headers] = {}
    end
    unless info.key?(:payload)
      info[:payload] = {}
    end
    info[:headers]['Content-Type'] = "application/json"
    begin
      response = RestClient.post info[:url], info[:payload], info[:headers]
      #print_response(response, info[:url], info[:headers], info[:payload])
      response

    rescue => error
      print_response_error(error, info[:url], info[:headers], info[:payload])
      return error.response

    end

  end

  def self.send_put(info)
    unless info.key?(:headers)
      info[:headers] = {}
    end
    unless info.key?(:payload)
      info[:payload] = {}
    end
    info[:headers]['Content-Type'] = "application/json"
    begin
      response = RestClient.put info[:url], info[:payload], info[:headers]
      #print_response(response, info[:url], info[:headers], info[:payload])
      response

    rescue => error
      print_response_error(error, info[:url], info[:headers], info[:payload])
      return error.response
    end

  end

  def self.send_delete(info)
    unless info.key?(:headers)
      info[:headers] = {}
    end
    unless info.key?(:payload)
      info[:payload] = {}
    end
    info[:headers]['Content-Type'] = "application/json"
    begin
      response = RestClient.delete info[:url], info[:headers]
      #print_response(response, info[:url], info[:headers], info[:payload])
      response

    rescue => error
      print_response_error(error, info[:url], info[:headers], info[:payload])
      return error.response
    end

  end

end