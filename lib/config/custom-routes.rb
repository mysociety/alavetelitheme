-*- encoding : utf-8 -*-
# Here you can override or add to the pages in the core website

#Rails.application.routes.draw do
 # get '/help/nonprofits' => 'help#nonprofits'
#end

-*- encoding : utf-8 -*-
# Here you can override or add to the pages in the core website

# Rails.application.routes.draw do
  # get '/help/nonprofits' => 'help#nonprofits'
# end


  get '/help/companies'  => 'help#companies',
    :via => 'get',
    :as => 'help_companies'

  get '/help/authorities'  => 'help#authorities',
    :via => 'get',
    :as => 'help_authorities'

  get '/help/nonprofits'  => 'help#nonprofits',
    :via => 'get',
    :as => 'help_nonprofits'

  get '/help/citizens'  => 'help#citizens',
    :via => 'get',
    :as => 'help_citizens'

  get '/help/merch'  => 'help#merch',
    :via => 'get',
    :as => 'help_merch'

  get '/help/donate'  => 'help#donate',
    :via => 'get',
    :as => 'help_donate'
end
