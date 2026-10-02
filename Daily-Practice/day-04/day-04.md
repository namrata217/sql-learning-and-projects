🎯 Today's goal

You will learn how to search text patterns instead of looking for an exact value.

🏢 Visual Scenario

Imagine HR has employee names like:

Namrata
Shailesh
Amit
Priya
Rahul
Sneha
Kiran

HR asks:

Names starting with "N"       → N%
Names ending with "a"         → %a
Names containing "it"         → %it%
Names with exactly 5 letters  → _____
Names NOT starting with "S"   → NOT LIKE 'S%'
📖 Theory
1. LIKE

Used for pattern matching.

WHERE name LIKE 'N%'

Means: name starts with N.

2. %

% means zero or more characters.

'N%'    → starts with N
'%a'    → ends with a
'%it%'  → contains it
3. _

_ means exactly one character.

WHERE name LIKE 'A____'

Means: starts with A + exactly 4 more characters = 5 characters total.

4. NOT LIKE

Used when you want to exclude a pattern.

WHERE name NOT LIKE 'S%'

Means: names that do not start with S.
