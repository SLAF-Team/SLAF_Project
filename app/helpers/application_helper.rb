# frozen_string_literal: true

module ApplicationHelper
  def class_for_flash(type)
    case type
    when 'notice' then 'alert__info'
    when 'success' then 'alert__success'
    when 'error' then 'alert__danger'
    when 'alert' then 'alert__warning'
    end
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  include Pagy::Frontend
end
