class InvoiceSearch

  # Attribute Reader
  attr_reader :date_from, :date_to


  def initialize(params)
    params ||= {}
    @date_from = Date.strptime(params[:date_from]).beginning_of_day rescue 7.days.ago
    @date_to = Date.strptime(params[:date_to]).end_of_day rescue 0.days.ago.end_of_day
  end

  def get_date_from_string
    @date_from.strftime ("%Y/%m/%d")
  end

  def get_date_to_string
    @date_to.strftime ("%Y/%m/%d")
  end

  def scope
    Invoice.where(date: @date_from..@date_to)
  end
end
