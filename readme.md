# Simple Interest Calculator

A simple program that calculates simple interest from a principal amount, an annual interest rate, and a time period.

## Formula

```
Simple Interest (SI) = (P × R × T) / 100
Total Amount (A)     = P + SI
```

| Symbol | Meaning                          |
|--------|----------------------------------|
| P      | Principal amount                 |
| R      | Annual rate of interest (in %)   |
| T      | Time period (in years)           |

## Features

- Takes principal, rate, and time as input
- Calculates simple interest and total amount
- Validates that inputs are positive numbers

## Example

**Input**
```
Principal: 10000
Rate (%):  5
Time (years): 3
```

**Output**
```
Simple Interest: 1500.0
Total Amount: 11500.0
```

## Sample Code (Python)

```python
def simple_interest(principal, rate, time):
    return (principal * rate * time) / 100

p = float(input("Principal: "))
r = float(input("Rate (%): "))
t = float(input("Time (years): "))

si = simple_interest(p, r, t)
print("Simple Interest:", si)
print("Total Amount:", p + si)
```

## How to Run

1. Clone the repository: `git clone <your-repo-url>`
2. Run: `python simple_interest.py`

## Author

Your Name
