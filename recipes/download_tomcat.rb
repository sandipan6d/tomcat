
tomcat_remote_uri = node['sandbox']['tomcat']['uri']


bash 'download_tomcat' do
  user 'root'
  cwd '/tmp/'
  code <<-EOH
  wget #{tomcat_remote_uri}
  EOH
end
