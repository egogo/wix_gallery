WixGallery::Application.routes.draw do
  resources :users, :only => [:index] do
    resources :photos, :only => [:create,:update,:destroy,:index] do
      collection do
        get :preview
      end
    end
  end
  root :to => 'users#index'
end
