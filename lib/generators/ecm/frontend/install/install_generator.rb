require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc "Removed index.html and generates navigation."
             
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_remove_index
          remove_file 'public/index.html'
        end
        
        def generate_assets
          generate("ecm:frontend:assets")
        end
        
        def generate_controller
          generate("ecm:frontend:controller")
        end
        
        def generate_views
          generate("ecm:frontend:views")
        end
        
        def generate_simple_navigation
          generate("ecm:frontend:simple_navigation")
        end
        
#        def generate_internationalization
#          generate("ecm:frontend:internationalization")
#        end        
        
        def generate_routes
          generate("ecm:frontend:routes")
        end
      end
    end
  end
end        
