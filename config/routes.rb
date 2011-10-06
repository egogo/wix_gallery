WixGallery::Application.routes.draw do
  resources :photos, :only => [:create,:update,:destroy,:index] do
    collection do
      get :preview
    end
  end
  root :to => 'photos#index'
end
