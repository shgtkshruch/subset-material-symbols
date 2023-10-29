# subset-material-symbols


## Setup

```sh
make download-font
```

## Build

```sh
make build
```

## Generate Font

```sh
make exec
subset_gf_icons ../material-design-icons/variablefont/MaterialSymbolsRounded[FILL,GRAD,opsz,wght].ttf --flavor woff2 $(cat ../icons.json | jq -r '.icons | join(" ")')
```
