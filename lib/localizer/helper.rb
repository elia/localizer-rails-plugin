module Localizer
  module Helper
    def locale
      params[:locale] || 'it'
    end

    def localized_root
      locale == 'it' ? root_path : local_root_path(locale)
    end

    def with_locale locale
      locale_backup = I18n.locale
      I18n.locale = locale
      result = yield locale
      I18n.locale = locale_backup
      return result
    end

    def when_locale locale
      locale_backup = I18n.locale
      I18n.locale = locale
      result = yield locale
      I18n.locale = locale_backup
      return result
    end
    
    def locales options = {}
      locales = Localizer.config.locales
      if options[:exclude]
        locales - [ options[:exclude] ]
      end
      locales
    end

    def link_to_locale locale, name
      active = (I18n.locale.to_s == locale.to_s)
      link_to image_tag("flags/#{locale}.png", :title => name), 
              send( controller.action_name+'_path', locale ), :class => (active ? 'active' : '')
    end

    def localized_current_path locale
      url_for(:action => nil, :locale => locale)
    end
  end
end