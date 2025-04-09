#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
BASE="$DIR/.."

java -cp "$BASE/lib/*" com.example.oneyoung.App
