#!/bin/bash
printf "killing python server\n"
kill `cat http.pid`
printf "killing camera loop\n"
kill `cat fswebcam.pid`
rm *.pid

