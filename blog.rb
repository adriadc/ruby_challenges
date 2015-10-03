#create a parent class called "blog" that keeps track of how many blog posts were made
class Blog
	#Save all blog posts in an array	
	@@all_blog_posts = []
	#create a variable (class vairable) that will count our blog posts, starting at 0	
	@@num_blog_posts = 0

	def self.all
    @@all_blog_posts
  	end
 
  	def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  	end
 
  	def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
 
end
 
class BlogPost < Blog
	def self.create
#get title
    post = new
    puts "What do you want to call your blog post?:"
    post.title = gets.chomp
#get content
    puts "Please add your blog post content:"
    post.content = gets.chomp
#get current time    
 #get the time of the post
    post.created_at = Time.now
#save the post
    post.save
#ask if the user wants to create another post    
    puts "Do you want to create a new blog post? [Y/N]:"
#get Y/N
    create if gets.chomp.downcase == 'y'
 #returns if not ‘y’ and stops the rest of the script 
 #from running. otherwise, continues to run ‘create’ method.
  end

def title
    @title
  end
 
  def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
  end
 
  def created_at
    @created_at
  end
 
  def created_at=(created_at)
    @created_at = created_at
  end
 
  def content
    @content
  end
 
  def content=(content)
    @content = content
  end
 
  def save
    BlogPost.add(self)
  end
 
end
 
BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish

