# VVV Auto Bootstrap Demo 1 for VVV Bedrock stack

This is one of a series of demonstrations of the auto-sitesetup designed to be used with [Varying Vagrants Vagrants](https://github.com/Varying-Vagrant-Vagrants/VVV) for integrating [Bedrock Stack](https://github.com/roots/bedrock).

This demo shows a site setup using just Composer and MySQL commands.

To get started:

1. If you don't already have it, clone the [Varying Vagrants Vagrants repo](https://github.com/Varying-Vagrant-Vagrants/VVV) , perhaps into your `~/Vagrants/` directory (you may need to create it if it doesn't already exist)
2. Install the Vagrant hosts updater: `vagrant plugin install vagrant-hostsupdater`
3. Clone this branch of this repo into the `www` directory of your Vagrant as `www/bedrock`. Command for doing it is `git clone https://github.com/julykaz/vvv-demo-1-bedrock.git bedrock`.
4. If your Vagrant is running, from the Vagrant directory run `vagrant halt`
5. Followed by `vagrant up --provision`.  Perhaps a cup of tea now? The provisioning may take a while.
6. Change `.env` file in `htdocs` folder to meet your DB and URL settings from `vvv-init.sh` file. For this default config it is:
`DB_NAME=wordpress_bedrock`
`DB_USER=wp`
`DB_PASSWORD=wp`
`DB_HOST=localhost`

Then you can visit [http://bedrock.dev/](http://bedrock.dev/)
