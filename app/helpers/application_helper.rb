module ApplicationHelper

  RSpec.configure do |config|
    config.before(:suite) do
      Rails.application.load_seed # loading seeds
    end
  end
  
  def is_admin?
    current_user && current_user.admin
  end
end
