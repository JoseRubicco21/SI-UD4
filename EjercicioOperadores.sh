#!/bin/bash
VARA=0

echo $VARA

VARA=$(($VARA + 1))

echo $VARA

VARA=$(($VARA - 2))

echo $VARA

VARA=$(($VARA * 2 + 10))

echo $VARA

VARA=$(($VARA/2))

echo $VARA

echo $((10%2))

echo  $((2&&2))

echo $((1||2))

echo $((1||1))

