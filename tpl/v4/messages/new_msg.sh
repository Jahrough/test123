#!/bin/bash

echo
echo  "This script will create an empty, FORMATTED, template file for the next available"
echo  "message id. You will be prompted for all necessary parameters."
echo  "After this script has completed, the output will be a new msgYYYY.tpl file"
echo  "which you can add the new Announcement to, in the styling that is desired"
echo
echo  "Please press ENTER to continue, or <CTRL>-C to exit at this time"

echo "Press ENTER to continue, or CTRL-C to exit now."
read -e RESPONSE


echo 
echo "*******************************************************************************"
echo "At this time please enter the markets/verticals that this message will apply, "
echo "*******************************************************************************"
echo 
echo "Does this Message apply to ALL/ANY vertical market (y/Y or N/n)? "
read -e RESPONSE
echo 
case "$RESPONSE" in 
     "y"  | "Y" )
        echo "AML added"
        MARKETS=ALL;
        ;;
     * )
        echo 
        echo "Does this Message apply to the AML vertical market (y/Y or N/n)? "
        read -e RESPONSE
        echo 
        case "$RESPONSE" in 
             "y"  | "Y" )
                echo "AML added"
                MARKETS="AML ";
                ;;
             * )
                ;; 
        esac
        echo 
        echo "Does this Message apply to the Risk Management vertical market (y/Y or N/n)? "
        read -e RESPONSE
        echo 
        case "$RESPONSE" in 
             "y"  | "Y" )
                echo "RSKM added"
                MARKETS=$MARKETS"RSKM";
                ;;
             * )
                ;; 
        esac
    esac
echo 
echo "*******************************************************************************"
echo "Is this message company/billgroup specific?  (Please enter Y/y or N/n)"
echo "*******************************************************************************"
echo 
read -e RESPONSE
echo 
case "$RESPONSE" in 
     "y"  | "Y" )
        echo "Please enter the company id / billgroup that this message applies to..."
        read -e COMPANY
        ;;
     * )
        echo  "Setting company to ALL"
        COMPANY="ALL";
     esac


echo 
echo "*******************************************************************************"
echo "Does this message expire? (Please enter Y/y or N/n)"
echo "*******************************************************************************"
echo 
read -e RESPONSE
echo 
case "$RESPONSE" in 
     "y"  | "Y" )
        echo "Please enter the year the message will expire (e.g. 2000)"
        read -e  XYR
        echo "Please enter the month the message will expire (e.g. 01)"
        read -e  XMO
        echo "Please enter the day the message will expire (e.g. 31)"
        read -e  XD
        echo "Please enter the hour the message will expire (e.g. 00 for 12:00 a.m.)"
        read -e  XHR
        echo "Please enter the minute the message will expire (e.g. 59)"
        read -e  XMI
        echo "Please enter the second the message will expire (e.g. 00)"
        read -e  XS
        EXP_DATE="$XMO/$XD/$XYR $XHR:$XMI:$XS"
        echo  "Setting Expiration Date to $EXP_DATE"
        ;;
     * )
        echo  "Setting Expiration Date to NULL"
        EXP_DATE="NULL";
     esac

echo 
echo "*******************************************************************************"
echo "Now Please enter the title for this message. This will be the title as seen "
echo "on the Announcement list page. You can style it after the message has been created."
echo 
echo "Enter the message title now."
echo 
read -e TITLE
echo 

#CURR_TIME=`date +"%m/%d/%Y %H:%M"`
#CURR_TIME=  `TZ=":US/Eastern" date +"%B %d, %Y"`
CURR_TIME=`TZ=":US/Eastern" date +"%B %d, %Y"`
POSTED_TIME=`TZ=":US/Eastern" date +"%B %d %Y"`

LAST_MSG=`ls msg*.tpl | sort -n | tail -1`
LAST_MSG_DIGITS=${LAST_MSG:3:4}
nozero=$(echo $LAST_MSG_DIGITS| sed 's/^0*//')
nozero_next=$((nozero+1))
next_id=`printf %04d $nozero_next`
NEXT_MSGID="msg$next_id.tpl"

cp TEMPLATE.tpl $NEXT_MSGID

#echo "The message will now be created with the following data:"
#echo "MESSAGE NUMBER: $LAST_MSG_DIGITS"
#echo "NEW MESSAGE NUMBER: $NEXT_MSGID"
#echo "Company ID: $COMPANY"
#echo "Market Category: $MARKETS"
#echo "Expiration Date: $EXP_DATE"
#echo "Creation Date: $CURR_TIME"
echo
sed -i 's/XXMSGIDXX/'"$next_id"'/' $NEXT_MSGID
sed -i 's/XXCOMPANYIDXX/'"$COMPANY"'/' $NEXT_MSGID
sed -i 's/XXMARKETSXX/'"$MARKETS"'/' $NEXT_MSGID
sed -i 's%XXDATEXX%'"$CURR_TIME"'%' $NEXT_MSGID
sed -i 's%XXEXPXX%'"$EXP_DATE"'%' $NEXT_MSGID
sed -i 's/XXTITLEXX/'"$TITLE"'/g' $NEXT_MSGID
sed -i 's/XXPOSTEDXX/'"$POSTED_TIME"'/' $NEXT_MSGID

echo "*********************************************************************************"
echo "*********************************************************************************"
echo "   NEW FORMATTED MESSAGE FILE $NEXT_MSGID HAS BEEN CREATED. PLEASE EDIT AND    "
echo "   INSERT YOUR MESSAGE SPECIFIC INFORMATION WITHIN THE RFLAGS TABLE IN THE FILE."
echo "   FOR EXAMPLE:"
echo 
echo " <table class="rflags">"
echo "   Enter your Announcement message information here"
echo " </table> "
echo 
echo "   ALSO, PLEASE MAKE SURE TO UPDATE THE V4_CURRENT_MESSAGE INDEX IN THE cfg files "   
echo "                    (e.g. bps-dev.cfg, bps-prod.cfg, etc...)"             
echo 
echo "*********************************************************************************"
echo "*********************************************************************************"
 
echo "Done"
echo 
exit 0
