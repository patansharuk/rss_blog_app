class BlogsController < ApplicationController
    def index
        @blogs = Blog.all
        respond_to do |format|
            format.html
            format.rss { render layout: false }
        end
    end
end