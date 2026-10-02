# Data Structures & Algorithms in Swift 🚀

A personal learning repository for practising Data Structures and Algorithm (DSA) challenges written in **Swift**, structured as an **Xcode** project with an **XCTest** test suite.

---

## 📁 Project Structure

```
Data Structure And Algorithms/
├── Data Structure And Algorithms/       # Main Swift target
│   └── main.swift
├── DSATests/                            # XCTest test suite
│   ├── 1 Strings/                       # String challenges (13 problems)
│   │   ├── Challenge1Tests.swift
│   │   ├── Challenge2Tests.swift
│   │   └── ...
│   └── Blind75/                         # Blind 75 LeetCode problems
│       ├── Blind1Tests.swift
│       ├── Blind2Tests.swift
│       └── ...
└── DSATests.xctestplan
```

---

## 🧵 String Challenges

Thirteen classic string manipulation problems, each implemented and verified with XCTest.

| # | Challenge | Description |
|---|-----------|-------------|
| 1 | **Are Letters Unique** | Check if all characters in a string are unique |
| 2 | **Is Palindrome** | Check if a string reads the same forwards and backwards |
| 3 | **Do Strings Share Same Characters** | Check if two strings contain the exact same characters |
| 4 | **Fuzzy Contains** | Case-insensitive substring search via `String` extension |
| 5 | **Count Character** | Count occurrences of a specific character |
| 6 | **Remove Duplicate Letters** | Return a string with duplicate characters removed |
| 7 | **Condense Whitespace** | Collapse multiple consecutive spaces into one |
| 8 | **Is String Rotated** | Detect if one string is a rotation of another |
| 9 | **Find Pangrams** | Check whether a sentence uses every letter of the alphabet |
| 10 | **Vowels & Consonants** | Count vowels and consonants in a string |
| 11 | **Three Different Letters** | Check if two strings differ by at most 3 characters (same length) |
| 12 | **Longest Common Prefix** | Find the longest prefix shared by all words in a sentence |
| 13 | **Run-Length Encoding** | Encode a string using run-length compression (e.g. `"aabbc"` → `"a2b2c1"`) |

---

## 🎯 Blind 75

Selected problems from the well-known [Blind 75 LeetCode list](https://neetcode.io/practice), implemented in Swift with both optimal and brute-force approaches where applicable.

| # | Problem | Approach |
|---|---------|----------|
| 1 | **Contains Duplicate** | `Set` size comparison — O(n) |
| 2 | **Valid Anagram** | Character frequency map — O(n) |
| 3 | **Two Sum** | Hash map (optimal O(n)) + Brute force O(n²) |
| 4 | **Valid Palindrome** | Filter alphanumerics, compare to reversed — O(n) |
| 5 | **Encode & Decode Strings** | Length-prefixed encoding (`"5#Hello"`) — O(n) |

---

## 🛠 Tech Stack

| Tool | Version |
|------|---------|
| Language | Swift 5+ |
| IDE | Xcode |
| Testing | XCTest |
| Test Plan | `DSATests.xctestplan` |

---

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone <repo-url>
   cd "Data Structure And Algorithms"
   ```

2. **Open in Xcode**
   ```bash
   open "Data Structure And Algorithms.xcodeproj"
   ```

3. **Run all tests**
   Press `⌘ + U` in Xcode, or from the terminal:
   ```bash
   xcodebuild test -project "Data Structure And Algorithms.xcodeproj" \
     -scheme DSATests \
     -testPlan DSATests
   ```

---

## 📐 Approach

Each challenge lives in its own test file with a `makeSUT` (Make System Under Test) factory method, keeping the solution logic self-contained and easy to compare across problems. This pattern makes it trivial to:

- **Swap implementations** without touching test assertions.
- **Compare approaches** (e.g. brute force vs. hash map in Two Sum).
- **Iterate quickly** using Xcode's inline test results.

---

## 📚 References

- [Swift Coding Challenges – Paul Hudson](https://www.hackingwithswift.com/store/swift-coding-challenges)
- [Blind 75 – NeetCode](https://neetcode.io/practice)
- [LeetCode](https://leetcode.com)

---

*Created by Amin Faruq — started May 2026*
