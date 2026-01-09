#!/bin/bash

set -e

ollama serve &
OLLAMA_PID=$!
sleep 5

for model in $MODELS; do
    ollama pull "$model"
done

kill $OLLAMA_PID
wait $OLLAMA_PID 2>/dev/null || true

exec ollama "$@"
