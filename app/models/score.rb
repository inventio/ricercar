class Score
  include Mongoid::Document
  field :title, :type => String
  field :type, :type => String
  #fields not filled in forms
  field :last_modified, :type => DateTime, :default => lambda {DateTime.now}
  field :git_repo, :type => String #where in the fs is the git repository for this
  #it has an author
  references_one :user #, :as=>"author"

  #TODO: business logic: create git repo, add content, get content, get commits, etc.
end
