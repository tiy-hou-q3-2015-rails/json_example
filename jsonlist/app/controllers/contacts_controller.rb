class ContactsController < ApplicationController
  def index
    @contacts = Contact.all


    view = ApplicationController.view_context_class.new("#{Rails.root}/app/views")
    @contacts_json = JbuilderTemplate.new(view).encode do |json|
      json.contacts @contacts do |contact|
        json.id contact.id
        json.first_name contact.first_name
        json.last_name contact.last_name
        json.full_name contact.full_name
        json.url contact_path(id: contact.id)
        json.thumbnail_url Refile.attachment_url(contact, :profile, :fill, 100, 100, format: 'png')
        json.profile_url Refile.attachment_url(contact, :profile, :fill, 500, 500, format: 'png')
      end

    end

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
