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

describe MalariagenderreportsController do

  # This should return the minimal set of attributes required to create a valid
  # Malariagenderreport. As you add validations to Malariagenderreport, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MalariagenderreportsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all malariagenderreports as @malariagenderreports" do
      malariagenderreport = Malariagenderreport.create! valid_attributes
      get :index, {}, valid_session
      assigns(:malariagenderreports).should eq([malariagenderreport])
    end
  end

  describe "GET show" do
    it "assigns the requested malariagenderreport as @malariagenderreport" do
      malariagenderreport = Malariagenderreport.create! valid_attributes
      get :show, {:id => malariagenderreport.to_param}, valid_session
      assigns(:malariagenderreport).should eq(malariagenderreport)
    end
  end

  describe "GET new" do
    it "assigns a new malariagenderreport as @malariagenderreport" do
      get :new, {}, valid_session
      assigns(:malariagenderreport).should be_a_new(Malariagenderreport)
    end
  end

  describe "GET edit" do
    it "assigns the requested malariagenderreport as @malariagenderreport" do
      malariagenderreport = Malariagenderreport.create! valid_attributes
      get :edit, {:id => malariagenderreport.to_param}, valid_session
      assigns(:malariagenderreport).should eq(malariagenderreport)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Malariagenderreport" do
        expect {
          post :create, {:malariagenderreport => valid_attributes}, valid_session
        }.to change(Malariagenderreport, :count).by(1)
      end

      it "assigns a newly created malariagenderreport as @malariagenderreport" do
        post :create, {:malariagenderreport => valid_attributes}, valid_session
        assigns(:malariagenderreport).should be_a(Malariagenderreport)
        assigns(:malariagenderreport).should be_persisted
      end

      it "redirects to the created malariagenderreport" do
        post :create, {:malariagenderreport => valid_attributes}, valid_session
        response.should redirect_to(Malariagenderreport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved malariagenderreport as @malariagenderreport" do
        # Trigger the behavior that occurs when invalid params are submitted
        Malariagenderreport.any_instance.stub(:save).and_return(false)
        post :create, {:malariagenderreport => {}}, valid_session
        assigns(:malariagenderreport).should be_a_new(Malariagenderreport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Malariagenderreport.any_instance.stub(:save).and_return(false)
        post :create, {:malariagenderreport => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested malariagenderreport" do
        malariagenderreport = Malariagenderreport.create! valid_attributes
        # Assuming there are no other malariagenderreports in the database, this
        # specifies that the Malariagenderreport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Malariagenderreport.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => malariagenderreport.to_param, :malariagenderreport => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested malariagenderreport as @malariagenderreport" do
        malariagenderreport = Malariagenderreport.create! valid_attributes
        put :update, {:id => malariagenderreport.to_param, :malariagenderreport => valid_attributes}, valid_session
        assigns(:malariagenderreport).should eq(malariagenderreport)
      end

      it "redirects to the malariagenderreport" do
        malariagenderreport = Malariagenderreport.create! valid_attributes
        put :update, {:id => malariagenderreport.to_param, :malariagenderreport => valid_attributes}, valid_session
        response.should redirect_to(malariagenderreport)
      end
    end

    describe "with invalid params" do
      it "assigns the malariagenderreport as @malariagenderreport" do
        malariagenderreport = Malariagenderreport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Malariagenderreport.any_instance.stub(:save).and_return(false)
        put :update, {:id => malariagenderreport.to_param, :malariagenderreport => {}}, valid_session
        assigns(:malariagenderreport).should eq(malariagenderreport)
      end

      it "re-renders the 'edit' template" do
        malariagenderreport = Malariagenderreport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Malariagenderreport.any_instance.stub(:save).and_return(false)
        put :update, {:id => malariagenderreport.to_param, :malariagenderreport => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested malariagenderreport" do
      malariagenderreport = Malariagenderreport.create! valid_attributes
      expect {
        delete :destroy, {:id => malariagenderreport.to_param}, valid_session
      }.to change(Malariagenderreport, :count).by(-1)
    end

    it "redirects to the malariagenderreports list" do
      malariagenderreport = Malariagenderreport.create! valid_attributes
      delete :destroy, {:id => malariagenderreport.to_param}, valid_session
      response.should redirect_to(malariagenderreports_url)
    end
  end

end
