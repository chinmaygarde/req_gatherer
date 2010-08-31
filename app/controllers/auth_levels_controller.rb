class AuthLevelsController < ApplicationController
  # GET /auth_levels
  # GET /auth_levels.xml
  def index
    @auth_levels = AuthLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auth_levels }
    end
  end

  # GET /auth_levels/1
  # GET /auth_levels/1.xml
  def show
    @auth_level = AuthLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @auth_level }
    end
  end

  # GET /auth_levels/new
  # GET /auth_levels/new.xml
  def new
    @auth_level = AuthLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @auth_level }
    end
  end

  # GET /auth_levels/1/edit
  def edit
    @auth_level = AuthLevel.find(params[:id])
  end

  # POST /auth_levels
  # POST /auth_levels.xml
  def create
    @auth_level = AuthLevel.new(params[:auth_level])

    respond_to do |format|
      if @auth_level.save
        format.html { redirect_to(@auth_level, :notice => 'Auth level was successfully created.') }
        format.xml  { render :xml => @auth_level, :status => :created, :location => @auth_level }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @auth_level.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /auth_levels/1
  # PUT /auth_levels/1.xml
  def update
    @auth_level = AuthLevel.find(params[:id])

    respond_to do |format|
      if @auth_level.update_attributes(params[:auth_level])
        format.html { redirect_to(@auth_level, :notice => 'Auth level was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @auth_level.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_levels/1
  # DELETE /auth_levels/1.xml
  def destroy
    @auth_level = AuthLevel.find(params[:id])
    @auth_level.destroy

    respond_to do |format|
      format.html { redirect_to(auth_levels_url) }
      format.xml  { head :ok }
    end
  end
end
