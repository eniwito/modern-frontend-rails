class Admin::RegistrationsController < Devise::RegistrationsController
  layout "cp", only: [:edit]
end