module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Elena Esposito"
  end
  # Highlights the selected tab on the nav-bar.
  def is_active(action)
    params[:action] == action ? "active" : nil
  end
end
