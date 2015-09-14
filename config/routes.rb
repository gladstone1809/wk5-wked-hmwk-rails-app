Rails.application.routes.draw do

  # index for guests
  get '/guests' => 'guests#index'
  # new
  get '/guests/new' => 'guests#new'
  # create
  post '/guests' => 'guests#create'
  # show
  get '/guests/:id' => 'guests#show'
  # edit
  get '/guests/:id/edit' => 'guests#edit'
  # update
  put '/guests/:id' => 'guests#update'
  patch '/guests/:id' => 'guests#update'
  # delete/destroy
  delete '/guests/:id' => 'guests#destroy'

  # index for memberships
  get '/memberships' => 'memberships#index'
  # new
  get '/memberships/new' => 'memberships#new'
  # create
  post '/memberships' => 'memberships#create'
  # show
  get '/memberships/:id' => 'memberships#show'
  # edit
  get '/memberships/:id/edit' => 'memberships#edit'
  # update
  put '/memberships/:id' => 'memberships#update'
  patch '/memberships/:id' => 'memberships#update'
  # delete/destroy
  delete '/memberships/:id' => 'memberships#destroy'

  # index for membersclubs
  get '/membersclubs' => 'membersclubs#index'
  # new
  get '/membersclubs/new' => 'membersclubs#new'
  # create
  post '/membersclubs' => 'membersclubs#create'
  # show
  get '/membersclubs/:id' => 'membersclubs#show'
  # edit
  get '/membersclubs/:id/edit' => 'membersclubs#edit'
  # update
  put '/membersclubs/:id' => 'membersclubs#update'
  patch '/membersclubs/:id' => 'membersclubs#update'
  # delete/destroy
  delete '/membersclubs/:id' => 'membersclubs#destroy'
  
end
