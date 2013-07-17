class Url < ActiveRecord::Base
  validates :long, format: {with: /^(http|https):\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?$/ix, message: "Not a valid URL."}
  
end
