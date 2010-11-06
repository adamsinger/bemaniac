require 'spec_helper'

describe ContactRequestsController do

  def mock_contact_request(stubs={})
    @mock_contact_request ||= mock_model(ContactRequest, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all contact_requests as @contact_requests" do
      ContactRequest.stub(:all) { [mock_contact_request] }
      get :index
      assigns(:contact_requests).should eq([mock_contact_request])
    end
  end

  describe "GET show" do
    it "assigns the requested contact_request as @contact_request" do
      ContactRequest.stub(:find).with("37") { mock_contact_request }
      get :show, :id => "37"
      assigns(:contact_request).should be(mock_contact_request)
    end
  end

  describe "GET new" do
    it "assigns a new contact_request as @contact_request" do
      ContactRequest.stub(:new) { mock_contact_request }
      get :new
      assigns(:contact_request).should be(mock_contact_request)
    end
  end

  describe "GET edit" do
    it "assigns the requested contact_request as @contact_request" do
      ContactRequest.stub(:find).with("37") { mock_contact_request }
      get :edit, :id => "37"
      assigns(:contact_request).should be(mock_contact_request)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created contact_request as @contact_request" do
        ContactRequest.stub(:new).with({'these' => 'params'}) { mock_contact_request(:save => true) }
        post :create, :contact_request => {'these' => 'params'}
        assigns(:contact_request).should be(mock_contact_request)
      end

      it "redirects to the created contact_request" do
        ContactRequest.stub(:new) { mock_contact_request(:save => true) }
        post :create, :contact_request => {}
        response.should redirect_to(contact_request_url(mock_contact_request))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contact_request as @contact_request" do
        ContactRequest.stub(:new).with({'these' => 'params'}) { mock_contact_request(:save => false) }
        post :create, :contact_request => {'these' => 'params'}
        assigns(:contact_request).should be(mock_contact_request)
      end

      it "re-renders the 'new' template" do
        ContactRequest.stub(:new) { mock_contact_request(:save => false) }
        post :create, :contact_request => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested contact_request" do
        ContactRequest.should_receive(:find).with("37") { mock_contact_request }
        mock_contact_request.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :contact_request => {'these' => 'params'}
      end

      it "assigns the requested contact_request as @contact_request" do
        ContactRequest.stub(:find) { mock_contact_request(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:contact_request).should be(mock_contact_request)
      end

      it "redirects to the contact_request" do
        ContactRequest.stub(:find) { mock_contact_request(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(contact_request_url(mock_contact_request))
      end
    end

    describe "with invalid params" do
      it "assigns the contact_request as @contact_request" do
        ContactRequest.stub(:find) { mock_contact_request(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:contact_request).should be(mock_contact_request)
      end

      it "re-renders the 'edit' template" do
        ContactRequest.stub(:find) { mock_contact_request(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested contact_request" do
      ContactRequest.should_receive(:find).with("37") { mock_contact_request }
      mock_contact_request.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the contact_requests list" do
      ContactRequest.stub(:find) { mock_contact_request }
      delete :destroy, :id => "1"
      response.should redirect_to(contact_requests_url)
    end
  end

end
