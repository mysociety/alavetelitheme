-*- encoding : utf-8 -*-
# Here you can override or add to the pages in the core website

Rails.application.routes.draw do
  get '/help/nonprofits' => 'help#nonprofits'
end
