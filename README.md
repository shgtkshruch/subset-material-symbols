# subset-material-symbols


## Setup

```sh
make setup
```

## Add Icons

Add target icons to `./icons.json`.  

You can check icon names at this URL.  
URL: https://fonts.google.com/icons


## Up

```sh
make up
```

## Create Subsetted Font

```sh
make exec
subset_gf_icons ../material-design-icons/variablefont/MaterialSymbolsRounded[FILL,GRAD,opsz,wght].ttf --flavor woff2 $(cat ../icons.json | jq -r '.icons | join(" ")')
```

This command generate subsetted font to `material-design-icons/variablefont/MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-subset.woff2`.


## Links

- https://github.com/rsheeter/subset-gf-icons
- https://github.com/google/material-design-icons
- https://github.com/google/material-design-icons/issues/1201
