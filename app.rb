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
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

  end

end
