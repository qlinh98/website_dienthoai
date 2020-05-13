ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "fileutils"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  # :number_of_processors
  parallelize(workers: 1)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  # Carrierwave setup and teardown
  carrierwave_template = Rails.root.join("test", "fixtures", "files")
  carrierwave_root = Rails.root.join("test", "support", "carrierwave")

  # Carrierwave configuration is set here instead of in initializer
  CarrierWave.configure do |config|
    config.root = carrierwave_root
    config.enable_processing = false
    config.storage = :file
    config.cache_dir = Rails.root.join("test", "support", "carrierwave", "carrierwave_cache")
  end

  # And copy carrierwave template in
  #puts "Copying\n  #{carrierwave_template.join('uploads').to_s} to\n  #{carrierwave_root.to_s}"
  FileUtils.cp_r carrierwave_template.join("uploads"), carrierwave_root

  at_exit do
    #puts "Removing carrierwave test directories:"
    Dir.glob(carrierwave_root.join("*")).each do |dir|
      #puts "   #{dir}"
      FileUtils.remove_entry(dir)
    end
  end
end
