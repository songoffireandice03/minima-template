// main project
#let minima(
  title: "",
  subtitle: "",
  author: "",
  affiliation: "",
  global-font: "",
  math-font: "",
  global-lang: "en",
  year: datetime.today().display("[year]"),
  class: none,
  date: datetime.today().display(),
  logo: [],
  main-color: "#003F88",
  alpha: 60%,
  body,
) = context {
  // Set the document's basic properties.
  set page(
    numbering: "1",
    number-align: center,
  )
  set document(author: author, title: title)
  // set page(flipped: true)
  // Set the math font
  // Ensure the integrals are upright
  show math.equation: it => context {
    set text(font: math-font, stylistic-set: 8) if (math-font == "STIX Two Math")
    set text(font: math-font, stylistic-set: 8) if (math-font == "Lete Sans Math")
    set text(font: math-font, stylistic-set: 2) if (math-font == "New Computer Modern Math")
    set text(font: math-font, stylistic-set: 2) if (math-font == "New Computer Modern Sans Math")
    set text(font: math-font, stylistic-set: 2) if (math-font == "Noto Sans Math")
    it
  }
  show math.integral: math.limits
  // Set colors
  let primary-color = rgb(main-color) // alpha = 100%
  // change alpha of primary color
  let secondary-color = primary-color.lighten(25%)
  let tertiary-color = color.mix(color.rgb(100%, 100%, 100%, alpha), primary-color, space: rgb)
  //customize look of figure
  set figure.caption(separator: [. ], position: bottom)

  //customize inline raw code
  show raw.where(block: false): it => h(0.5em) + box(fill: primary-color.lighten(90%), outset: 0.2em, it) + h(0.5em)

  // Set body font family
  set text(font: global-font, lang: global-lang, 12pt)
  // Set raw code font family
  show raw: set text(font: "Iosevka NF") // Change the font according to your needs
  //heading numbering
  set heading(numbering: "1.")
  show heading: it => context {
    set par(first-line-indent: 0em)
    set text(font: global-font, fill: primary-color)

    if it.numbering != none {
      text(rgb(primary-color))[#counter(heading).display() ]
    }
    it.body
  }

  // Set link style
  show link: it => underline(text(fill: primary-color, it))


  //numbered list colored
  set enum(numbering: n => [#text(fill: primary-color, numbering("1.a.i.", n))])

  //unordered list colored
  set list(indent: 0.5em, marker: n => context {
    text(fill: primary-color, [--])
  })

  // display of outline entries
  show outline.entry: it => text(size: 12pt, weight: "semibold", it)

  // Title page.
  // Set the position of the logo
  if logo != none {
    set image(width: 5.5cm)
    place(top + center, logo)
  }
  // Central decorations
  v(1.5fr)
  align(center, text(font: global-font, 1.5em, weight: "semibold", title))
  v(2em, weak: true)
  align(center, text(font: global-font, 1em, weight: "semibold", subtitle))
  v(2em, weak: true)
  align(center, text(1.1em, date))
  v(2em, weak: true)

  v(2fr)

  // Author information.
  align(center)[
    #text(author, 14pt, weight: "bold") \
    #affiliation \ #year\ #emph[#class]
  ]

  pagebreak()

  // Page numbering
  // Main body.
  // set page(
  //   header: [#emph()[#title #h(1fr) #author\ #subtitle ]],
  // )
  // show heading.where(level: 1): set align(center)
  show outline: set heading(numbering: none)
  show outline: set par(first-line-indent: 0em)
  // show ref: underline.with(stroke: primary-color)
  // show ref: set text(fill: primary-color)
  show outline.entry.where(level: 1): it => context {
    text(font: global-font, rgb(primary-color))[#strong[#it]]
  }
  show outline.entry.where(level: 2): it => context {
    text(font: global-font, rgb(primary-color))[#strong[#it]]
  }
  show outline.entry.where(level: 3): it => context {
    text(font: global-font, rgb(primary-color))[#strong[#it]]
  }
  show outline.entry: it => context {
    h(1em)
    text(font: global-font, rgb(primary-color))[#it]
  }
  body
}