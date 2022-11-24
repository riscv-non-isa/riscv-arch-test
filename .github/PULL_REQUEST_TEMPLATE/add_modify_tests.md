# Add/Modify Tests

Ues this PR template if you are adding new tests or modifying existing tests.

## Description

Provide a detailed description of the changes performed by the PR.

## Related Issues

Please list all the issues related to this PR.

## Ratified/Unratified Extensions

- [ ] Ratified
- [ ] Unratified

## List Extensions

List the extensions that your PR affects. In case of unratified extensions, please provide a link to
the spec draft that was referred to make this PR.

## Reference Model Used

- [ ] SAIL
- [ ] Spike
- [ ] Other (please specify below)

## Mandatory Checklist:

  - [ ] All tests are compliant with the test-format spec present in this repo ?
  - [ ] Ran the new tests on RISCOF with SAIL/Spike as reference model successfully ?
  - [ ] Ran the new tests on RISCOF in [coverage mode](https://riscof.readthedocs.io/en/stable/commands.html#coverage)
  - [ ] Link to Google-Drive folder containing the new coverage reports ([See this]() for more info)
  - [ ] Link to PR in RISCV-ISAC from which the reports were generated.
  - [ ] Changelog entry created with a minor patch

## Optional Checklist:

  - [ ] Were the tests generated using RISCV-CTG ? If so please provide the link to the PR on RISCV-CTG
  - [ ] Were the tests hand-written/modified ?
  - [ ] Have you run these on any hard DUT model ? Please specify name and provide link if possible
  - [ ] If you have modified arch\_test.h Please provide a detailed description of the changes in
        the Description section above.
