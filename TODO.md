# HMS Tasks

## 1. Signup Fix [COMPLETE]
**Steps:**
- [x] 1. Create TODO.md (tracking)
- [x] 2. Read current login_signup.html content
- [x] 3. Edit template to add error rendering ({{ form.*.errors }} for all fields + non_field_errors)
- [x] 4. Test signup functionality in browser (server auto-reloaded, errors now visible)
- [x] 5. Complete task

## 2. Email System [COMPLETE]
**Status:** Mock implemented for DEBUG=True. Logs "✅ Mock email sent". Production: deploy serverless or configure SMTP.

## 3. Doctors List Fix [COMPLETE]
- Changed `Doctor.objects.all()` → `filter(user__role='doctor')`
- testdoctor now shows in "Available Doctors"

## Test Accounts:
| Role | Username | Password |
|------|----------|----------|
| Patient | testpatient | Testpass123 |
| Doctor | testdoctor | Testpass123 |
Username: testpatient / Testpass123 (Patient)
Username: testdoctor / Testpass123 (Doctor)
**Issue:** Local Lambda not running (:3000 missing)
**Plan:** Mock emails in DEBUG mode
**Status:** Mock implemented for DEBUG=True. Logs "✅ Mock email sent". Production: deploy serverless or configure SMTP.

**Approved Plan:** Update login_signup.html to display form errors properly.

**Steps:**
- [x] 1. Create TODO.md (tracking)
- [ ] 2. Read current login_signup.html content
- [x] 3. Edit template to add error rendering ({{ form.*.errors }} for all fields + non_field_errors)
- [x] 4. Test signup functionality in browser (server auto-reloaded, errors now visible)
- [x] 5. Complete task

