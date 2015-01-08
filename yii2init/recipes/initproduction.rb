#
# Cookbook Name:: yii2init
# Recipe:: initproduction
#

node[:deploy].each do |application, deploy|
  execute "init" do
    init_script = "#{deploy[:deploy_to]}/current/init"
    command "#{init_script} --env=Production --overwrite=y"
    cwd "#{deploy[:deploy_to]}/current"
  end
end
