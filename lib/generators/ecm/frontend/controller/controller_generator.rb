require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class ControllerGenerator < Rails::Generators::Base
        desc "Generates the frontend controller"
             
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_frontend_controller
          template "frontend_controller.rb", "app/controllers/frontend_controller.rb"
        end  

        def generate_home_controller
          template "home_controller.rb", "app/controllers/home_controller.rb"
        end  
        
#        def generate_home_controller
#          options = " --controller-specs=false --no-helper"
#          generate("controller", "Home", "index", options)
#        end
#        
#        def generate_controller_parent
#          gsub_file "app/controllers/home_controller.rb", /ApplicationController/, 'Ecm::FrontendController'
#        end
#        
#        def generate_root_routes
#          route "root :to => 'home#index'"
#        end
      end
    end
  end
end        
