require_relative './config/environment'

use Rack::MethodOverride
use SessionController
use UserController
use GenreController
run ApplicationController