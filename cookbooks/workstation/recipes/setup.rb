package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp' do
  action :install
end

service 'ntp' do
  action [ :enable, :start ]
end

file '/etc/motd' do
  content 'This server is the property of John Nguyen'
  action :create
  owner 'root'
  group 'root'
end
