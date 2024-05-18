#!/bin/bash

_add_synapse_endpoint_nginx_config() {

    synapse_domain=$(ynh_app_setting_get --app="$synapse_app" --key=domain)
    synapse_port=$(ynh_app_setting_get --app="$synapse_app" --key=port_synapse)
    if [[ -z "$synapse_port" ]]
    then
        # The setting was synapse_port in older versions of the app
        synapse_port=$(ynh_app_setting_get --app="$synapse_app" --key=synapse_port)
        if [[ -z "$synapse_port" ]]
        then
            ynh_die --message="Unable to find synapse port ?!"
        fi
    fi

    # In case the domain changed for some reason
    old_endpoint_confs_for_this_app="$(ls /etc/nginx/conf.d/*.d/$app.endpoint.conf 2>/dev/null | grep -v "$synapse_domain.d" || true)"
    for FILE in $old_endpoint_confs_for_this_app
    do
        ynh_delete_file_checksum --file="$FILE"
        ynh_secure_remove --file="$FILE"
    done

    ynh_add_config --template="endpoint.nginx.conf" --destination="/etc/nginx/conf.d/${synapse_domain}.d/$app.endpoint.conf"
}
