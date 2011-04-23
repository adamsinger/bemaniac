class ContactRequestsController < ApplicationController
  def new
    @contact_request = ContactRequest.new
  end

  def create
    if @contact_request = ContactRequest.create(params[:contact_request])
      render action: "new", notice: "Thanks for your request. I'll get back to you very soon."
    else
      render action: "new"
    end
  end
end
