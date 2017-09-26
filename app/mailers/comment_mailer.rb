class CommentMailer < ApplicationMailer

  def comment_notification_email_for_article(author, commenter)
    @author = author
    @commenter = commenter
    @url = 'https://student-mitra-csm.herokuapp.com/'
    mail(to: @author.email, subject: 'Comment Notification Email')
  end

  def comment_notification_email_for_techword(author, commenter)
    @author = author
    @commenter = commenter
    @url = 'https://student-mitra-csm.herokuapp.com/'
    mail(to: @author.email, subject: 'Comment Notification Email')
  end

end
