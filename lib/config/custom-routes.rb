# Here you can override or add to the pages in the core website

ActionController::Routing::Routes.draw do |map|
    # Additional help page example
    map.with_options :controller => 'help' do |help|
        help.help_out '/help/help_out', :action => 'help_out'
    end    
end
