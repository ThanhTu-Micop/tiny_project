#!/bin/bash
cd "$(dirname "$0")"
g++ -std=c++17 -Wall -Wextra -O2 -Iinclude src/*.cpp -o ecommerce
if [ $? -eq 0 ]; then
    echo "[OK] Build thanh cong. Dang chay..."
    ./ecommerce
else
    echo "[LOI] Build that bai."
fi
