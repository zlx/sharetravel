Sharetravel::Application.routes.draw do
  resources :design, :only => [] do
    collection do
      get :main
      get :login
    end
  end

  root :to => 'home#index'
  resource :home do
    get 'ammap_data' => 'home#ammap_data'
    get 'ammap_setting' => 'home#ammap_setting'
  end

end
