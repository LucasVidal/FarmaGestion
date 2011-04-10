class RawMaterialsController < ApplicationController
  # GET /raw_materials
  # GET /raw_materials.xml
  def index
    @raw_materials = RawMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @raw_materials }
    end
  end

  # GET /raw_materials/1
  # GET /raw_materials/1.xml
  def show
    @raw_material = RawMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @raw_material }
    end
  end

  # GET /raw_materials/new
  # GET /raw_materials/new.xml
  def new
    @raw_material = RawMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @raw_material }
    end
  end

  # GET /raw_materials/1/edit
  def edit
    @raw_material = RawMaterial.find(params[:id])
  end

  # POST /raw_materials
  # POST /raw_materials.xml
  def create
    @raw_material = RawMaterial.new(params[:raw_material])

    respond_to do |format|
      if @raw_material.save
        flash[:notice] = 'RawMaterial was successfully created.'
        format.html { redirect_to(:action=>:index) }
        format.xml  { render :xml => @raw_material, :status => :created, :location => @raw_material }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @raw_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /raw_materials/1
  # PUT /raw_materials/1.xml
  def update
    @raw_material = RawMaterial.find(params[:id])

    respond_to do |format|
      if @raw_material.update_attributes(params[:raw_material])
        flash[:notice] = 'RawMaterial was successfully updated.'
        format.html { redirect_to(:action=>:index) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @raw_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_materials/1
  # DELETE /raw_materials/1.xml
  def destroy
    @raw_material = RawMaterial.find(params[:id])
    @raw_material.destroy

    respond_to do |format|
      format.html { redirect_to(raw_materials_url) }
      format.xml  { head :ok }
    end
  end
end