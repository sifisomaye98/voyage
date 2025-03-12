class Itinerary < ApplicationRecord
  belongs_to :trip

  def content
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Give me activities #{name} with the ingredients #{ingredients}. Give me only the text of the recipe, without any of your own answer like 'Here is a simple recipe'."}]
    })
    return chatgpt_response["choices"][0]["message"]["content"]
  end
end
