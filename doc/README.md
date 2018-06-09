# RISC-V Compliance Task Group Documentation

This directory contains the RISC-V Foundation Compliance Task Group
documentation in AsciiDoc format.

The documentation is licensed under a [Creative Commons Attribution 4.0 International license](https://creativecommons.org/licenses/by/4.0/legalcode).  See `COPYING.CC` in the main directory for the full license text.

Versions of this documentation prior to issue 1.1 can be found as PDF in the RISC-V Compliance Task Group workspace.  Note that this is only accessible to RISC-V Task Group members.

This is the (current documentation)[./design.html].

## Contributing

You are encouraged to contribute to this repository by submitting pull requests and by commenting on pull requests submitted by other people as described in the [`README.md`](../README.md) file in the top level directory.

- Don't forget to add your own name to the list of contributors in the
  document.

## AsciiDoc

This is a structured text format. Simple usage should be fairly self evident.

- Comprehensive information on the format is on the [AsciiDoc website](http://www.methods.co.nz/asciidoc/).

- Comprehensive information on the tooling on the [AsciiDoctor website](https://asciidoctor.org/).

- You may find this [cheat sheet](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/) helpful.

### Installing tools

To generate the documentation as HTML you need _asciidoctor_ and to generat as
PDF you need _asciidoctor-pdf_.

- These are the [installation instructions for asciidoctor](https://asciidoctor.org/docs/install-toolchain/).

- These are the [installation instructions for asciidoctor-pdf](https://asciidoctor.org/docs/asciidoctor-pdf/#install-the-published-gem).

To spell check you need _aspell_ installed.

## Building the documentation

To build HTML:
```shell
make html
```

To build PDF:
```shell
make pdf
```

To build both:
```shell
make
```

To check the spelling (excludes any listing or code phrases)
```shell
make spell
```
Any custom words for spell checking should be added to `custom.wordlist`.
