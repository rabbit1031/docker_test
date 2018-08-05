execute "apt update" do
  command "apt update"
end

%w(bash-completion docker.io docker-compose).each do |pkg|
  package pkg do
    action :install
  end
end