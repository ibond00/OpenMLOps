terraform {
    required_providers {
        openstack = {
            source = "terraform-provider-openstack/openstack"
            version = "1.33.0"
        }
        
        mcs = {
            source = "MailRuCloudSolutions/mcs"
            version = "~> 0.4.2"
        }
    }
}

provider "openstack" {
    # Your user account.
    user_name = "ibondarev17@gmail.com"

    # The password of the account
    password = "YOUR_PASSWORD"

    # The tenant token can be taken from the project Settings tab - > API keys.
    # Project ID will be our token.
    tenant_id = "db4bf191f768491fadc60a273d2b53b9"

    # The indicator of the location of users.
    user_domain_id = "users"

    # API endpoint
    # Terraform will use this address to access the VK Cloud Solutions api.
    auth_url = "https://infra.mail.ru:35357/v3/"

    # use octavia to manage load balancers
    use_octavia = true
    
    # Region name
    region = "RegionOne"
}

provider "mcs" {
    # Your user account.
    username = "ibondarev17@gmail.com"

    # The password of the account
    password = "YOUR_PASSWORD"

    # The tenant token can be taken from the project Settings tab - > API keys.
    # Project ID will be our token.
    project_id = "db4bf191f768491fadc60a273d2b53b9"
    
    # Region name
    region = "RegionOne"
}
