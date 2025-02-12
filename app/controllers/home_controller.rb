class HomeController < ApplicationController
  def index
      @author = "Rodrigo"
      @posts = [
        { title: "Rails", body: "Aprendendo com a OBC" },
        { title: "Javascript", body: "Aprendendo com a OBC" },
        { title: "Python", body: "Aprendendo com a OBC" }
      ]
  end
end
