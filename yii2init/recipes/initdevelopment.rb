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
end
