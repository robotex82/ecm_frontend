require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class AssetsGenerator < Rails::Generators::Base
        desc "Generates public files like stylsheets, etc."
             
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_stylesheet
          copy_file "frontend.css", "public/stylesheets/frontend.css"
          copy_file "content.css", "public/stylesheets/frontend/content.css"
          copy_file "footer.css", "public/stylesheets/frontend/footer.css"  
          copy_file "header.css", "public/stylesheets/frontend/header.css"
          copy_file "main-navigation.css", "public/stylesheets/frontend/main-navigation.css"   
        end      
      end
    end
  end
end        
