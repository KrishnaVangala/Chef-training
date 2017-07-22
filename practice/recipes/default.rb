#
# Cookbook:: practice
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.
package 'nano' do
  action :install
end
package 'wget' do
end

directory '/var/website' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/var/website/directions.txt' do
  content 'website goes here'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/var/website/builder.txt' do
  source 'builder-txt.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end



execute 'logo download' do
  command 'wget https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgQmQ0CYwU3cpFE6gEB82cp6TSIcBJSisax_HVvEfsgYHGBsO8kQ -P /var/website/'
  action :run
end

