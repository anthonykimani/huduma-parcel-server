class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # user routes
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json
  end

  post "/users/" do
    users = User.create(firstname: params[:firstname], lastname: params[:lastname], email: params[:email], phone_number: params[:phone_number], password: params[:password], location: params[:location])
    users.to_json
  end

  patch "/users/:id" do
    users = User.find_by(params[:id])
    users.update(firstname: params[:firstname], lastname: params[:lastname], email: params[:email], phone_number: params[:phone_number], password: params[:password], location: params[:location])
    users.to_json
  end

  delete "/users/:id" do
    users = User.find_by(params[:id])
    users.destroy
    users.to_json
  end

  #parcels
  get "/parcels" do
    parcels = Parcel.all
    parcels.to_json
  end

  get "/parcels/:id" do
    parcels = Parcel.find(params[:id])
    parcels.to_json
  end

  post "/parcels/" do
    parcels = Parcel.create(category: params[:category], weight: params[:weight], price: params[:price], user_id: params[:user_id], location_id: params[:location_id], parcel_destination: params[:parcel_destination], delivery_time: params[:delivery_time])
    parcels.to_json
  end

  patch "/parcels/:id" do
    parcels = Parcel.find_by(params[:id])
    parcels.update(category: params[:category], weight: params[:weight], price: params[:price], user_id: params[:user_id], location_id: params[:location_id], parcel_destination: params[:parcel_destination], delivery_time: params[:delivery_time])
    parcels.to_json
  end

  delete "/parcels/:id" do
    parcels = Parcel.find_by(params[:id])
    parcels.destroy
    parcels.to_json
  end

  #locations routes 
  get "/locations" do
    locations = Location.all
    locations.to_json
  end

  get "/locations/:id" do
    locations = Location.find(params[:id])
    locations.to_json
  end

  post "/locations/" do
    locations = Location.create(name: params[:name],address:params[:address])
    locations.to_json
  end

  patch "/locations/:id" do
    locations = Location.find_by(params[:id])
    locations.update(name: params[:name],address:params[:address])
    locations.to_json
  end

  delete "/locations/:id" do
    locations = Location.find_by(params[:id])
    locations.destroy
    locations.to_json
  end
end
