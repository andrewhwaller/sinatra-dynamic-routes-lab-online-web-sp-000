require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "Are we in the Red Room, #{params[:name].reverse}?"
  end

  get '/square/:number' do
    "Let's rock: #{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @num.times do
      "#{params[:phrase]}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end

  get '/:operation/:number1/:number2' do

  end

end
