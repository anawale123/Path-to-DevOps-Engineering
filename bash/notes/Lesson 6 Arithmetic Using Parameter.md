Lesson 6: Arithmetic Using Parameters
As mentioned earlier, we can use parameters as placeholders for variables passed in from the terminal. In the script, we assign these parameters to variables by using the dollar sign notation ($1, $2, etc.). For example, length="$1" will assign the first parameter to the variable length, and width="$2" will assign the second parameter to width.

When performing arithmetic in Bash, you should use double parentheses (( )) for calculations.

Here is how the script would look:


length="$1"
width="$2"

# Calculate the area
area=$(( length * width ))

# Calculate the perimeter
perimeter=$(( 2 * (length + width) ))

# Display the results
echo "Area equals: $area"
echo "Perimeter equals: $perimeter"