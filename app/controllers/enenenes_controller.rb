class EnenenesController < ApplicationController
  # GET /enenenes
  # GET /enenenes.json
  def index
    @enenenes = Enenene.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enenenes }
    end
  end

  # GET /enenenes/1
  # GET /enenenes/1.json
  def show
    @enenene = Enenene.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enenene }
    end
  end

  # GET /enenenes/new
  # GET /enenenes/new.json
  def new
    @enenene = Enenene.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enenene }
    end
  end

  # GET /enenenes/1/edit
  def edit
    @enenene = Enenene.find(params[:id])
  end

  # POST /enenenes
  # POST /enenenes.json
  def create
    @enenene = Enenene.new(params[:enenene])

    respond_to do |format|
      if @enenene.save
        format.html { redirect_to @enenene, notice: 'Enenene was successfully created.' }
        format.json { render json: @enenene, status: :created, location: @enenene }
      else
        format.html { render action: "new" }
        format.json { render json: @enenene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enenenes/1
  # PUT /enenenes/1.json
  def update
    @enenene = Enenene.find(params[:id])

    respond_to do |format|
      if @enenene.update_attributes(params[:enenene])
        format.html { redirect_to @enenene, notice: 'Enenene was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @enenene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enenenes/1
  # DELETE /enenenes/1.json
  def destroy
    @enenene = Enenene.find(params[:id])
    @enenene.destroy

    respond_to do |format|
      format.html { redirect_to enenenes_url }
      format.json { head :ok }
    end
  end
end
