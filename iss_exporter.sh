#!/bin/bash

response=$(curl -s 'http://api.open-notify.org/iss-now.json')

latitude=$(echo $response | jq -r '.iss_position.latitude')
longitude=$(echo $response | jq -r '.iss_position.longitude')

echo -E "# HELP iss_position_lat latitude of the iss.
# TYPE iss_position_lat gauge"
echo "iss_position_lat $latitude"
echo -E "# HELP iss_position_lo longitude of the iss.
# TYPE iss_position_lo gauge"
echo "iss_position_lo $longitude"