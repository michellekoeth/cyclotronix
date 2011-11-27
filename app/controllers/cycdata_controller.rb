class CycdataController < ApplicationController
  # GET /cycdata
  # GET /cycdata.json
  def index
    @cycdata = Cycdatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cycdata }
    end
  end

  # GET /cycdata/1
  # GET /cycdata/1.json
  def show
    @cycdatum = Cycdatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cycdatum }
    end
  end

  # GET /cycdata/new
  # GET /cycdata/new.json
  def new
    @cycdatum = Cycdatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cycdatum }
    end
  end

  # GET /cycdata/1/edit
  def edit
    @cycdatum = Cycdatum.find(params[:id])
  end

  # POST /cycdata
  # POST /cycdata.json
  def create
    @cycdatum = Cycdatum.new(params[:cycdatum])

    respond_to do |format|
      if @cycdatum.save
        format.html { redirect_to @cycdatum, notice: 'Cycdatum was successfully created.' }
        format.json { render json: @cycdatum, status: :created, location: @cycdatum }
      else
        format.html { render action: "new" }
        format.json { render json: @cycdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cycdata/1
  # PUT /cycdata/1.json
  def update
    @cycdatum = Cycdatum.find(params[:id])

    respond_to do |format|
      if @cycdatum.update_attributes(params[:cycdatum])
        format.html { redirect_to @cycdatum, notice: 'Cycdatum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cycdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cycdata/1
  # DELETE /cycdata/1.json
  def destroy
    @cycdatum = Cycdatum.find(params[:id])
    @cycdatum.destroy

    respond_to do |format|
      format.html { redirect_to cycdata_url }
      format.json { head :ok }
    end
  end
end
