class StaticController < ApplicationController
  def homepage
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.pending
      @recent_audit_items = AuditLog.last(9)
    else
      # TODO Fix scope
      @pending_audit_confirmations = current_user.audit_logs.pending.by_start_date
    end
  end
end