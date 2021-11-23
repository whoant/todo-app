Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#
	get 'todo', to: 'todo#index'
	post 'todo', to: 'todo#create'
	get 'todo/new', to: 'todo#new'
	get 'todo/:id', to: 'todo#show'
	get 'todo/:id/edit', to: 'todo#edit', as: :todo_edit
	put 'todo/:id', to: 'todo#update', as: :todo_update
	delete 'todo/:id', to: 'todo#destroy', as: :todo_delete

	root 'todo#index'
end
