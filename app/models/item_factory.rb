class ItemFactory

  def self.build(params)
    item = Item.new

    item.name = params[:name]
    item.serial = params[:serial]
    item.year = params[:year]
    item.purchase_date = DateTime.strptime(params[:purchase_date], '%m/%d/%Y')
    item.purchase_price = params[:purchase_price]

    return item
  end

end