class CommentMailer < ApplicationMailer

  def comment_notification_email(author, commenter)
    @author = author
    @commenter = commenter
    @url = 'https://student-mitra-csm.herokuapp.com/'
    mail(to: @author.email, subject: 'Comment Notification Email')
  end

end
