class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new params.require(:contact).permit(:first_name, :last_name, :email, :profile)
    if @contact.save
      redirect_to contact_path(id: @contact.id)
    else
      render :new
    end
  end

  def show
    @contact = Contact.find params[:id]
  end
end
