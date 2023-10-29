# subset-material-symbols


## Setup

```
git clone git@github.com:google/material-design-icons.git
```

## Build

```
docker compose up -d --build
```

## Generate Font
```
docker compose exec subset-font bash
subset_gf_icons ../material-design-icons/font/MaterialIcons-Regular.ttf menu alarm_on
```
