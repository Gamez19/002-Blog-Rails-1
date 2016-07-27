require 'test_helper'

class PostIntegrationTest < ActionDispatch::IntegrationTest
  test "creando nuevo post" do
  	get "/posts/new"
  	assert_response :success
  	assert_template "posts/new", partial: "posts/_form"

  	post "/posts",
  		params: { post: { title: "Nuevo Post", body: "Esto es el cuerpo"}}
  	assert_response :redirect
  	follow_redirect!
  	assert_response :success
  	assert_template "posts/show"
end	
end
