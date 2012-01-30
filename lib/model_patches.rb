# Add a callback - to be executed before each request in development,
# and at startup in production - to patch existing app classes.
# Doing so in init/environment.rb wouldn't work in development, since
# classes are reloaded, but initialization is not run each time.
# See http://stackoverflow.com/questions/7072758/plugin-not-reloading-in-development-mode
#
require 'dispatcher'
Dispatcher.to_prepare do
    OutgoingMessage.class_eval do
        # Add intro paragraph to new request template
        def default_letter
            return nil if self.message_type == 'followup'
            #"If you uncomment this line, this text will appear as default text in every message"    
        end
    end        
end
