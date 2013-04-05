Sharetravel::Application.routes.draw do

  resources :trips, only: [:show, :edit, :update]

  #resources :design, :only => [] do
    #collection do
      #get :main
      #get :login
    #end
  #end

  root :to => 'trips#index'
  #resource :home do
    #get 'ammap_data' => 'home#ammap_data'
    #get 'ammap_setting' => 'home#ammap_setting'
  #end

end
