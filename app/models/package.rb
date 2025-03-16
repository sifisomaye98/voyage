require "open-uri"
class Package < ApplicationRecord
  belongs_to :flight, optional: true
  belongs_to :hotel, optional: true
  has_one_attached :photo

  def content(trip)
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Give me 5 different travel packages for #{trip.category} trip to #{trip.destination.name} with a budget of #{trip.budget}. Give me only the description of the packages, without any of your own answer like 'Here is a travel package."}]
    })
    response_text = chatgpt_response["choices"][0]["message"]["content"]
    response_text.split("\n\n")
  end

  def set_photo(trip)
    client = OpenAI::Client.new
    response = client.images.generate(parameters: {
      prompt: "A wanderlust travel image of #{trip.destination.name}"
    })

    url = response["data"][0]["url"]
    file = URI.parse(url).open

    photo.purge if photo.attached?
    photo.attach(io: file, filename: "ai_generated_image.jpg", content_type: "image/png")
    return photo
  end
end
