module Ecm
  module Frontend
    module Generators
      class LocalesGenerator < Rails::Generators::Base 
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_locales
          template "routes.en.yml", "config/locales/routes.en.yml"
          template "routes.de.yml", "config/locales/routes.de.yml"
        end
      end
    end
  end
end        
