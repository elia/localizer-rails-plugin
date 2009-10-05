module Localizer
  module Routes
    # Usage:
    # 
    #   include Localizer::Routes
    #   localize_paths map, :index, :about, :contact
    #   localize_path map, :home
    
    def localize_path controller, action_name
      self.with_options  :controller => controller, :action => action_name do |site|
        site.with_options :requirements => {:locale => /\w\w/} do |site_with_locale|
          puts action_name
          site_with_locale.connect           ":locale" if action_name.to_s == 'index'
          site_with_locale.connect           ":locale/#{action_name}"
          site_with_locale.connect           ":locale/#{action_name}.htm"
          site_with_locale.send action_name, ":locale/#{action_name}.html"
        end
        # site.with_options :locale => 'it' do |site|
        site.connect                        "#{action_name}"
        site.connect                        "#{action_name}.htm"
        site.send "#{action_name}_default", "#{action_name}.html"
        # end
      end
    end
    
    def localize_paths_for controller, *action_names
      for action_name in action_names
        Rails.logger.error "******** #{controller} => #{action_name.to_s}"
        localize_path controller, action_name.to_s
      end
    end
    
    def include_localized_routes!
      Localizer.config.controllers.each_pair do |controller, pages|
        localize_paths_for controller, *pages
      end
    end
    
    def localized_resource resource_name
      resources resource_name, :path_prefix => ':locale', 
                    :requirements => {:locale => Localizer.config.locales} do |resource|
        yield resource if block_given?
      end
    end
  end
end
