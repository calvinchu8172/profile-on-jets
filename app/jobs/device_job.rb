class DeviceJob < ApplicationJob
  rate "30 minutes"
  def register

    url = ENV["PORTAL_DOMAIN"] + '/d/3/register'

    params = {
      mac_address: '0023F8311041',
      serial_number: 'TEMPSERIALNUM0000',
      model_name: 'NAS540',
      firmware_version: '540_datecode_20150615_myZyXELCloud-Agent_1.0.0',
      signature: ENV["DEVICE_REGISTER_TEMPSERIALNUM0000_SIGNATURE"],
      algo: '1',
      certificate_serial: '1002',
      module: '[{"name":"DDNS", "ver":"1" }, {"name":"pairing", "ver":"button"}, {"name":"upnp", "ver":"2" }, {"name":"indicator", "ver":"1" }, {"name":"package", "ver":"1" }]'
    }

    begin
      data = RestClient.post( url, params )
      data = JSON.parse(data)
      puts data
      data
    rescue RestClient::ExceptionWithResponse => e
      err = JSON.parse(e.response)
      puts err
      err
    end

  end

  rate "30 minutes"
  def unpair

    url = ENV["PORTAL_DOMAIN"] + '/d/1/unpair'

    headers = {
      'X-Signature': ENV["DEVICE_UNPAIR_TEMPSERIALNUM0000_SIGNATURE"]
    }

    params = {
      certificate_serial: '1002',
      mac_address: '0023f8311041',
      serial_number: 'TEMPSERIALNUM0000'
    }

    begin
      data = RestClient::Request.execute( method: :delete, url: url, payload: params, headers: headers)
      data = JSON.parse(data)
      puts data
      data
    rescue RestClient::ExceptionWithResponse => e
      err = JSON.parse(e.response)
      puts err
      err
    end

  end

end
