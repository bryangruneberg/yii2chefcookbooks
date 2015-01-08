#
# Cookbook Name:: yii2init
# Recipe:: initdevelopment
#

execute "init" do
  command "./current/init --env=Development --overwrite=y"
end
