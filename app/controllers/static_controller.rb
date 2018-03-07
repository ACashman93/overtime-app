class StaticController < ApplicationController
  def homepage
    @pending_approvals = Post.where(status: 'pending')
    @recent_audit_items = AuditLog.last(9)
  end
end