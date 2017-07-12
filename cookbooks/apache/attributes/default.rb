default["apache"]["sites"]["node1"] = { "site_title" => "node1 site is comming soon", "port" => 80, "domain" => "node1.duke.com" }
default["apache"]["sites"]["node1b"] = { "site_title" => "node1b site is comming soon", "port" => 80, "domain" => "node1b.duke.com" }
default["apache"]["sites"]["node2"] = { "site_title" => "node2 site is comming soon", "port" => 80, "domain" => "node2.duke.com" }

default["author"]["name"] = "duke"

case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end
