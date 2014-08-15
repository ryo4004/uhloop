# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

run Uhloop::Application

# http://qiita.com/items/75c5d13f5e8042432f9d
$stdout.sync = true
