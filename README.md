# Example data of prometheus exporter

### shell_flask_exporter.sh

output:

```
# HELP http_response_time_ms The HTTPS response time single page in seconds
# TYPE http_response_time_s gauge
http_response_time_s{method=GET, endpoint=/} 0.324301
# HELP http_response_code The HTTPS response code
# TYPE http_response_code gauge
http_response_code{method=GET, endpoint=/} 200
# HELP http_response_size The HTTPS response size in bytes
# TYPE http_response_size gauge
http_response_size{method=GET, endpoint=/} 199534
# HELP http_response_time_ms The HTTPS response time single page in seconds
# TYPE http_response_time_s gauge
http_response_time_s{method=POST, endpoint=/add} 0.015436
# HELP http_response_code The HTTPS response code
# TYPE http_response_code gauge
http_response_code{method=POST, endpoint=/add} 302
# HELP http_response_size The HTTPS response size in bytes
# TYPE http_response_size gauge
http_response_size{method=POST, endpoint=/add} 208
# HELP http_response_time_ms The HTTPS response time single page in seconds
# TYPE http_response_time_s gauge
http_response_time_s{method=POST, endpoint=/update} 0.007719
# HELP http_response_code The HTTPS response code
# TYPE http_response_code gauge
http_response_code{method=POST, endpoint=/update} 302
# HELP http_response_size The HTTPS response size in bytes
# TYPE http_response_size gauge
http_response_size{method=POST, endpoint=/update} 208
```

### iss_exporter.sh

output:
```
# HELP iss_position_lat latitude of the iss.
# TYPE iss_position_lat gauge
iss_position_lat -28.4468
# HELP iss_position_lo longitude of the iss.
# TYPE iss_position_lo gauge
iss_position_lo 48.3308
```