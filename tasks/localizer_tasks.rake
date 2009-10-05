# desc "Explaining what the task does"
# task :localizer do
#   # Task goes here
# end

namespace :localizer do
  desc "Install localizer assets in public folder."
  task :assets do
    require 'fileutils'
    localizer_assets = File.join(File.dirname(__FILE__),'..','localizer','lib','assets')
    File.cp_r File.join(localizer_assets,'flags'), File.join(Rails.public_path, 'images')
  end
end