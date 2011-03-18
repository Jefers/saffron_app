module ApplicationHelper
    def hidden_div_if(condition, attributes = {}, &block)
      if condition
        attributes["style"] = "display: none"
      end
      content_tag("div", attributes, &block)
    end

    def sortable(column, title = nil)
      title ||= column.titleize
      css_class = column == sort_column ? "current #{sort_direction}" : nil
      direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
      link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
    end

    def logo
      logo = image_tag("logo.png", :alt => "SaffronHosts", :id => "logo")
    end

    # Return a title on a per-page basis.
    def title
      base_title = "SaffronHosts"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
    end

    def quid(price)
      number_to_currency(price, :unit => "&pound;")
    end

    # Format a float as £123.45
    def format_sterling(amt)
      sprintf("&pound;%0.2f", amt)
    end

    # Format a date as dd/mm/yy
    def format_date(date)
      if date != nil
        date.strftime("%d-%m-%Y")
      end
    end

    def datedmy(date)
      date.strftime(date, '%d/%m/%Y')
    end

    def link_to_show(record)
      link_to image_tag("icon_view.gif", :title=>"view", :mouseover => "/images/icon_view.png"), :action => "show", :id => record.id
    end

    def link_to_edit(record)
      link_to image_tag("icon_edit.gif", :title=>"edit", :mouseover => "/images/icon_edit.png"), :action => "edit", :id => record.id
    end

  # :TODO must be able to come up with better than this? when you do remove the link_to_delete method
    def edit_img()
      image_tag("icon_edit.gif", :title=>"edit", :mouseover => "/images/icon_edit.png")
    end

    def destroy_img()
      image_tag("icon_trash.gif", :title=>"delete", :mouseover => "/images/icon_trash.png")
    end


    def link_to_delete(record)
      link_to image_tag("icon_trash.gif", :title=>"delete", :mouseover => "/images/icon_trash.png"), { :action => "destroy", :id => record.id }, :confirm => "Are you sure you want to delete this?"
    end
end
