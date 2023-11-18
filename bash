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

# Echo total lines of all files in this directory
find . -type f | wc -l | grep total

# Echo number of files in each subdirectory in the current directory
find . -type d -maxdepth 1 -exec sh -c "echo {}; find \"{}\" | wc -l" \;

# Test if directory
[ -d $dirpath ]

# Test if file exists and is a regular file (not a directory)
[ -f $filepath ]

# Test if file exists (whether it is a regular file or directory)
[ -e $filepath ]

# Test if file exists and size > 0 (not empty file)
[ -s $filepath ]

# Test if file is a symbolic link
[ -L $filepath ]

# Test if file is readable
[ -r $filepath ]

# Test if file is writable
[ -w $filepath ]

# Test if file is executable
[ -x $filepath ]

# Test if string is empty
[ -z "string" ]

# Test if string is not empty
[ -n "string" ]
[ "string" ] # is equivalent

# Test if string equality
"string1" == "string2"
"string1" != "string2"

# Create symbolic link (symlink)
ln -s "actual path" "symlink location"

# Create hard link
# Note: can only symlink regular files, not directories
ln -s "actual path" "symlink location"
