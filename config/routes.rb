Rails.application.routes.draw do
  # Routes for the Department resource:
  # CREATE
  get('/departments/new', { :controller => 'departments', :action => 'new' })
  get('/create_department', { :controller => 'departments', :action => 'create' })

  # READ
  get('/departments', { :controller => 'departments', :action => 'index' })
  get('/departments/:id', { :controller => 'departments', :action => 'show' })

  # UPDATE
  get('/departments/:id/edit', { :controller => 'departments', :action => 'edit' })
  get('/update_department/:id', { :controller => 'departments', :action => 'update' })

  # DELETE
  get('/delete_department/:id', { :controller => 'departments', :action => 'destroy' })
  #------------------------------

  # Routes for the Section resource:
  # CREATE
  get('/sections/new', { :controller => 'sections', :action => 'new' })
  get('/create_section', { :controller => 'sections', :action => 'create' })

  # READ
  get('/sections', { :controller => 'sections', :action => 'index' })
  get('/sections/:id', { :controller => 'sections', :action => 'show' })

  # UPDATE
  get('/sections/:id/edit', { :controller => 'sections', :action => 'edit' })
  get('/update_section/:id', { :controller => 'sections', :action => 'update' })

  # DELETE
  get('/delete_section/:id', { :controller => 'sections', :action => 'destroy' })
  #------------------------------

  # Routes for the Calendar resource:
  # CREATE
  get('/calendars/new', { :controller => 'calendars', :action => 'new' })
  get('/create_calendar', { :controller => 'calendars', :action => 'create' })

  # READ
  get('/calendars', { :controller => 'calendars', :action => 'index' })
  get('/calendars/:id', { :controller => 'calendars', :action => 'show' })

  # UPDATE
  get('/calendars/:id/edit', { :controller => 'calendars', :action => 'edit' })
  get('/update_calendar/:id', { :controller => 'calendars', :action => 'update' })

  # DELETE
  get('/delete_calendar/:id', { :controller => 'calendars', :action => 'destroy' })
  #------------------------------

  # Routes for the Quarter resource:
  # CREATE
  get('/quarters/new', { :controller => 'quarters', :action => 'new' })
  get('/create_quarter', { :controller => 'quarters', :action => 'create' })

  # READ
  get('/quarters', { :controller => 'quarters', :action => 'index' })
  get('/quarters/:id', { :controller => 'quarters', :action => 'show' })

  # UPDATE
  get('/quarters/:id/edit', { :controller => 'quarters', :action => 'edit' })
  get('/update_quarter/:id', { :controller => 'quarters', :action => 'update' })

  # DELETE
  get('/delete_quarter/:id', { :controller => 'quarters', :action => 'destroy' })
  #------------------------------

  # Routes for the Program resource:
  # CREATE
  get('/programs/new', { :controller => 'programs', :action => 'new' })
  get('/create_program', { :controller => 'programs', :action => 'create' })

  # READ
  get('/programs', { :controller => 'programs', :action => 'index' })
  get('/programs/:id', { :controller => 'programs', :action => 'show' })

  # UPDATE
  get('/programs/:id/edit', { :controller => 'programs', :action => 'edit' })
  get('/update_program/:id', { :controller => 'programs', :action => 'update' })

  # DELETE
  get('/delete_program/:id', { :controller => 'programs', :action => 'destroy' })
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end