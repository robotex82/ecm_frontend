  localized(I18n.available_locales, :verbose => true) do
    scope "/:i18n_locale", :constraints => {:i18n_locale => /#{I18n.available_locales.join('|')}/} do 
      match 'home' => 'home#index', :as => 'home'
      root :to => "home#index"
    end
  end 
  
  match "/", :to => redirect {|params| "/#{I18n.locale}" }
