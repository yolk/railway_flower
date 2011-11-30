require "rails"
require "railway_flower"

module RailwayFlower
  class Engine < Rails::Engine
    isolate_namespace RailwayFlower

    initializer :setup_railway_flower do |app|
      app.assets.append_path "#{app.root}/#{RailwayFlower.spec_path}"
    end
  end
end