get '/' do
  # Look in app/views/index.erb
  # @errors = errors[:attribute] ||= ""
  # puts request.inspect
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
  # redirect to appropriate "long" URL
end