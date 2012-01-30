# Here you can override or add to the pages in the core website


require 'dispatcher'
Dispatcher.to_prepare do
    ActionController::Routing::Routes.draw do |map|
        # brand new controller example
        map.with_options :controller => 'general' do |general|
            general.mycontroller '/mycontroller', :action => 'mycontroller'
        end    

        # Additional help page example
        map.with_options :controller => 'help' do |help|
            help.help_out '/help/help_out', :action => 'help_out'
        end
    end
end
