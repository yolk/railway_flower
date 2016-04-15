require "rails"
require "railway_flower"

module RailwayFlower
  class Engine < Rails::Engine
    isolate_namespace RailwayFlower

    initializer :setup_railway_flower do |app|
      if (app.assets && app.assets.respond_to?(:append_path))
        app.assets.append_path "#{app.root}/#{RailwayFlower.spec_path}"

      elsif Sprockets::VERSION.split(".").first.to_i >= 3
        Sprockets.append_path "#{app.root}/#{RailwayFlower.spec_path}"
      end
    end
  end
end
