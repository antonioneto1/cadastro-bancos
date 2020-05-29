module ApplicationHelper
  def locale
    I18n.locale == :en ? "Ingês" : "Portugês"
  end

  def date_br(date_us)
  date_us.strftime("%d/%m/%Y")
  end
end