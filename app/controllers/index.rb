get '/' do
  # Look in app/views/index.erb
  # @errors = errors[:attribute] ||= ""
  erb :index
end

post '/urls' do
  @url = Url.new(params[:url])
  if @url.valid?
    @url.save
    @message = @url.short 
  else
    # @errors = errors[:attribute]
  end
  erb :index
end

# e.g., /q6bda
get '/:short_url' do
  @url = Url.find_by_short(params[:short_url])
  new_click_count = @url.click_count + 1
  Url.update(@url.id, click_count: new_click_count)
  if @url.long.include?('http://') || @url.long.include?('https://')
    redirect "#{@url.long}/"
  else
    redirect "http://#{@url.long}/"
  end
end