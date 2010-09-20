#This represents a *gist*: a self contained repository, a score can have many parts (for different instruments)
#but lacks collaborators and is public by default
#it can have one audio file associated with it and can be posted by an anonymous user
class Score < ActiveRecord::Base
  belongs_to :user
  before_save :set_defaults
  validates_presence_of :title

  has_attached_file :sample, :url=>"#{ENV['GIT_REPOS']}/:id/attachments/:filename"
  #according to http://filext.com/file-extension/<mp3|ogg|wav>
  validates_attachment_content_type :sample,
  {:content_type=>["application/ogg","audio/ogg","audio/x-ogg", "application/x-ogg",
  #mp3:
  "audio/mpeg", "audio/x-mpeg", "audio/mp3", "audio/x-mp3", "audio/mpeg3", "audio/x-mpeg3", "audio/mpg", "audio/x-mpg", "audio/x-mpegaudio", 
  #wav
  "audio/wav", "audio/x-wav", "audio/wave", "audio/x-pn-wav"],
  :message=>"Only mp3, wav and ogg audio files are supported"
  }
  validates_attachment_size :sample, {:less_than=>5.megabyte}

  #put a default date and author
  def set_defaults
    self.user = current_user
    self.added = DateTime.now #this is actually the last time added... (last revision date)
    self.private = false unless self.private
  end
end
