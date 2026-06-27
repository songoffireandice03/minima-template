# Minima Template

A highly refined, minimalist configuration for [Typst](https://typst.app), based on [`bubble-template`](https://github.com/hzkonor/bubble-template). This template strips away unnecessary visual details for a clean setup, perfect for note taking, handouts, and reports. 

Unlike the original, this template doesn't include extra packages and is meant to be used modularly. `codelst` can be replaced by [codly](https://typst.app/universe/package/codly/).
## Architectural Features

Most of the features in the original `bubble-template` were kept, albeit with some extra modifications: 

- ****

## Usage & Integration

To use this package, download it (addition to the [Typst Universe](https://typst.app/universe/) pending) and save it to local, then use:

```typst
#import "@universe/minima-template:0.14.2": project

#show: project.with(
  title: "Your Title Here",
  authors: ("Your Name Here",),
  main-color: rgb("#4A6FA5"),
)
