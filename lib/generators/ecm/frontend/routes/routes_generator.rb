require 'rails/generators/migration'

module Ecm
  module Frontend
    module Generators
      class RoutesGenerator < Rails::Generators::Base
        desc "Generates the frontend routes with i18n."
             
        source_root File.expand_path('../templates', __FILE__)

        def generate_routes
          inject_into_file "config/routes.rb" , :after => "Application.routes.draw do\n" do
            File.read(File.join(File.dirname(__FILE__), 'templates', 'routes.rb'))
          end
        end  
        
#        def generate_locales
#          template "routes.en.yml", "config/locales/routes.en.yml"
#        end 
      end
    end
  end
end        

