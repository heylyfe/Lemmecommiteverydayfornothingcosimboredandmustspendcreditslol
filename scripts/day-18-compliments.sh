#!/bin/bash
# Day 18: positive affirmations as a service (self-hosted, obviously)

COMPLIMENTS=(
  "Great commit. Really clean diff."
  "You remembered the ; this time."
  "Your error messages are informative and only slightly dramatic."
  "You replaced fear with a try/catch. Healthy."
)

echo "Starting affirmation daemon (pid: $$)"
for ((i=1; ; i++)); do
  echo "[$i] ${COMPLIMENTS[$((RANDOM % ${#COMPLIMENTS[@]}))]}"
  sleep 5
done
