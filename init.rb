# Include hook code here
require 'localizer'

class ActionController::Base
  include Localizer::Controller
end

class ActionController::Routing::RouteSet::Mapper
  include Localizer::Routes
end

class ActionView::Base
  include Localizer::Helper
end