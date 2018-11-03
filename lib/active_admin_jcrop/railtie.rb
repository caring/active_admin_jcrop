module ActiveAdminJcrop
  class Railtie < Rails::Railtie
    initializer "active_admin_jcrop_railtie.configure_rails_initialization" do
      ActiveAdmin::DSL.send(:include, ActiveAdminJcrop::DSL)
    end
    initializer "active_admin_jcrop_railtie.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
