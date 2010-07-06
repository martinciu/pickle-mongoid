require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class Post
  include Mongoid::Document
end

class Comment
  include Mongoid::Document
end

class Dummy
end

describe Pickle::Adapter do

  describe ".model_classes" do
    it "should return Mongoid::Document classes" do
      Pickle::Adapter.model_classes.should include(Post, Comment)
    end
    
    it "should not return other classes" do
      Pickle::Adapter.model_classes.should_not include(Dummy)
    end
    
  end

end
