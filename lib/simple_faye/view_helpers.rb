module SimpleFaye
  module ViewHelpers
    #Initialize Faye JS and create Faye Client
    def faye_js
      html = javascript_include_tag "http://localhost:9292/faye.js"  
      html += content_tag "script", :type => "text/javascript" do
        raw("var client = new Faye.Client('http://localhost:9292/faye');")  
      end
      html
    end
  
    def subscribe_to(channel)
      content_tag "script", :type => "text/javascript" do
        raw("var subscription = client.subscribe(\'#{channel}\', function(data) {
          alert(data.message);
          subscription.cancel();
        });")
    end    
      
    end
  end
end