class GeneratePackagesJob < ApplicationJob
  queue_as :default

  def perform(trip)
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Please generate 1 travel package for  #{trip.category} to #{trip.destination.name}
        with a budget of #{trip.budget} from #{trip.start_date} to #{trip.end_date}. The packages must be specific to #{trip.category} trips,
        and they must be related to #{trip.destination.name}. Do not include any packages for other categories or destinations.
        Don't mention the dates, category, and total budget at the beginning of your answer.Just the package details. Make the description short"}]
    })
    response_text = chatgpt_response["choices"][0]["message"]["content"]

    package = Package.create!(
      name: "#{trip.category} package to #{trip.destination.name}",
      description: response_text,
      trip_id: trip.id
    )
    package.set_photo(trip)
    # packages << package
    # end
    return package
  end
end
