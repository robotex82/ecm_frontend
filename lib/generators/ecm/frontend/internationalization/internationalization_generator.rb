module Ecm
  module Frontend
    module Generators
      class InternationalizationGenerator < Rails::Generators::Base 
        source_root File.expand_path('../templates', __FILE__)
        
        def generate_locales
          template "routes.en.yml", "config/locales/routes.en.yml"
        end
      end
    end
  end
end        
