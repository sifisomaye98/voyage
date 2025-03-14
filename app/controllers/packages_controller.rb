class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update]

  def show
    # Initialize OpenAI client and get response
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: "Give me 5 travel packages to different cities for each #{Package.categories}."}]
    })

    # Check if response is correctly formatted
    if chatgpt_response["choices"].present?
      @content = chatgpt_response["choices"][0]["message"]["content"]
    else
      @content = "No content available from the API."
    end
  end

  def update
    if @package.update(package_params)
      redirect_to package_path(@package)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def package_params
    params.require(:package).permit(:category, :name, photos: [])
  end

  def set_package
    @package = Package.find(params[:id])
  end

end
