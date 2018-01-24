# frozen_string_literal: true

# Parent class for model classes
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
