class CpController < ApplicationController
  before_action :authenticate_admin!

  layout 'cp'
end