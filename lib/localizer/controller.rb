module Localizer
  module Controller
    module InstanceMethods
      private
        def set_locale
          I18n.locale = params[:locale].try(:to_sym) || I18n.default_locale
        end

        def locale
          I18n.locale
        end
    end

    def self.included(controller)
      # controller.extend         ClassMethods
      controller.send :include, InstanceMethods
      controller.send :before_filter, :set_locale
      controller.helper_method :locale
    end
  end
end
