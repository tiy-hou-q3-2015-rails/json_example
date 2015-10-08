class Api::ContactsController < ApplicationController

  before_action do
    request.format = :json
  end

  def index
    @contacts = Contact.all
  end
end
