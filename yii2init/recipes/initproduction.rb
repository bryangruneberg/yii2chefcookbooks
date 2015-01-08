#
# Cookbook Name:: yii2init
# Recipe:: initproduction
#

execute "init" do
  command "./current/init --env=Production --overwrite=y"
end
