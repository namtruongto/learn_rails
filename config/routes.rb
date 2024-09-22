Rails.application.routes.draw do
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  # root "application#hello"
  root "pages#home" # chỉ định trang mặc định của ứng dụng khi người dùng truy cập vào đường dẫn gốc ("/")
  get 'about', to: 'pages#about' 
  # get 'about': Định nghĩa một route sử dụng phương thức HTTP GET, người dùng truy cập vào đường dẫn /about sẽ kích hoạt route này.
  # to: 'pages#about': Chỉ định route này sẽ được điều hướng đến controller và action tương ứng.
  # pages: Là tên của controller, cụ thể ở đây là PagesController.
  # about: Là tên của action (phương thức about trong PagesController).

  resources :books

end
