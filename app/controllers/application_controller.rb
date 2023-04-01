class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode_token
        # Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiMTIwIn0.rcglYAoAgdaOn5V3QTDpIq0SiT-OLoeEhP-kBbfr_GQ

        auth_header = request.headers['Authorization']
        if auth_header.present?
            token =  auth_header.split(' ').last
            begin
                decoded_token = JWT.decode(token,  Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
                { user_id: decoded_token[0]['user_id'], user_type: decoded_token[0]['userType'] }
            rescue JWT::DecodeError
                nil
            end
        end
    end


    def authorized_user
        decoded_token = decode_token()
        if decoded_token.present?
            user_id = decoded_token[:user_id]
            user_type = decoded_token[:userType]
            user = User.find_by(id: user_id, user_type: userType)
        end
    end

    def authorize 
        render json: {message: 'Not Authorized'}, status: :unauthorized unless authorized_user
    end
end
