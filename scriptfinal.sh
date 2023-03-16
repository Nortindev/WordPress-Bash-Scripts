#!/bin/bash

greenText() {
  echo -e "The domain (\033[32m$1\033[0m) has this DB_NAME (\033[32m$2\033[0m)"
}

echo "Select an option:"
echo "1. Main domains"
echo "2. Subdomains"
read option

if [ "$option" == "1" ]; then
  for domain in $(ls /home/"$USER"/domains); do
    echo "Checking domain: $domain"
    wp_config="/home/$USER/domains/$domain/public_html/wp-config.php"
    if [ -f "$wp_config" ]; then
      db_name=$(awk -F "'" '/DB_NAME/ {print $4}' "$wp_config")
      greenText "$domain" "$db_name"
    fi
  done
elif [ "$option" == "2" ]; then
  echo "Enter main domain name:"
  read main_domain
  for subdomain in $(find /home/"$USER"/domains/"$main_domain"/public_html -maxdepth 1 -type d | tail -n +2); do
    wp_config="$subdomain/wp-config.php"
    if [ -f "$wp_config" ]; then
      db_name=$(awk -F "'" '/DB_NAME/ {print $4}' "$wp_config")
      subdomain_name=$(echo "$subdomain" | awk -F/ '{print $NF}')
      greenText "$subdomain_name.$main_domain" "$db_name"
    fi
  done
else
  echo "Usage: scriptfinal.sh [1|2]"
fi
