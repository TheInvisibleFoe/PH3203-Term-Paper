#import "@preview/touying:0.6.1": *
#import "imports.typ":*
#import themes.university: *
#import "@preview/cetz:0.3.2"
#import "@preview/fletcher:0.5.4" as fletcher: node, edge
#import "@preview/numbly:0.1.0": numbly
#import "@preview/theorion:0.3.2": *
#import "@preview/touying:0.6.1": *
#import themes.metropolis: *
#import cosmos.clouds: *
#show: show-theorion

// cetz and fletcher bindings for touying
#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))
#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  // align: horizon,
  //config-common(handout: true),
  config-common(frozen-counters: (theorem-counter,)), // freeze theorem counter for animation
  config-info(
    title: [Squeezed States of Light],
    subtitle: [PH3203 Term Paper],
    author: " Debayan Sarkar, 22MS002 \n Diptanuj Sarkar, 22MS038 \n Sabarno Saha 22MS037",
    date: datetime.today(),
    institution: [IISERK],
    logo: emoji.lightbulb,
  ),
)
#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()
= Introduction
= Literature Review
= A Primer
= Coherent States
= Squeezed States

== Variance of Squeezed States(P representation)

The Variance of the $X_1$ operator. the glauber sudarshan P representation of the squeezed state is given by
$ V(X_1) = 1/4 [1 + integral d^2 alpha P(alpha) {(alpha + alpha^*) - (expval(a) + expval(a^dagger))}^2] $

== Bibliography
---
#set align(left)
#bibliography("refs.bib")

