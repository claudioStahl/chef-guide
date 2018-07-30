require 'pry'

binding.pry

file '/tmp/motd' do
  content 'hello world 2'
end
