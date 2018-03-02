module PostsHelper
  def status_label_helper status
    status_span_generator status
  end

  private

    def status_span_generator status
      case status
      when "pending"
        content_tag(:span, status.titleize, class: 'label label-primary')
      when "approved"
        content_tag(:span, status.titleize, class: 'label label-success')
      when "rejected"
        content_tag(:span, status.titleize, class: 'label label-danger')
      end
    end
end
