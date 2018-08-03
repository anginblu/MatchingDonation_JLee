#Matching Donation App

## Models
1. donation (w/ amount, email)
2. match (w/ max_amount, matching ratio for calculation of the matched amount, email for identification, active (true/false))
- Many to Many relationship -> matchesdonation

## Functions
1. Form for incoming donation that has/validates fields for amount, email
2. Form for new match that has/validates fields for email, maximum amount, matching ratio/fixed amount - later, active status can be set default as true
3. index & show view in a list format
4. function for automatically calculating the current matched amount 
