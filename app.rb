require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name]
    @reversename = @reversename.reverse
    "#{@reversename}"

  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get "/say/:number/:phrase" do
   @number = params[:number].to_i
   @phrase =  params[:phrase]
   "#{@number}*#{@phrase}"
  end


end
