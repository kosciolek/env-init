if ! command -v jq &> /dev/null
then
    echo "jq is not installed or not executable. Aborting"
    exit 1
fi

