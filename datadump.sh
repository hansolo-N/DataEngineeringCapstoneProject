#!/bin/bash

# MySQL connection details
MYSQL_HOST=""
MYSQL_USER="root"
MYSQL_PASSWORD=""
MYSQL_DB="sales"
MYSQL_TABLE="sales_data"

# SQL file to export data
OUTPUT_FILE="exportdata.sql"

# Run MySQL query to export data to SQL file
mysqldump -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DB $MYSQL_TABLE > $OUTPUT_FILE

# Check if the export was successful
if [ $? -eq 0 ]; then
    echo "Data exported successfully to $OUTPUT_FILE"
else
    echo "Error exporting data"
fi
