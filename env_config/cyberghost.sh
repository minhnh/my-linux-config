CYBERGHOST_CMD=`which cyberghostvpn`

cyberghost-city-list() {
    country_code=$1;
    [[ -z "$country_code" ]] && { echo "country code must not be empty"; return 1; }

    city_name=$2

    # if connection type not specified, use '--traffic';
    [[ -z "$3" ]] && conn_type='traffic' || conn_type=$3;

    cmd="$CYBERGHOST_CMD --$conn_type --country-code $country_code --city $city_name";
    echo "command: $cmd";
    sh -c "$cmd";
}

cyberghost-city-connect() {
    country_code=$1;
    [[ -z "$country_code" ]] && { echo "country code must not be empty"; return 1; }

    city_name=$2
    [[ -z "$city_name" ]] && { echo "city name must not be empty"; return 1; }

    # if connection type not specified, use '--traffic';
    [[ -z "$3" ]] && conn_type='traffic' || conn_type=$3;

    cmd="sudo $CYBERGHOST_CMD --$conn_type --country-code $country_code --city $city_name --connect";
    echo "command: $cmd";
    sh -c "$cmd";
}

cyberghost-country-list() {
    country_code=$1;

    # if connection type not specified, use '--traffic';
    [[ -z "$2" ]] && conn_type='traffic' || conn_type=$2;

    cmd="sudo $CYBERGHOST_CMD --$conn_type --country-code $country_code";
    echo "command: $cmd";
    sh -c "$cmd";
}

cyberghost-country-connect() {
    country_code=$1;
    [[ -z "$country_code" ]] && { echo "country code must not be empty"; return 1; }

    # if connection type not specified, use '--traffic'
    [[ -z "$2" ]] && conn_type='traffic' || conn_type=$2;

    cmd="sudo $CYBERGHOST_CMD --$conn_type --country-code $country_code --connect";
    echo "command: $cmd";
    sh -c "$cmd";
}

cyberghost-stream-connect() {
    country_code=$1;
    [[ -z "$country_code" ]] && { echo "country code must not be empty"; return 1; }

    stream_name=$2;
    [[ -z "$stream_name" ]] && { echo "stream name must not be empty"; return 1; }

    cmd="sudo $CYBERGHOST_CMD --streaming '$stream_name' --country-code $country_code --connect";
    echo "command: $cmd";
    sh -c "$cmd";
}

alias cyberghost-stop="sudo $CYBERGHOST_CMD --stop";
alias cyberghost-status="$CYBERGHOST_CMD --status";

