THEME_NAME = File.split(File.expand_path("../..", __FILE__))[1]

class ActionController::Base
    # The following prepends the path of the current theme's views to
    # the "filter_path" that Rails searches when deciding which
    # template to use for a view.  It does so by creating a method
    # uniquely named for this theme.
    path_function_name = "set_view_paths_for_#{THEME_NAME}"
    before_filter path_function_name.to_sym
    send :define_method, path_function_name do
        self.prepend_view_path File.join(File.dirname(__FILE__), "views")
    end
end

# In order to have the theme lib/ folder ahead of the main app one,
# inspired in Ruby Guides explanation: http://guides.rubyonrails.org/plugins.html
%w{ . }.each do |dir|
  path = File.join(File.dirname(__FILE__), dir)
  $LOAD_PATH.insert(0, path)
  ActiveSupport::Dependencies.autoload_paths << path
  ActiveSupport::Dependencies.autoload_once_paths.delete(path)
end

# Monkey patch app code
for patch in ['controller_patches.rb',
              'model_patches.rb',
              'patch_mailer_paths.rb',
              'gettext_setup.rb']
    require File.expand_path "../#{patch}", __FILE__
end

# Note you should rename the file at "config/custom-routes.rb" to
# something unique (e.g. yourtheme-custom-routes.rb":
$alaveteli_route_extensions << 'custom-routes.rb'
