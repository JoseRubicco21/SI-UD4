VAR1=5
VAR2=0
VAR3=10


if [ $VAR1 -lt $VAR2 ]; then
    echo "$VAR1 is less than $VAR2"
    elif [ $VAR1 -gt $VAR3 ]; then
        echo "$VAR1 is greater than $VAR3"
fi

if [[ 2 -gt 0 ]]; then
    echo "a is greather than b"
fi

if [[ $VAR1 -le $VAR2 ]]; then
    echo "$VAR1 is less or equal to $VAR2"
fi

if [[ $VAR1 -ge $VAR2 ]]; then
    echo "$VAR1 is greater or equal to $VAR2"
fi

if [[ $VAR1 -eq $VAR2 ]]; then
    echo "$VAR1 is equal to $VAR2"
fi

if [[ $VAR1 -ne $VAR2 ]]; then
    echo "$VAR1 is not equal to $VAR2"
fi

if (( $VAR1 < $VAR2 )); then
    echo "$VAR1 is less than $VAR2"
fi

if (( $VAR1 > $VAR2 )); then
    echo "$VAR1 is greater than $VAR2"
fi

if (( $VAR1 == $VAR2 )); then
    echo "$VAR1 is equal than $VAR2"
fi

if (( $VAR1 != $VAR2 )); then
    echo "$VAR1 is different than $VAR2"
fi

if (( $VAR1 -n )); then
    echo "$VAR1 is not empty"
fi

if (( $VAR1 -z )); then
    echo "$VAR1 is empty"
fi

if [[ $VAR1 -gt $VAR2 && $VAR1 -lt $VAR3 ]]; then
    echo "$VAR1 is greater than $VAR2 and lesser than $VAR3"
    else
        echo "Condiciones no cumplidas"
fi

if [[ $VAR1 -lt $VAR2 || $VAR1 -gt $VAR3 ]]; then
    echo "$VAR1 is lesser than $VAR2 or lesser than $VAR3"
    else
        echo "Condiciones no cumplidas"
fi