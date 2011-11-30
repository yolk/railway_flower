RailwayFlower::Engine.routes.draw do
  root  :to           => "specs#index"
  match '/:manifest'  => 'specs#run', :as => :run
end