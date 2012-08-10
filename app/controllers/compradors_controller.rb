class CompradorsController < ApplicationController
  # GET /compradors
  # GET /compradors.json
  def index
    @compradors = Comprador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compradors }
    end
  end

  # GET /compradors/1
  # GET /compradors/1.json
  def show
    @comprador = Comprador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comprador }
    end
  end

  # GET /compradors/new
  # GET /compradors/new.json
  def new
    @comprador = Comprador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comprador }
    end
  end

  # GET /compradors/1/edit
  def edit
    @comprador = Comprador.find(params[:id])
  end

  # POST /compradors
  # POST /compradors.json
  def create
    @comprador = Comprador.new(params[:comprador])

    respond_to do |format|
      if @comprador.save
        format.html { redirect_to @comprador, notice: 'Comprador was successfully created.' }
        format.json { render json: @comprador, status: :created, location: @comprador }
      else
        format.html { render action: "new" }
        format.json { render json: @comprador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compradors/1
  # PUT /compradors/1.json
  def update
    @comprador = Comprador.find(params[:id])

    respond_to do |format|
      if @comprador.update_attributes(params[:comprador])
        format.html { redirect_to @comprador, notice: 'Comprador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comprador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compradors/1
  # DELETE /compradors/1.json
  def destroy
    @comprador = Comprador.find(params[:id])
    @comprador.destroy

    respond_to do |format|
      format.html { redirect_to compradors_url }
      format.json { head :no_content }
    end
  end
end
