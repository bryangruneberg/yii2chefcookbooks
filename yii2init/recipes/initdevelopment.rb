#
# Cookbook Name:: yii2init
# Recipe:: initdevelopment
#

node[:deploy].each do |application, deploy|
  execute "init" do
    init_script = "#{deploy[:deploy_to]}/current/init"
    command "#{init_script} --env=Development --overwrite=y"
    cwd "#{deploy[:deploy_to]}/current"
  end
  script "install_composer" do
    interpreter "bash"
    cwd "#{deploy[:deploy_to]}/current"
    code <<-EOH
    composer global require "fxp/composer-asset-plugin:1.0.0-beta4"
    EOH
  end
end
