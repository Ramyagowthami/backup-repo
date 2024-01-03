#!/bin/bash

# Function to display the menu
display_menu() {
    echo "===== Hotel Menu ====="
    echo "1. idli"
    echo "   a. rava_idli- $1"
    echo "   b. thatta_idli- $2"
    echo "   c. idli_vada - $3"
    echo "2. dosa"
    echo "   a. masala_dosa - $4"
    echo "   b. set_dosa - $5"
    echo "   c. plain_dosa - $6"
    echo "3. meals"
    echo "   a. southmeal - $8"
    echo "   b. northmeal- $7"
   
}

# Function to calculate total amount
calculate_total() {
    total_amount=$((ravaidli_price + thattaidli_price + idlivada_price + masaladosa_price + setdosa_price + plaindosa_price + southmeal_price + northmeal_price))
    echo "Total Amount: $total_amount"
}

# Initialize prices
ravaidli_price=0
thattaidli_price=0
idlivada_price=0
masaladosa_price=0
setdosa_price=0
plaindosa_price=0
southmeal_price=0
northmeal_price=0

# Display the menu
display_menu

# Get user input
read -p "Enter your choice (e.g., 1a rava idli, 2b for masala dosa): " choice

# Process user input
case $choice in
    1a) ravaidli_price=50 ;;
    1b) thattaidli_price=40 ;;
    1c) idlivada_price=60 ;;
    2a) masaladosa_price=70 ;;
    2b) setdosa_price=80 ;;
    2c) plaindosa_price=60 ;;
    3a) southmeal_price=120 ;;
    3b) northmeal_price=150 ;;
    *) echo "Invalid choice" ;;
esac

# Display selected items
echo "Selected items:"
[ $ravaidli_price -gt 0 ] && echo "ravaidli: $ravaidli_price"
[ $thattaidli_price -gt 0 ] && echo "thattaidli: $thattaidli_price"
[ $idlivada_price -gt 0 ] && echo "idlivada: $idlivada_price"
[ $masaladosa_price -gt 0 ] && echo "masaladosa: $masaladosa_price"
[ $setdosa_price -gt 0 ] && echo "setdosa: $setdosa_price"
[ $plaindosa_price -gt 0 ] && echo "plaindosa: $plaindosa_price"
[ $southmeal_price -gt 0 ] && echo "southmeal: $southmeal_price"
[ $northmeal_price -gt 0 ] && echo "northmeal: $northmeal_price"

# Calculate and display total amount
calculate_total

