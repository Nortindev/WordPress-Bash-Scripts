
# WordPress Database Discovery Script

## Overview
This bash script is designed to help identify the database names associated with WordPress websites. It can search through main domains and subdomains, making it especially useful for managing multiple WordPress installations.

## Features
- **Main Domains**: Searches through main domain directories and identifies the connected database for each WordPress installation.
- **Subdomains**: Searches through subdomain directories under a specified main domain and identifies the connected database for each WordPress installation.

## Usage
1. **Download the Script**:
   ```bash
   curl -O https://github.com/Nortindev/wordpress-database-scan/raw/main/scriptfinal.sh
   ```

2. **Make the Script Executable**:
   ```bash
   chmod +x scriptfinal.sh
   ```

3. **Run the Script**:
   ```bash
   bash scriptfinal.sh
   ```

4. **Follow the On-Screen Instructions**:
   - **Option 1**: Check databases for main domains.
   - **Option 2**: Check databases for subdomains under a specified main domain.

## Example
1. Download the script:
   ```bash
   curl -O https://github.com/Nortindev/wordpress-database-scan/raw/main/scriptfinal.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x scriptfinal.sh
   ```

3. Run the script:
   ```bash
   bash scriptfinal.sh
   ```

4. Select an option when prompted:
   - To check main domains, enter `1`.
   - To check subdomains, enter `2` and provide the main domain name when prompted.

## Notes
- Ensure you have the necessary permissions and access to the WordPress directories and databases.
- The script looks for `wp-config.php` files to identify the database names.


## Contact
For any questions or support, please open an issue on the GitHub repository.

