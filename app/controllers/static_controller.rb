class StaticController < ApplicationController
  def homepage
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.pending
      @recent_audit_items = AuditLog.last(9)
    else

    end
  end
end