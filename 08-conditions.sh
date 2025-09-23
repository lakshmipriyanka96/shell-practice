
#!/bin/bash
echo "Please enter the number"
read number
if [ $(($number%2)) -eq 0 ]; then
    echo "The given number $number is even"
else
    echo "The given number $number is odd"
fi
