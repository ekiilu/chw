class CommunityHealthWorkersController < ApplicationController
  # GET /community_health_workers
  # GET /community_health_workers.json
  def index
    @community_health_workers = CommunityHealthWorker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @community_health_workers }
    end
  end

  # GET /community_health_workers/1
  # GET /community_health_workers/1.json
  def show
    @community_health_worker = CommunityHealthWorker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @community_health_worker }
    end
  end

  # GET /community_health_workers/new
  # GET /community_health_workers/new.json
  def new
    @community_health_worker = CommunityHealthWorker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @community_health_worker }
    end
  end

  # GET /community_health_workers/1/edit
  def edit
    @community_health_worker = CommunityHealthWorker.find(params[:id])
  end

  # POST /community_health_workers
  # POST /community_health_workers.json
  def create
    @community_health_worker = CommunityHealthWorker.new(params[:community_health_worker])

    respond_to do |format|
      if @community_health_worker.save
        format.html { redirect_to @community_health_worker, notice: 'Community health worker was successfully created.' }
        format.json { render json: @community_health_worker, status: :created, location: @community_health_worker }
      else
        format.html { render action: "new" }
        format.json { render json: @community_health_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /community_health_workers/1
  # PUT /community_health_workers/1.json
  def update
    @community_health_worker = CommunityHealthWorker.find(params[:id])

    respond_to do |format|
      if @community_health_worker.update_attributes(params[:community_health_worker])
        format.html { redirect_to @community_health_worker, notice: 'Community health worker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @community_health_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_health_workers/1
  # DELETE /community_health_workers/1.json
  def destroy
    @community_health_worker = CommunityHealthWorker.find(params[:id])
    @community_health_worker.destroy

    respond_to do |format|
      format.html { redirect_to community_health_workers_url }
      format.json { head :no_content }
    end
  end
end
