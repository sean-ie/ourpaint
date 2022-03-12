class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  add_flash_types :danger, :info, :warning, :success, :messages
end

def default_url_options
  { host: ENV["www.ourpaint.xyz"] || "localhost:3000" }
end
