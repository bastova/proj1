class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_like.subject
  #
  def new_like(li_ke)
    @greeting = "Here is another useless spam letter! Way to fill your mailbox!"
	@id = li_ke.id
	mail to: li_ke.user.email
  end
end
