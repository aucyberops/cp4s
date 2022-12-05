#/bin/bash
# This file will update the date and time on the STIX bundles
# requires the gsed (GNU sed) command to be installed on mac through homebrw
# Jonathan Tomasulo - Cybersecurity Specialist

stixDate=`date -v-1d '+%FT%T.000Z'` 
echo "$currentDate"
echo "Update STIX Bundle Dates"
#echo 'gsed -i -E "s/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\.[0-9]+Z/$currentDate/g" *.json'
gsed -i -E "s/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\.[0-9]+Z/$currentDate/g" *.json

epoDate=`date -v-1d '+%Y-%m-%d %H:%M:%S.0'` 
echo "Update EPO Dates"
#echo 'gsed -i -E "s/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\.[0-9]/$avDate/g" av_alert.json'
gsed -i -E "s/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\.[0-9]/$epoDate/g" av_alert.json