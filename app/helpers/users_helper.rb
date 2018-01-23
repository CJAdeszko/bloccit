module UsersHelper
  def has_posts(user)
    if user.posts == 0
      "{user.name} has not submitted any posts yet."
    end
  end

  def has_comments(user)
    if user.comments == 0
      "{user.name} has not submitted any comments yet."
    end
  end

end
