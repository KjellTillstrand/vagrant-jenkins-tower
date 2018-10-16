

uuid=$(uuidgen)

sudo docker exec -it vagrant_gitlab_1 gitlab-rails r "token = PersonalAccessToken.new(user: User.where(id: 1).first, name: 'temp token', token: '$uuid', scopes: ['api','read_user','sudo']); token.save"'!'


echo $uuid
