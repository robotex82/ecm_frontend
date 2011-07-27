module Ecm
  module Frontend
    class Engine < Rails::Engine
      config.to_prepare do
        ApplicationController.helper(Ecm::FrontendHelper)
      end      
    end
  end  
end
