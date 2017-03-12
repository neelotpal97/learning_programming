require 'sinatra'
require 'sinatra/reloader'

get '/' do
	text = params["text"]
	key = params["key"]
	#encrypted_message = caesar_cipher(text,key.to_i)
	encrypted_message = "hi!"
	erb :index, :locals => {:encrypted_message => encrypted_message}
end

def caesar_cipher(data,key)
  encrypted_message = ""
  data.each_byte do |i|
    if (97..122).include?(i)
       encrypted_message += (((i - 97 + key) % 26) + 97).chr
    elsif (65..90).include?(i)
       encrypted_message += (((i - 65 + key)%26)+65).chr
    else
      encrypted_message += i.chr
    end
  end
return encrypted_message
end