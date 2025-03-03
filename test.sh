echo "Running tests..."
echo

output=$(./main.out)

# Read the values into an array
readarray -t values <<< "$output"

# Assign each value to a variable
val1=${values[0]}
val2=${values[1]}

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$val1" == "37.8" ] ; then
  echo "Pass: 100°F = $val1°C"
else
  echo "Expected '37.8' but got: $val1"
  exit 1
fi

if [ "$val2" == "98.6" ] ; then
  echo "Pass: 37°C = $val2°F"
else
  echo "Expected '98.6' but got: $val2"
  exit 1
fi

echo
echo "All tests passed."

exit 0
