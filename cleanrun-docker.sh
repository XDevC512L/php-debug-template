#!/bin/bash
docker-compose down
sudo rm -rf ./db/**
docker-compose up -d