require "open-uri"
class Package < ApplicationRecord
  belongs_to :flight, optional: true
  belongs_to :hotel, optional: true
  has_one_attached :photo
  belongs_to :trip, optional: true

  def set_photo(trip)
    client = OpenAI::Client.new
    response = client.images.generate(parameters: {
      prompt: "A wanderlust travel image of #{trip.destination.name}",
      n: 1
    })

    url = response["data"][0]["url"]
    file = URI.parse(url).open

    photo.purge if photo.attached?
    photo.attach(io: file, filename: "ai_generated_image.jpg", content_type: "image/png")
    return photo
  end
end
