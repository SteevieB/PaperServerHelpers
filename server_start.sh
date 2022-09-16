#!/bin/bash
VER="1.19.2"
JAR=$(find . -type f -name "paper-$VER-*.jar" -printf "%f\n" | sort -V | tail -1)
JAVA="java"
RAM="8000M"
FLAGS="-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNe  9
while [ true ]; do
  echo $(date) "Starting server..."
  ${JAVA} -Xmx${RAM} -Xms${RAM} ${FLAGS} -jar ${JAR}  --nogui
  for i in 3 2 1; do
    printf 'Server restarting in %s... (press CTRL-C to exit)\n' "${i}"
    sleep 1
  done
done