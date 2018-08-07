Rails.application.routes.draw do
  get 'moussaillons/new'
  get 'moussaillons/create'
  get 'moussaillons/index'
  get 'moussaillons/show'
  get 'moussaillons/delete'
  get 'moussaillons/update'
  devise_for :moussaillons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
