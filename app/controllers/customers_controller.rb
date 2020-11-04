class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def missing_email
    @customers = Customer.where("email IS NULL")
  end

  def alphabetized
    @customers = Customer.order("name ASC")
  end
end
