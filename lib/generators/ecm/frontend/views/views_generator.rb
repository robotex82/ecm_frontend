require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class ViewsGenerator < Rails::Generators::Base
        desc "Generates the frontend layout and views."
             
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_layout
          copy_file "frontend.html.erb", "app/views/layouts/frontend.html.erb"
        end
        
        def generate_home_index
          copy_file "index.html.erb", "app/views/home/index.html.erb"
        end
        
        def generate_frontend_partials
          copy_file "_stylesheets.html.erb", "app/views/frontend/_stylesheets.html.erb"
          copy_file "_header.html.erb", "app/views/frontend/_header.html.erb"         
          copy_file "_flash.html.erb", "app/views/frontend/_flash.html.erb"
          copy_file "_main_navigation.html.erb", "app/views/frontend/_main_navigation.html.erb"
          copy_file "_footer.html.erb", "app/views/frontend/_footer.html.erb"          
        end

        def generate_assets
          generate "ecm:frontend:assets"
        end   
      end
    end
  end
end        
