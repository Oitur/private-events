require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET new" do
    subject { get :new }
    it "gets new" do
      expect(subject).to render_template(:new)
    end
  end
  describe "POST new" do
    y = User.count
    it "creates a valid user" do
      post :create, params: { user: {name: 'Bob'} }
      x = User.last
      expect(x.name).to eq('Bob')
      expect(y).to_not eq(User.count)
    end
    it "rejects a non valid user" do
      post :create, params: { user: {name: ''} }
      expect(y).to eq(User.count)
    end
  end
  describe "Show user" do
    it "show user page" do
      post :create, params: { user: {name: 'Bob'} }
      x = User.last
      get :show, params: { id: x.id }
      expect(response).to render_template(:show)
    end
  end
end
