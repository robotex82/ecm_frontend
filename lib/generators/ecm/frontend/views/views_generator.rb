require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class ViewsGenerator < Rails::Generators::Base
        desc "Generates the frontend layout and views."
             
        source_root File.expand_path('../../../../../../app/', __FILE__)
        
        def generate_layout
          copy_file "views/layouts/frontend.html.erb", "app/views/layouts/frontend.html.erb"
        end
        
        def generate_frontend_partials
          copy_file "views/frontend/_flash.html.erb", "app/views/frontend/_flash.html.erb"
        end       
        
        def generate_assets
          generate "ecm:frontend:assets"
        end   
      end
    end
  end
end        
