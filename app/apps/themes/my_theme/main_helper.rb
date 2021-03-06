module Themes::MyTheme::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  def my_theme_settings(theme)
    # here your code on save settings for current site, by default params[:theme_fields] is auto saved into theme
    # Also, you can save your extra values added in admin/settings.html.erb
    # sample: theme.set_meta("my_key", params[:my_value])
    theme.set_field_values(params[:field_options])
  end

  def my_theme_on_render_post(params)
    if params[:layout] == 'index'
      params[:layout] = 'layouts/1-column'
    end
  end

  # callback called after theme installed
  def my_theme_on_install_theme(theme)
    unless theme.get_field_groups.where(slug: "fields").any?
      group = theme.add_field_group({name: "Main Settings", slug: "fields", description: ""})
      group.add_field({"name"=>"Background color", "slug"=>"bg_color"},{field_key: "colorpicker"})
      group.add_field({"name"=>"Links color", "slug"=>"links_color"},{field_key: "colorpicker"})
      group.add_field({"name"=>"Background image", "slug"=>"bg"},{field_key: "image"})
    end
    theme.set_meta("installed_at", Time.current.to_s) # save a custom value
  end

  # callback executed after theme uninstalled
  def my_theme_on_uninstall_theme(theme)
  end
end
