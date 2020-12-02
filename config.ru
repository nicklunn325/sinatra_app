require_relative './config/environment'

use Rack::MethodOverride
use GenreController
run ApplicationController