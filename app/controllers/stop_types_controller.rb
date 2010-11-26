class StopTypesController < ApplicationController
  # GET /stop_types
  # GET /stop_types.xml
  def index
    @stop_types = StopType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stop_types }
    end
  end

  # GET /stop_types/1
  # GET /stop_types/1.xml
  def show
    @stop_type = StopType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stop_type }
    end
  end

  # GET /stop_types/new
  # GET /stop_types/new.xml
  def new
    @stop_type = StopType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stop_type }
    end
  end

  # GET /stop_types/1/edit
  def edit
    @stop_type = StopType.find(params[:id])
  end

  # POST /stop_types
  # POST /stop_types.xml
  def create
    @stop_type = StopType.new(params[:stop_type])

    respond_to do |format|
      if @stop_type.save
        format.html { redirect_to(@stop_type, :notice => 'Stop type was successfully created.') }
        format.xml  { render :xml => @stop_type, :status => :created, :location => @stop_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stop_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stop_types/1
  # PUT /stop_types/1.xml
  def update
    @stop_type = StopType.find(params[:id])

    respond_to do |format|
      if @stop_type.update_attributes(params[:stop_type])
        format.html { redirect_to(@stop_type, :notice => 'Stop type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stop_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stop_types/1
  # DELETE /stop_types/1.xml
  def destroy
    @stop_type = StopType.find(params[:id])
    @stop_type.destroy

    respond_to do |format|
      format.html { redirect_to(stop_types_url) }
      format.xml  { head :ok }
    end
  end
end
