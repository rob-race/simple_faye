require "net/http"
require "simple_faye/version"
require "simple_faye/engine" if defined? Rails

module SimpleFaye
  class << self
    def publish_message(subscription, message)
        url = URI.parse("http://localhost:9292/faye")
        form = Net::HTTP::Post.new(url.path.empty? ? '/' : url.path)
        form.set_form_data(:message => "{\"channel\":\"#{subscription}\", \"data\":{\"message\":\"#{message}\"}}")
        http = Net::HTTP.new(url.host, url.port)
        http.start {|h| h.request(form)}
    end
  end
end