require 'easy_cache'

c = EasyCache.new "path"
c.set :a, :b, 1
puts c.get :a, :b
