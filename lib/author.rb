class Author
    attr_accessor :name 

    def initialize(name)
        @name = name 
    end

    def posts
        Post.all
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        newPost = Post.new(title)
        newPost.author = self
    end

    def self.post_count
        Post.all.count
    end

end