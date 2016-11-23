class ReferendasController < ApplicationController
  before_action :set_referenda, only: [:show, :edit, :update, :destroy]

  # GET /referendas
  # GET /referendas.json
  def index
    @referendas = Referenda.all
  end

  # GET /referendas/1
  # GET /referendas/1.json
  def show
  end

  # GET /referendas/new
  def new
    @referenda = Referenda.new
  end

  # GET /referendas/1/edit
  def edit
  end

  # POST /referendas
  # POST /referendas.json
  def create
    @referenda = Referenda.new(referenda_params)

    respond_to do |format|
      if @referenda.save
        format.html { redirect_to @referenda, notice: 'Referenda was successfully created.' }
        format.json { render :show, status: :created, location: @referenda }
      else
        format.html { render :new }
        format.json { render json: @referenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referendas/1
  # PATCH/PUT /referendas/1.json
  def update
    respond_to do |format|
      if @referenda.update(referenda_params)
        format.html { redirect_to @referenda, notice: 'Referenda was successfully updated.' }
        format.json { render :show, status: :ok, location: @referenda }
      else
        format.html { render :edit }
        format.json { render json: @referenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referendas/1
  # DELETE /referendas/1.json
  def destroy
    @referenda.destroy
    respond_to do |format|
      format.html { redirect_to referendas_url, notice: 'Referenda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referenda
      @referenda = Referenda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referenda_params
      params.require(:referenda).permit(:referenda_title, :referenda_desc, :referenda_type, :ballot_id)
    end
end
