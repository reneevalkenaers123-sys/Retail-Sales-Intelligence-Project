# Retail Sales Intelligence Project
# Python data cleaning and validation
# Day 1 project

import csv

total_sales = 0
row_count = 0
missing_values = 0

with open("data/sales_data.csv", newline="") as file:
    reader = csv.DictReader(file)

    for row in reader:
        row_count += 1

        for value in row.values():
            if value == "":
                missing_values += 1

        total_sales += int(row["Sales"])

print("Rows checked:", row_count)
print("Missing values:", missing_values)
print("Total sales:", total_sales)
