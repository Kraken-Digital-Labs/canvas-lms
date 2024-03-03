export CANVAS_LMS_ACCOUNT_NAME="$account"
export CANVAS_LMS_STATS_COLLECTION="opt_in"
read -p "Email Admin: " emailvar
export CANVAS_LMS_ADMIN_EMAIL=“$emailvar”
read -p "Password: " passvar
export CANVAS_LMS_ADMIN_PASSWORD=“$passvar”
read -p "Account: " accounvar
export CANVAS_LMS_ACCOUNT_NAME="$accountvar"
