class PeriodicitiesController < ApplicationController
  # GET /periodicities
  # GET /periodicities.xml
  def index
    @periodicities = Periodicity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @periodicities }
    end
  end

  # GET /periodicities/1
  # GET /periodicities/1.xml
  def show
    @periodicity = Periodicity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @periodicity }
    end
  end

  # GET /periodicities/new
  # GET /periodicities/new.xml
  def new
    @periodicity = Periodicity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @periodicity }
    end
  end

  # GET /periodicities/1/edit
  def edit
    @periodicity = Periodicity.find(params[:id])
  end

  # POST /periodicities
  # POST /periodicities.xml
  def create
    @periodicity = Periodicity.new(params[:periodicity])

    respond_to do |format|
      if @periodicity.save
        flash[:notice] = 'Periodicity was successfully created.'
        format.html { redirect_to(@periodicity) }
        format.xml  { render :xml => @periodicity, :status => :created, :location => @periodicity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @periodicity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /periodicities/1
  # PUT /periodicities/1.xml
  def update
    @periodicity = Periodicity.find(params[:id])

    respond_to do |format|
      if @periodicity.update_attributes(params[:periodicity])
        flash[:notice] = 'Periodicity was successfully updated.'
        format.html { redirect_to(@periodicity) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @periodicity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /periodicities/1
  # DELETE /periodicities/1.xml
  def destroy
    @periodicity = Periodicity.find(params[:id])
    @periodicity.destroy

    respond_to do |format|
      format.html { redirect_to(periodicities_url) }
      format.xml  { head :ok }
    end
  end
end
