class DinnersController < ApplicationController
  # GET /dinners
  # GET /dinners.json
  def index
    @dinners = Dinner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dinners }
    end
  end

  # GET /dinners/1
  # GET /dinners/1.json
  def show
    @dinner = Dinner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dinner }
    end
  end

  # GET /dinners/new
  # GET /dinners/new.json
  def new
    @dinner = Dinner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dinner }
    end
  end

  # GET /dinners/1/edit
  def edit
    @dinner = Dinner.find(params[:id])
  end

  # POST /dinners
  # POST /dinners.json
  def create
    @dinner = Dinner.new(params[:dinner])

    respond_to do |format|
      if @dinner.save
        format.html { redirect_to @dinner, :notice => 'Dinner was successfully created.' }
        format.json { render :json => @dinner, :status => :created, :location => @dinner }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dinner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dinners/1
  # PUT /dinners/1.json
  def update
    @dinner = Dinner.find(params[:id])

    respond_to do |format|
      if @dinner.update_attributes(params[:dinner])
        format.html { redirect_to @dinner, :notice => 'Dinner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dinner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dinners/1
  # DELETE /dinners/1.json
  def destroy
    @dinner = Dinner.find(params[:id])
    @dinner.destroy

    respond_to do |format|
      format.html { redirect_to dinners_url }
      format.json { head :no_content }
    end
  end
end
