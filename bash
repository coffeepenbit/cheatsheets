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
    echo "foobar is foo"
    ;;
"bar")
    echo "foobar is bar"
    ;;
*)
    echo "foobar is an unexpected value"
    ;;
esac

# Redirect stderr to stdout
echo "foobar" 2>&1

# Redirect stdout to stderr
echo "foobar" 1>&2

# Get the length of a string
echo -n "foobar" | wc -c

# Count number of lines (ignoring empty lines)
echo "" | wc -l # Result: 0

# Count number of lines (including empty lines)
echo "" | grep -c . # Result: 1

# Count number of files in the current directory
# This is done by counting the number of lines ls prints
ls | wc -l
