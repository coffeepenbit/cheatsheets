# To turn on debugging:
set -x

# To turn off debugging:
set +x

# If-else if-else
if [ 1 -eq 1 ]; then
    echo "1 is equal to 1"
elif [ 1 -eq 2 ]; then
    echo "1 is not equal to 2"
else
    echo "1 is not equal to 1"
fi

# switch-case
case "$foobar" in
    "foo")
        echo "foobar is foo" ;;
    "bar")
        echo "foobar is bar" ;;
    *)
        echo "foobar is an unexpected value" ;;
esac
