class Comment < ApplicationRecord
  after_create_commit {create_event}

  private

  def create_event
    Event.create message: "A New comment has been created"
  end
end
