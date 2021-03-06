class EnquiriesController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!, :except => [:new]
  # GET /enquiries
  # GET /enquiries.xml
  def index

    if current_user.admin?
      @enquiries = Enquiry.all
    else
      @enquiries = Enquiry.by_user(current_user)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enquiries }
    end
  end

  # GET /enquiries/1
  # GET /enquiries/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enquiry }
    end
  end

  # GET /enquiries/new
  # GET /enquiries/new.xml
  def new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enquiry }
    end
  end

  # GET /enquiries/1/edit
  def edit
  end

  # POST /enquiries
  # POST /enquiries.xml
  def create

    respond_to do |format|
      if @enquiry.save
        format.html { redirect_to(root_path, :notice => 'Enquiry was successfully created.') }
        format.xml  { render :xml => @enquiry, :status => :created, :location => @enquiry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enquiry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enquiries/1
  # PUT /enquiries/1.xml
  def update

    respond_to do |format|
      if @enquiry.update_attributes(params[:enquiry])
        format.html { redirect_to(@enquiry, :notice => 'Enquiry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enquiry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enquiries/1
  # DELETE /enquiries/1.xml
  def destroy
    @enquiry.destroy

    respond_to do |format|
      format.html { redirect_to(enquiries_url) }
      format.xml  { head :ok }
    end
  end
end
