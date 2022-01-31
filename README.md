# DocumentationPrototype

[![Build status](https://github.com/olekscode/DocumentationPrototype/workflows/CI/badge.svg)](https://github.com/olekscode/DocumentationPrototype/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/olekscode/DocumentationPrototype/badge.svg?branch=master)](https://coveralls.io/github/olekscode/DocumentationPrototype?branch=master)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/olekscode/DocumentationPrototype/master/LICENSE)

## How to install it?

To install `DocumentationPrototype`, go to the Playground (Ctrl+OW) on your [Pharo](https://pharo.org/) image and execute the following Metacello script (select it and press Do-it button or Ctrl+D):

```Smalltalk
Metacello new
  baseline: 'DocumentationPrototype';
  repository: 'github://olekscode/DocumentationPrototype/src';
  load.
```

## How to depend on it?

If you want to add a dependency on `DocumentationPrototype` to your project, include the following lines into your baseline method:

```Smalltalk
spec
  baseline: 'DocumentationPrototype'
  with: [ spec repository: 'github://olekscode/DocumentationPrototype/src' ].
```

If you are new to baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) tutorial on Pharo Wiki.

## How to use it?

Add a class side method to any of your classes specifying the path to a documentation file or a URL to a raw Markdown documentation. For example:

```Smalltalk
DocumentationBrowser class >> documentation
  ^ 'pharo-local/iceberg/olekscode/DocumentationPrototype/README.md'
```

```Smalltalk
AILinearRegression class >> documentation
  ^ 'https://raw.githubusercontent.com/pharo-ai/linear-models-posts/master/understanding-linear-regression.md'
```

Then right-click on that class or any method in it and click on `Browse documentation`.
