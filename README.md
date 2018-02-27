# Overtime App

## Key requiremnets: compnay needs doucmentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non-admin and guest users
- Emails summary to managers for approval
- Needs to be documented if if employee did not log overtime

## UI
- x Bootstrap formatting
- Icons from Font Awesome
- x Update the styles for forms

## Refactor TODOS:
- x Add full_name method for users
- Refactor user association integration test in post_spec
- Refactor posts/_form for admin user with status
