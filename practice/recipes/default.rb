#
# Cookbook:: practice
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.
package 'nano' do
  action :install
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

file '/var/website/builder.txt' do
  content '[:cookbookname] build this'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'logo download' do
  command 'wget https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgQmQ0CYwU3cpFE6gEB82cp6TSIcBJSisax_HVvEfsgYHGBsO8kQ -P /var/website/'
  action :run
end

