class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :bio, :avatar
end
