require "simple_faye/view_helpers"

module SimpleFaye
  class Engine < Rails::Engine
    # Adds the ViewHelpers into ActionView::Base
    initializer "simple_faye.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
