#!/bin/bash


echo "enter the temp :"
read temp
echo "choose one Option"
echo "1. DegC To DegF."
echo "2. DegF To DegC."

echo "Enter the Option:"
read input

function cal()
{
DegCToDegF=1
DegFToDegC=2

case $input in
         $DegCToDegF)
            if [[ $temp -ge 32 && $temp -le 212 ]]
            then
               outputone=$((($temp * 9/5) + 32))
               echo "DegC To DegF is:" $outputone
            else
               echo "enter a valid num"
            fi
               ;;
	 $DegFToDegC)
            if [[ $temp -ge 32 && $temp -le 212 ]]
            then
               outputtwo=$((($temp - 32) * 5/9))
               echo "DegF To DegC is:" $outputtwo
            else
               echo "Range is not valid"
            fi
               ;;
         *)
            output=Invalidrange
            echo $output
               ;;
esac
}
result=$( cal $tmp $input )
echo $result
