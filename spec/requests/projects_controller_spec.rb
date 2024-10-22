require 'rails_helper'

RSpec.describe ProjectsController, type: :request do
  let(:project) { create(:project) }

  describe "GET /index" do
    it "returns http success" do
      get projects_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get project_path(project)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_project_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "creates a project and returns http redirect" do
      post projects_path, params: { project: attributes_for(:project) }
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_project_path(project)
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /update" do
    it "updates the project and returns http redirect" do
      patch project_path(project), params: { project: { name: "Updated Name" } }
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "DELETE /destroy" do
    let!(:project) { create(:project) }
    it "destroys the project and returns http redirect" do
      delete project_path(project)
      expect(response).to have_http_status(:redirect)
    end
  end
end
