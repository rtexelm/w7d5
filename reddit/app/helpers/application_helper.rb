module ApplicationHelper
    def auth_token
        "<input type="hidden" value="authenticity_token" name= #{form_authenticity_token}>".html_safe
    end
end
