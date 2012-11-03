class StatusvaluesController < ApplicationController
  # GET /statusvalues
  # GET /statusvalues.json
  def index
    @statusvalues = Statusvalue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @statusvalues }
    end
  end

  # GET /statusvalues/1
  # GET /statusvalues/1.json
  def show
    @statusvalue = Statusvalue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @statusvalue }
    end
  end

  # GET /statusvalues/new
  # GET /statusvalues/new.json
  def new
    @statusvalue = Statusvalue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @statusvalue }
    end
  end

  # GET /statusvalues/1/edit
  def edit
    @statusvalue = Statusvalue.find(params[:id])
  end

  # POST /statusvalues
  # POST /statusvalues.json
  def create
    @statusvalue = Statusvalue.new(params[:statusvalue])

    respond_to do |format|
      if @statusvalue.save
        format.html { redirect_to @statusvalue, notice: 'Statusvalue was successfully created.' }
        format.json { render json: @statusvalue, status: :created, location: @statusvalue }
      else
        format.html { render action: "new" }
        format.json { render json: @statusvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /statusvalues/1
  # PUT /statusvalues/1.json
  def update
    @statusvalue = Statusvalue.find(params[:id])

    respond_to do |format|
      if @statusvalue.update_attributes(params[:statusvalue])
        format.html { redirect_to @statusvalue, notice: 'Statusvalue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @statusvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statusvalues/1
  # DELETE /statusvalues/1.json
  def destroy
    @statusvalue = Statusvalue.find(params[:id])
    @statusvalue.destroy

    respond_to do |format|
      format.html { redirect_to statusvalues_url }
      format.json { head :no_content }
    end
  end
end
