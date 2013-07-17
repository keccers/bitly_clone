get '/' do
  # Look in app/views/index.erb
  puts request.inspect
  erb :index
end

post '/urls' do
  @url = Url.new(params[url])
  @url.valid?
  @errors = errors[:attribute]
end

# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
end