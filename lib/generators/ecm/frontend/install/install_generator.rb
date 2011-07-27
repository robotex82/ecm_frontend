require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc "Generates the Home Controller with an index action, sets the root " <<
             "route and removes public/index.html."
             
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_home_controller
          options = " --controller-specs=false --no-helper"
          generate("controller", "Home", "index", options)
        end
        
        def generate_controller_parent
          gsub_file "app/controllers/home_controller.rb", /ApplicationController/, 'Ecm::FrontendController'
        end
        
        def generate_root_routes
          route "root :to => 'home#index'"
        end
        
        def generate_remove_index
          remove_file 'public/index.html'
        end
        
        def generate_simple_navigation_config
          generate("ecm:frontend:simple_navigation")
        end
      end
    end
  end
end        
