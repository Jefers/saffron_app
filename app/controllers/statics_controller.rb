class StaticsController < ApplicationController

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
    # render :layout => 'two_column_page_page_layout'
  end

  def about
    @title = "About"
    # render :layout => 'two_column_page_layout'
  end

  def help
    @title = "Help"
    # render :layout => 'two_column_page_layout'
  end

  def disclaimer
    @title = "Disclaimer"
    # render :layout => 'two_column_page_layout'
  end

  def privacy
    @title = "Privacy"
    # render :layout => 'two_column_page_layout'
  end

  def security
    @title = "Security"
    # render :layout => 'two_column_page_layout'
  end

  def fun
    @title = "Fun"
    # render :layout => 'full_page_layout'
  end

  def news
    @title = "News"
  end

end
