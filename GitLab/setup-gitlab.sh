
# Create access-token
sudo docker exec -it gitlab gitlab-rails r "token = PersonalAccessToken.new(user: User.where(id: 1).first, name: 'temp token', token: 'Token', scopes: ['api','read_user','sudo']); token.save"'!'


# Create a User

# Create group 
curl -L -d  '{"name":"Group1", "path":"Group1"}' -H "Content-Type: application/json" -H "PRIVATE-TOKEN: Token" -X POST http://192.168.33.10:9090/api/v4/groups

# Create project
curl -L -d  '{"name":"Project1"}' -H "Content-Type: application/json" -H "PRIVATE-TOKEN: Token" -X POST http://192.168.33.10:9090/api/v4/projects

# Move project to group 
curl -L -H "PRIVATE-TOKEN: Token" -X PUT  --data "namespace=1" http://192.168.33.10:9090/api/v4/projects/1/transfer

# Add user to group

# Copy repo's  to own folders

# Push folders to repo


