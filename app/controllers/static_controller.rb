class StaticController < ApplicationController
  def homepage
    @pending_approvals = Post.where(status: 'pending')
  end
end