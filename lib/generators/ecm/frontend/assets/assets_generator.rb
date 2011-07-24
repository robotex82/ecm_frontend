require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class AssetsGenerator < Rails::Generators::Base
        desc "Generates public files like stylsheets, etc."
             
        source_root File.expand_path('../../../../../../public/', __FILE__)
        
        def generate_stylesheet
          copy_file "stylesheets/frontend.css", "public/stylesheets/frontend.css"
        end      
      end
    end
  end
end        
