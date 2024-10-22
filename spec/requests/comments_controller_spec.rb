require 'rails_helper'

RSpec.describe CommentsController, type: :request do
  let(:project) { create(:project) }
  let(:comment) { create(:comment, commentable: project) }

  describe "GET /new" do
    it "returns http success" do
      get new_comment_path(comment: { commentable_id: project.id, commentable_type: "Project" })
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "creates a new comment" do
      expect {
        post comments_path, params: { comment: { author: "John Doe", body: "This is a comment", commentable_id: project.id, commentable_type: "Project" } }
      }.to change(Comment, :count).by(1)
      expect(response).to redirect_to(assigns(:comment).commentable)
      follow_redirect!
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_comment_path(comment)
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /update" do
    it "updates the comment" do
      patch comment_path(comment), params: { comment: { body: "Updated comment" } }
      expect(response).to redirect_to(comment.commentable)
      follow_redirect!
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /destroy" do
    it "deletes the comment" do
      comment # create the comment before the expect block
      expect {
        delete comment_path(comment)
      }.to change(Comment, :count).by(-1)
      expect(response).to redirect_to(comment.commentable)
    end
  end
end
