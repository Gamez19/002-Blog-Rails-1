require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  
  test "posible ruta al post" do
  	assert_routing '/posts/12', { 
  		controller: "posts",
  		action: 'show', id: "12"
  	}
  end

  test "test metodo http" do
  	assert_routing({ method: 'put', path: '/posts/12' },
  	{ controller: "posts", action: "update", id: "12" })
  	end
end
