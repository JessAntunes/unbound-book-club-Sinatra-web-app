require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end


use Rack::MethodOverride
run ApplicationController
use ListController
use BookController
use UserController
use LibraryController
use FriendController
