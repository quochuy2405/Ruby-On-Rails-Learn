class ArticleService
    
    def get_all
       ::User.all
    end
    
    def get_by_id(id)
        @article = User.find(id)
    end

    def create
        ::User.all
    end

    def update(id,user)
        @article = User.find(id)
        @article.name = user['name']
    end

     def delete(id)
        ::User.delete(id)
    end


end
