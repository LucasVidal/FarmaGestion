class InventoryTemplatesController < ApplicationController
  
  def add_element
     @inventory_template = InventoryTemplate.find(params[:id])
     @inventory_template.elements << Element.find(params[:element_id])
    respond_to do |format|
      if  @inventory_template.save
#        flash[:notice] = 'Inventory was successfully updated.'
        format.html { redirect_to(:action=>:edit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml =>  @inventory_template.errors, :status => :unprocessable_entity }
      end
    end
  end
  def remove_element
    
     @inventory_template = InventoryTemplate.find(params[:id])
     @inventory_template.elements.delete(Element.find(params[:element_id]))
    
    respond_to do |format|
      if  @inventory_template.save
 #       flash[:notice] = 'Inventory was successfully updated.'
        format.html { redirect_to(:action=>:edit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml =>  @inventory_template.errors, :status => :unprocessable_entity }
      end
    end
  end  
  

  # GET /inventories
  # GET /inventories.xml
  def index
    @inventory_templates = InventoryTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventory_templates }
    end
  end

  # GET /inventories/1
  # GET /inventories/1.xml
  def show
     @inventory_template = InventoryTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml =>  @inventory_template }
    end
  end

  # GET /inventories/new
  # GET /inventories/new.xml
  def new
     @inventory_template = InventoryTemplate.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml =>  @inventory_template }
    end
  end

  # GET /inventories/1/edit
  def edit
     @inventory_template = InventoryTemplate.find(params[:id])
    @raw_materials = RawMaterial.raw_materials_not_included_in( @inventory_template)
    @ingredients = Ingredient.ingredients_not_included_in( @inventory_template)
  end

  # POST /inventories
  # POST /inventories.xml
  def create
     @inventory_template = InventoryTemplate.new(params[:inventory_template])

    respond_to do |format|
      if  @inventory_template.save
        flash[:notice] = 'Inventory was successfully created.'
        format.html { redirect_to(:action=>:index) }
        format.xml  { render :xml =>  @inventory_template, :status => :created, :location =>  @inventory_template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml =>  @inventory_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inventories/1
  # PUT /inventories/1.xml
  def update
     @inventory_template = InventoryTemplate.find(params[:id])

    respond_to do |format|
      if  @inventory_template.update_attributes(params[:inventory])
        flash[:notice] = 'Inventory was successfully updated.'
        format.html { redirect_to(:action=>:index) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml =>  @inventory_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.xml
  def destroy
     @inventory_template = InventoryTemplate.find(params[:id])
     @inventory_template.destroy

    respond_to do |format|
      format.html { redirect_to(inventories_url) }
      format.xml  { head :ok }
    end
  end
end
