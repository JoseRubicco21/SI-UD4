function length(){
    TMP_LENGTH=`echo $1 | wc -c`
    LENGTH=$(($TMP_LENGTH - 1))
    echo $LENGTH
}
# You need to store the value right after the function call.
length "Example"
