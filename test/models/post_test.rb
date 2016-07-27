require 'test_helper'

class PostTest < ActiveSupport::TestCase
   #test "the truth" do
   #  assert true
   #end

	test "Post Sin Titulo" do
		post = Post.new(title: 'Testing Rails', body: 'Pruebas unitarias en ')
		assert  post.save
	end   

	#test "comentario" do

	#end

end
