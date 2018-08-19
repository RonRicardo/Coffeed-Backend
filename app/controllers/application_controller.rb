class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::Serialization

  def default_serializer_options
    {root: false}
  end

  private
    def issue_token payload
      JWT.encode(payload, secret, algorithm)
    end

    def authorize_user!
      if !current_user.present?
        render json: {error: 'No user id present'}
      end
    end

    def current_user
      @current_user ||= User.find_by(id: params[:user_id])
    end

    def token_user_id
      decoded_token.first['user_id']
    end

    def decoded_token
      if token
        begin
          JWT.decode(token,secret, true, {algorithm: algorithm})
        rescue JWT::DecodeError
          return [{}]
        end
      else
        [{}]
      end
    end

    def token
      request.headers['Authorization']
    end

    def secret
      "secret"
    end

    def algorithm
      "HS256"
    end
end
