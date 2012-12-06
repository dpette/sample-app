class NewsfeedsController < ApplicationController
  # GET /news
  # GET /news.json
  def index
    @newsfeed = Newsfeed.new
    @newsfeeds = Newsfeed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end
  end

  # # GET /news/1/edit
  # def edit
    # @news = New.find(params[:id])
  # end

  # POST /news
  # POST /news.json
  def create
    @newsfeed = Newsfeed.new(params[:newsfeed])
    @saved = @newsfeed.save
    respond_to do |format|
      format.html { redirect_to @newsfeeds, notice: 'New was successfully created.' }
      format.js
    end
  end

  # # PUT /news/1
  # # PUT /news/1.json
  # def update
    # @news = New.find(params[:id])
# 
    # respond_to do |format|
      # if @news.update_attributes(params[:news])
        # format.html { redirect_to @news, notice: 'New was successfully updated.' }
        # format.json { head :no_content }
      # else
        # format.html { render action: "edit" }
        # format.json { render json: @news.errors, status: :unprocessable_entity }
      # end
    # end
  # end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @id=params[:id]
    @newsfeeds = Newsfeed.find(@id)
    @newsfeeds.destroy

    respond_to do |format|
      format.html { redirect_to news_url }
      format.js 
    end
  end
end
