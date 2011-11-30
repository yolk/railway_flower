require 'active_support/core_ext/module/attribute_accessors'

module RailwayFlower
  
  mattr_accessor :spec_path
  @@spec_path = "spec/javascripts"
  
  def self.manifest_files
    Dir["#{Rails.root}/spec/javascripts/*_manifest.js"]
  end
  
  def self.manifests
    manifest_files.map{|f| File.basename(f, "_manifest.js") }
  end
  
end

require "railway_flower/version"
require "railway_flower/engine"
