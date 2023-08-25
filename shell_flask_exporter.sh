#!/bin/bash

FLASK_HOST="localhost:5000"
RANDOM_WORD=`cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 8 | head -n 1`

run_request() {
    method=$1
    path=$2
CURL_OUTPUT_PATTERN="# HELP http_response_time_ms The HTTPS response time single page in seconds
# TYPE http_response_time_s gauge
http_response_time_s{method="$method", endpoint="$path"} %{time_total}
# HELP http_response_code The HTTPS response code
# TYPE http_response_code gauge
http_response_code{method="$method", endpoint="$path"} %{http_code}
# HELP http_response_size The HTTPS response size in bytes
# TYPE http_response_size gauge
http_response_size{method="$method", endpoint="$path"} %{size_download}
"
    curl -i -o /dev/null -s -w "$CURL_OUTPUT_PATTERN" -d "todo_item=$RANDOM_WORD" $FLASK_HOST$path -X $method
}


query_params="GET /,POST /add,POST /update"
echo "$query_params" | tr ',' '\n' | while IFS= read -r param; do
    run_request $param
done