class PaginationHelper

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end
  
  def item_count
    @collection.size
  end
  
  def page_count
    (item_count.to_f / @items_per_page).ceil
  end
  
  def page_item_count(page_index)
    return -1 if page_index > page_count - 1
    if page_index == page_count - 1
      item_count % @items_per_page
    else
      @items_per_page
    end
  end
  
  def page_index(item_index)
    return -1 if item_index >= item_count || item_index < 1
    (item_index.to_f / @items_per_page).ceil - 1
  end
end
