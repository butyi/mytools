#!/bin/bash
. ~/.my-accounts

# File variable
FILE="$1"

# Keywords
KEYWORDS="Sony HDR-AS100"

# Location
LOCATION="47.51100,18.92556"

# Description formatting
DESCRIPTION="Uploaded from Ubuntu command line without open any Internet browser. Search 'youtube-upload' tool on google code. Uploaded by Butyi (http://butyi.hu)"

# Title formatting
# remove path
TITLE=$(basename "$1")
# remove extension
TITLE=${TITLE%.*} 
# convert '_' and '-' to space
TITLE=`echo $TITLE | sed 's/_/ /g'`
TITLE=`echo $TITLE | sed 's/-/ /g'`
# Title case (upercase first letter of all words)
TITLE=($TITLE)
TITLE=${TITLE[@]^}
# Title formatting is finished

echo $FILE
#  
# The upload itself
youtube-upload \
--email=$GMAIL \
--password=$GPASS \
--unlisted \
--title="$TITLE" \
--description="$DESCRIPTION" \
--category=People \
--keywords="$KEYWORDS" \
--location="$LOCATION" \
$FILE
