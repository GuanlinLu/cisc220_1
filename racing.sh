#!/bin/bash
temp=""
line=(0 0 0 0)
c=""
i=0
c=0
while ((i<3))
do
    j=0
    t=""
    while((j<=42))
    do
        if ((j<line[$i]))
        then
            t="$t-"
        else
            if ((j==line[$i]))
            then
                    t="$t|->"
            else
                t="$t "
            fi
        fi
        ((j=j+1))
    done
    echo "$t#LANE$i"
    ((i=i+1))
done
read c
while ((line[0]<42 && line[1]<42 && line[2]<42))
do
    i=0
    clear
    ((c=c-1))
    ((line[$c]=${line[$c]}+1))
    echo "line[$c] add one"
    echo ${line[*]}
    while ((i<3))
    do
        j=0
        t=""
        while((j<=42))
        do
            if ((j<line[$i]))
            then
                t="$t-"
            else
                if ((j==line[$i]))
                then
                        t="$t|->"
                else
                    t="$t "
                fi
            fi
            ((j=j+1))
        done
        echo "$t#LANE$i"
        ((i=i+1))
    done
    read c
done
