Sharetravel::Application.routes.draw do
  get "design/city"
  get "design/scene"


  root :to => 'home#index'
  resource :home do
    get 'ammap_data' => 'home#ammap_data'
    get 'ammap_setting' => 'home#ammap_setting'
  end

end
