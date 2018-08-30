# code_report Solution
# https://youtu.be/WJ4NtyrakT0

function sort_characters () {
    echo $1 | grep -o . | sort | tr -d "\n"
}

function len () {
    echo $(( $(echo $1 | wc -c ) - 1 ))
}

read n
ans=0

for i in $(seq 1 $n)
do
    read s # string

    c=$(len $s)

    x=""; y="" #strings storing odd and even indexed characters

    for (( i = 0; i < $c; i++ )); do 
        if (( $i % 2 == 0 )); then 
            x+=${s:$i:1}
        else
            y+=${s:$i:1}
        fi
    done

    x=$(sort_characters $x)
    y=$(sort_characters $y)

    x+=$y
    d=0 # duplicate found (0 = not found, 1 = found)

    if [ $ans -gt 0 ]; then
        for j in $(seq 1 $ans); do 
            if [ ${unique_strings[j-1]} == $x ]; then
                d=1
            fi
        done
    fi

    if (( d == 0 )); then
        unique_strings[ans]=$x
        (( ans++ ))
    fi

done

echo $ans


