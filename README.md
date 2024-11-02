# Compio Logo

This is the repository for the official logo of Compio. The original design was done by @Berrysoft with [LaTex](https://www.latex-project.org/) and later rewritten by @George-Miao in [typst](https://typst.app) and [CeTZ](https://cetz-package.github.io).

## Variants

|       Name        |                        Preview                        |
| :---------------: | :---------------------------------------------------: |
|      `outline`      |           !["outline" variant of the logo](generated/outline.svg)           |
|       `bold`        |              !["bold" variant of the logo](generated/bold.svg)              |
|  `bold-with-text`   |    !["bold-with-text" variant of the logo](generated/bold-with-text.svg)    |
|   `colored-bold`    |      !["colored-bold" variant of the logo](generated/colored-bold.svg)      |
|  `colored-outline`  |   !["colored-outline" variant of the logo](generated/colored-outline.svg)   |
| `colored-with-text` | !["colored-with-text" variant of the logo](generated/colored-with-text.svg) |

## Usage

Pre-generated SVG's can be found under [`generated`](./generated). To build the logo, you need to have [typst](https://typst.app) set up. Then use [make](https://www.gnu.org/software/make/) to build the logo:

```bash
make logo # This will build all logos to `./generated`
```

Alternatively, it's possible to run the `typst` command to build variant directly:

```bash
typst c logo.typ --format=svg --input variant=outline
```

This will generate an SVG file in current directory. Replace `outline` with other variants to build different logos. For more information, please refer to the [typst documentation](https://typst.app/docs).

## License

The logo along with its source code is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/), see [LICENSE](./LICENSE) for full legal code.
