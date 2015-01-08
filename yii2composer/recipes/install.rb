#
# Taken from:
# http://docs.aws.amazon.com/opsworks/latest/userguide/gettingstarted.walkthrough.photoapp.3.html
#
script "install_composer" do
  interpreter "bash"
  user "root"
  cwd "/usr/local/bin"
  code <<-EOH
  curl -s https://getcomposer.org/installer | php
  php composer.phar install --no-dev --no-interaction --optimize-autoloader
  cp composer.phar composer
  EOH
end
