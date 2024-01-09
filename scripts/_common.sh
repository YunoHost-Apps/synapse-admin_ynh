#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# UPDATE SYNAPSE ENDPOINT
#=================================================

_update_synapse_nginx_config() {
    # This helper fixes when synapse changes domain, shouldn't happen though...
    old_synapse_domain="$synapse_domain"
    synapse_domain=$(ynh_app_setting_get --app="$synapse_app" --key=domain)
    synapse_port=$(ynh_app_setting_get --app="$synapse_app" --key=synapse_port)
    ynh_app_setting_set --app=$app --key=synapse_domain --value="$synapse_domain"

    if [[ "${synapse_domain}" != "${old_synapse_domain}" ]]; then
        ynh_backup_if_checksum_is_different --file="/etc/nginx/conf.d/${old_synapse_domain}.d/$app.endpoint.conf"
        ynh_delete_file_checksum --file="/etc/nginx/conf.d/${old_synapse_domain}.d/$app.endpoint.conf"
        ynh_secure_remove --file="/etc/nginx/conf.d/${old_synapse_domain}.d/$app.endpoint.conf"
    fi

    ynh_add_config --template="endpoint.nginx.conf" --destination="/etc/nginx/conf.d/${synapse_domain}.d/$app.endpoint.conf"
}
#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
