TAXI_TYPE="green"
YEAR="2020"
URL_PREFIX="https://d37ci6vzurychx.cloudfront.net/trip-data"

for month in {01..12}; do
    echo "month: $month"
    URL="${URL_PREFIX}/${TAXI_TYPE}_tripdata_${YEAR}-${month}.parquet"
    LOCAL_PREFIX="data/raw/${TAXI_TYPE}/${YEAR}/${month}"
    LOCAL_FILE="${TAXI_TYPE}_tripdata_${YEAR}-${month}.parquet"
    LOCAL_PATH="${LOCAL_PREFIX}/${LOCAL_FILE}"

    mkdir -p "${LOCAL_PREFIX}"
    wget "$URL" -O "$LOCAL_PATH"
done
