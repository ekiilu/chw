require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MalariapreventationreportsController do

  # This should return the minimal set of attributes required to create a valid
  # Malariapreventationreport. As you add validations to Malariapreventationreport, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MalariapreventationreportsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all malariapreventationreports as @malariapreventationreports" do
      malariapreventationreport = Malariapreventationreport.create! valid_attributes
      get :index, {}, valid_session
      assigns(:malariapreventationreports).should eq([malariapreventationreport])
    end
  end

  describe "GET show" do
    it "assigns the requested malariapreventationreport as @malariapreventationreport" do
      malariapreventationreport = Malariapreventationreport.create! valid_attributes
      get :show, {:id => malariapreventationreport.to_param}, valid_session
      assigns(:malariapreventationreport).should eq(malariapreventationreport)
    end
  end

  describe "GET new" do
    it "assigns a new malariapreventationreport as @malariapreventationreport" do
      get :new, {}, valid_session
      assigns(:malariapreventationreport).should be_a_new(Malariapreventationreport)
    end
  end

  describe "GET edit" do
    it "assigns the requested malariapreventationreport as @malariapreventationreport" do
      malariapreventationreport = Malariapreventationreport.create! valid_attributes
      get :edit, {:id => malariapreventationreport.to_param}, valid_session
      assigns(:malariapreventationreport).should eq(malariapreventationreport)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Malariapreventationreport" do
        expect {
          post :create, {:malariapreventationreport => valid_attributes}, valid_session
        }.to change(Malariapreventationreport, :count).by(1)
      end

      it "assigns a newly created malariapreventationreport as @malariapreventationreport" do
        post :create, {:malariapreventationreport => valid_attributes}, valid_session
        assigns(:malariapreventationreport).should be_a(Malariapreventationreport)
        assigns(:malariapreventationreport).should be_persisted
      end

      it "redirects to the created malariapreventationreport" do
        post :create, {:malariapreventationreport => valid_attributes}, valid_session
        response.should redirect_to(Malariapreventationreport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved malariapreventationreport as @malariapreventationreport" do
        # Trigger the behavior that occurs when invalid params are submitted
        Malariapreventationreport.any_instance.stub(:save).and_return(false)
        post :create, {:malariapreventationreport => {}}, valid_session
        assigns(:malariapreventationreport).should be_a_new(Malariapreventationreport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Malariapreventationreport.any_instance.stub(:save).and_return(false)
        post :create, {:malariapreventationreport => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested malariapreventationreport" do
        malariapreventationreport = Malariapreventationreport.create! valid_attributes
        # Assuming there are no other malariapreventationreports in the database, this
        # specifies that the Malariapreventationreport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Malariapreventationreport.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => malariapreventationreport.to_param, :malariapreventationreport => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested malariapreventationreport as @malariapreventationreport" do
        malariapreventationreport = Malariapreventationreport.create! valid_attributes
        put :update, {:id => malariapreventationreport.to_param, :malariapreventationreport => valid_attributes}, valid_session
        assigns(:malariapreventationreport).should eq(malariapreventationreport)
      end

      it "redirects to the malariapreventationreport" do
        malariapreventationreport = Malariapreventationreport.create! valid_attributes
        put :update, {:id => malariapreventationreport.to_param, :malariapreventationreport => valid_attributes}, valid_session
        response.should redirect_to(malariapreventationreport)
      end
    end

    describe "with invalid params" do
      it "assigns the malariapreventationreport as @malariapreventationreport" do
        malariapreventationreport = Malariapreventationreport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Malariapreventationreport.any_instance.stub(:save).and_return(false)
        put :update, {:id => malariapreventationreport.to_param, :malariapreventationreport => {}}, valid_session
        assigns(:malariapreventationreport).should eq(malariapreventationreport)
      end

      it "re-renders the 'edit' template" do
        malariapreventationreport = Malariapreventationreport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Malariapreventationreport.any_instance.stub(:save).and_return(false)
        put :update, {:id => malariapreventationreport.to_param, :malariapreventationreport => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested malariapreventationreport" do
      malariapreventationreport = Malariapreventationreport.create! valid_attributes
      expect {
        delete :destroy, {:id => malariapreventationreport.to_param}, valid_session
      }.to change(Malariapreventationreport, :count).by(-1)
    end

    it "redirects to the malariapreventationreports list" do
      malariapreventationreport = Malariapreventationreport.create! valid_attributes
      delete :destroy, {:id => malariapreventationreport.to_param}, valid_session
      response.should redirect_to(malariapreventationreports_url)
    end
  end

end