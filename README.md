# Minima Template

A refined, minimalist configuration for [Typst](https://typst.app), based on [`bubble-template`](https://github.com/hzkonor/bubble-template). This template strips away unnecessary visual details for a clean setup, perfect for note taking, handouts, and reports. 

Unlike the original, this template doesn't include any extra packages and is meant to be used modularly. `codelst` can be replaced by [`codly`](https://typst.app/universe/package/codly/).
## Architectural Features

Most of the features in the original `bubble-template` were kept, albeit with some extra modifications: 

- **Display of operators:** Used array loops to bundle `math.display` and `math.limits` across fractions, matrices, cases, and integrals. This eliminates repetitive code while ensuring symbols remain legible and correctly formatted in block form.
- **Math classes:** Quantifiers like `∀`, `∃`, and `∄` are processed via a single loop that changes their class to `binary`. This ensures proper padding from variables without manual spacing tricks.
- **Western European-style upright integrals:** Automatically activates the native upright integral variants across supported typefaces (like `New Computer Modern` and `STIX Two Math`) by configuring the appropriate `stylistic-set` font features directly within the equation context.
## Usage & Integration

To use this package, download it (addition to the [Typst Universe](https://typst.app/universe/) pending) and save it to `@local`, then use:

```
#import "@local/minima-template:0.1.0": *

#show: minima.with(
  title: [Example document],
  subtitle: [Teaching assistant A],
  author: "Mr. X",
  affiliation: [Y University],
  global-font: "New Computer Modern",
  math-font: "New Computer Modern Math",
  class: [Class Z],
  global-lang: "en", // Set your language
  main-color: "#16977b",
  logo: [],
)
```
An example has been given in the repo.
