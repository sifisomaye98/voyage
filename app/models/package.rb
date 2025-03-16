require "open-uri"
class Package < ApplicationRecord
  belongs_to :flight, optional: true
  belongs_to :hotel, optional: true
  has_one_attached :photo

  def self.content(trip)
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Please generate 5 travel packages for  #{trip.category} to #{trip.destination.name} with a budget of #{trip.budget} from #{trip.start_date} to #{trip.end_date}. The packages should be specific to #{trip.category} trips, and they must be related to #{trip.destination.name}. Do not include any packages for other categories or destinations."}]
    })
    response_text = chatgpt_response["choices"][0]["message"]["content"]
    descriptions = response_text.split("\n\n")
    descriptions.first(5)
  end

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
