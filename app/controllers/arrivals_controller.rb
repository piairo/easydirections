require 'twilio-ruby'

class ArrivalsController < ApplicationController

  def show
    @flat = Flat.find(1)
    arrivals = Arrival.where(flat_id: 1)
    selectarrival = arrivals.where(number: params[:number])
    @arrival = selectarrival[0]

  end

  def send_sms
  @location = request.location.city
  # put your own credentials here
  account_sid = 'ACe8db3bae886de70e3b2a089489949a30'
  auth_token = 'da03289f9981a213e3c430beea95ad13'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.api.account.messages.create(
  from: '+441670432062',
  to: '+447484723518',
  body: "chocolate trigger from: '#{@location}'"
  )
  redirect_to arrival_path(6)
  end

private

  def arrival_params
    params.require(:arrival).permit(:number, :description, :picture_url, :status, :flat_id)
  end


end






  <% if @arrival.number == 1  %>
<%= image_tag "https:/maps.googleapis.com/maps/api/staticmap?zoom=15&size=400x300&sensor=false&maptype=roadmap&markers=color:red|#{@flat.address}&key=AIzaSyDHwg9GVtQDA0xSDo7T85nmeNDawCHhm1w" %>




    <div class="main-content" style="background-image: url(<%= image_path "chocolate_arrival#{@arrival.number}.png"%>)">
    </div>

