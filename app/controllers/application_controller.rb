class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::Serialization

  def default_serializer_options
    {root: false}
  end

end
