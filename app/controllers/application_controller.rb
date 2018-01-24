# frozen_string_literal: true

# Parent class for controller classes
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
