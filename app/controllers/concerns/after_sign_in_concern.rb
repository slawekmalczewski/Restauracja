module AfterSignInConcern
  extend ActiveSupport::Concern

  def after_sign_in_path_for(resource)
    if resource.has_roles?(:admin)
      "/admins/"
    else
      "/pages/"
    end
  end

end
