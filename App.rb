require 'sinatra'

get '/' do
  erb :get_name
end

post '/input' do
  @name = params[:user_name]
  erb :get_age, :locals => {:name => @name}
end

post '/age' do
  @age = params[:user_age]
  erb :get_fav_nums, :locals => {:age => @age, :name => @name}
end

post '/fav_nums' do
  fav_nums1 = params[:user_fav_nums1]
  fav_nums2 = params[:user_fav_nums2]
  fav_nums3 = params[:user_fav_nums3]
  sum = fav_nums1.to_i + fav_nums2.to_i + fav_nums3.to_i
  if sum < @age
    erb :sum_numbers, :locals => {:sum => sum, :fav1 => fav_nums1, :fav2 => fav_nums2, :fav3 => fav_nums3, result => "sum is less than age"}
  else
    erb :sum_numbers, :locals => {:sum => sum, :fav1 => fav_nums1, :fav2 => fav_nums2, :fav3 => fav_nums3, result => "sum is more than age"}
  end
end