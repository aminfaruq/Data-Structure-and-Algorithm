# Data Structures and Algorithms in Swift

A personal learning repository for practicing data structures and algorithm challenges in Swift, structured as an Xcode project using XCTest.

---

## Project Structure

```
Data Structure And Algorithms/
├── Data Structure And Algorithms/       # Executable target
│   └── main.swift
├── DSATests/                            # XCTest test suite
│   ├── 1 Strings/                       # String manipulation challenges
│   ├── 2 Numbers/                       # Numeric and math challenges
│   ├── Blind75/                         # Blind 75 LeetCode problems
│   └── Random/                          # Practical interview and transaction challenges
└── DSATests.xctestplan                  # Xcode test plan configuration
```

---

## String Challenges

Classic string manipulation problems inspired by Swift coding challenges.

| # | Challenge | Description |
|---|-----------|-------------|
| 1 | Are Letters Unique | Verify whether all characters in a string are unique |
| 2 | Is Palindrome | Check if a string reads the same forwards and backwards |
| 3 | Do Strings Share Same Characters | Check if two strings contain the exact same characters |
| 4 | Fuzzy Contains | Case-insensitive substring search via `String` extension |
| 5 | Count Character | Count occurrences of a specific character |
| 6 | Remove Duplicate Letters | Return a string with duplicate characters removed |
| 7 | Condense Whitespace | Collapse multiple consecutive spaces into a single space |
| 8 | Is String Rotated | Detect if one string is an offset rotation of another |
| 9 | Find Pangrams | Verify whether a sentence contains all 26 letters of the alphabet |
| 10 | Vowels and Consonants | Count the number of vowels and consonants in a string |
| 11 | Three Different Letters | Check if two strings of equal length differ by at most 3 characters |
| 12 | Longest Common Prefix | Find the longest prefix shared across space-separated words |
| 13 | Run-Length Encoding | Compress repeated consecutive characters (e.g., `"aabbc"` -> `"a2b2c1"`) |

---

## Number Challenges

Mathematical and numeric operations.

| # | Challenge | Description |
|---|-----------|-------------|
| 16 | Fizz Buzz | Map integers to `"Fizz"`, `"Buzz"`, `"Fizz Buzz"`, or number string |
| 17 | Random Number in Range | Generate random integers within a given closed range |
| 18 | Recreate Pow | Compute exponentiation without using the standard math library |
| 19 | Swap Two Numbers | Swap values using tuple return and `inout` pointer swapping |

---

## Blind 75

Selected problems from the Blind 75 curriculum implemented in Swift.

| # | Problem | Approach |
|---|---------|----------|
| 1 | Contains Duplicate | `Set` size comparison — O(n) |
| 2 | Valid Anagram | Character frequency dictionary — O(n) |
| 3 | Two Sum | Hash map complement lookup — O(n), with brute-force reference |
| 4 | Valid Palindrome | Alphanumeric filtering and reversal comparison — O(n) |
| 5 | Encode and Decode Strings | Length-prefixed delimiter format (`"5#Hello"`) — O(n) |
| 6 | Product of Array Except Self | Left and right prefix product arrays — O(n) time, O(n) space |

---

## Miscellaneous Challenges

Custom practical algorithm exercises focusing on financial and array operations.

| # | Challenge | Description |
|---|-----------|-------------|
| 1 | Valid Transaction Pairs | Check if transactions balance out into equal positive/negative amounts |
| 2 | Price Reversal Validity | Check if an array of price values is symmetric (palindrome array) |
| 3 | Merge Transactions | Merge two pre-sorted transaction arrays in ascending order |

---

## Tech Stack

| Tool | Details |
|------|---------|
| Language | Swift 5+ |
| IDE | Xcode |
| Testing | XCTest |
| Test Configuration | `DSATests.xctestplan` |

---

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repo-url>
   cd "Data Structure And Algorithms"
   ```

2. Open in Xcode:
   ```bash
   open "Data Structure And Algorithms.xcodeproj"
   ```

3. Run the test suite:
   - In Xcode: Press `Cmd + U`
   - From the terminal:
     ```bash
     xcodebuild test -project "Data Structure And Algorithms.xcodeproj" \
       -scheme DSATests \
       -testPlan DSATests
     ```

---

## Testing Approach

Each challenge is encapsulated in its own test case file with a `makeSUT` (System Under Test) factory function. This keeps implementation logic close to test assertions while allowing:

- Quick switching between different algorithmic implementations
- Easy comparison between optimal and naive/brute-force approaches
- Fast iteration using Xcode's inline test runner

---

## References

- Swift Coding Challenges (Paul Hudson)
- Blind 75 / NeetCode
- LeetCode
