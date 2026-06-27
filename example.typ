#import "@local/minima-template:0.1.0": *
#import "@preview/codly:1.3.0": * // Use codly in place of codelst
#import "@preview/codly-languages:0.1.1": *
#let global-color = rgb("#29b0c8")
#show: codly-init.with()
#show: minima.with(
  title: [Example document],
  subtitle: [Teaching assistant A],
  author: "Mr. X",
  affiliation: [Y University],
  global-font: "New Computer Modern",
  math-font: "New Computer Modern Math",
  class: [Class Z],
  global-lang: "en",
  main-color: global-color,
  logo: [
  #let original = read("assets/hcmus.svg") // Custom SVG
  #context {
  let replaced = original.replace("#273e74", rgb(global-color).to-hex())
  image(bytes(replaced)) // Replace the color in the SVG to anything you want
  }
  ],
)
=
```cpp
// Exercises for chapter 6:
// 2D arrays (matrices)
#include <cstdlib>
#include <iostream>
#include <cmath>
using namespace std;
const int MAX = 100;
void input_matrix (int a[][MAX], int m, int n) {
   // Exercise 311 
   for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            cout << "Input a[" << i << "][" << j << "]: " << endl;
            cin >> a[i][j];
        }
   } 
}
void output_matrix (int a[][MAX], int m, int n) {
   // Exercise 314 
   for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            cout << a[i][j] << " ";
        }
        cout << endl;
   } 
}
```