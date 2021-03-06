# Overtime App

## Key requiremnets: compnay needs doucmentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:
- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> integrate with heroku scheduler
- x Administrate admin dashboard
- x Block non-admin and guest users
- x Emails summary to managers for approval (not implemented)
- x Needs to be documented if if employee did not log overtime
- x Create audit log for each text message sent
- x Need to update end date when confirmed
- x Need to update the audit log status when an overtime status has been rejected
- x Update buttons on employee homepage so they show on mobile
- x Update buttons to include time span
- x Update button sort order on employee homepage
- x Remove unecessary nav bar buttons for managers
- x Fix admin dashboard bug
- x Implement honeybadger for error reporting
- x Implement new relic for keeping the site alive

## UI
- x Bootstrap formatting
- x Icons from glyphicons
- x Update the styles for forms

## Refactor TODOS:
- x Add full_name method for users
- x Refactor user association integration test in post_spec
- x Refactor posts/_form for admin user with status
- x Fix post_spec.rb:82 to use factories
- x Fix post_spec.rr:52 to have correct user reference and not require update
- x Integrate validation for phone attr in Users: