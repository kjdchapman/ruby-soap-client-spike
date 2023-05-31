require 'savon'

client = Savon.client do |config|
  wsdl_content = File.read("drs.wsdl")
  config.wsdl wsdl_content
end

response = client.call(:check_availability, message: { checkAvailability: true })
puts response.body #[:check_availability_response][:return][:the_slots]
