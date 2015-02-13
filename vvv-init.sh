# Init script for Keva Apartments

echo "Commencing Bedrock Setup"

# Make a database, if we don't already have one
echo "Creating database (if it's not already there)"
mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS wordpress_bedrock"
mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON wordpress_bedrock.* TO wp@localhost IDENTIFIED BY 'wp';"

# Download WordPress
if [ ! -d htdocs ]
then
	echo "Installing Bedrock stack using Composer"
	composer create-project roots/bedrock htdocs
fi

# The Vagrant site setup script will restart Nginx for us

echo "Bedrock site now installed";
