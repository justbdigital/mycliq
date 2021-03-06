module MessagesHelper
  def recipients_options(chosen_recipient = nil)
    s = ''
    User.all.each do |user|
      s << "<option value='#{user.mailboxer_name} (#{user.username})' data-img-src='#{user.avatar}' #{'selected' if user == chosen_recipient}>#{user.mailboxer_name}</option>"
    end
    s.html_safe
  end

  def invite_recipients_options(chosen_recipient = nil)
    s = ''
    current_user.active_friends.each do |user|
      s << "<option value='#{user.mailboxer_name} (#{user.username})' data-img-src='#{user.avatar}' #{'selected' if user == chosen_recipient}>#{user.mailboxer_name}</option>"
    end
    s.html_safe
  end
end
