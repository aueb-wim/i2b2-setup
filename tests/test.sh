#!/usr/bin/env bash

echo "Changing directory..."
cd ..
echo "Running alembic migration..."
alembic upgrade head
