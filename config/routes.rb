RailwayFlower::Engine.routes.draw do
  root  :to           => "specs#index"
  get '/:manifest'  => 'specs#run', :as => :run
end