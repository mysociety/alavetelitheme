# -*- encoding : utf-8 -*-
# Here you can override or add to the pages in the core website

Rails.application.routes.draw do
# brand new controller for terms of use

  get '/help/terms' => 'help#terms', :as => 'help_terms'

end
