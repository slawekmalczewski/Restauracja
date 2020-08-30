class ApplicationController < ActionController::Base

  include DeviseWhitelist
  include AfterSignInConcern

end
