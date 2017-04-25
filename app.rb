require('rspec')
require('./lib/tasks')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

# get('/') do
#   erb(:form)
# end
#
# get('/title') do#place form 'action' in the get parentheses
#  @title = params.fetch('input1').title_case() #from the name attribute in the input tag on the form
#  erb(:title)#this is the page where you want your method to display
# end
