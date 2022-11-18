# reorder-saddle-stitch-book-pages

reorders scanned image files of saddle-stitch book.

Suppose a page of a saddle-stitch book looks like this
```
[front left][front right]|[back left][back right]
```

## How to use

### left binding
The 12 pages of a book are made up of three sheets of paper, as shown below.
```
[11][00]|[01][10]
[09][02]|[03][08]
[07][04]|[05][06]
```

Scanning and splitting pages results in continuous scanned images as shown below.
```
11, 00, 01, 10, 09, 02, 03, 08, 07, 04, 05, 06
```

To reorder them, Select all images and drag & drop them into left-binding.bat


### right binding
The 16 pages of a book are made up of three sheets of paper, as shown below.
```
[00][15]|[14][01]
[02][13]|[12][03]
[04][11]|[10][05]
[06][09]|[08][07]
```

Scanning and splitting pages results in continuous scanned images as shown below.
```
00, 15, 14, 01, 02, 13, 12, 03, 04, 11, 10, 05, 06, 09, 08, 07
```

To reorder them, Select all images and drag & drop them into right-binding.bat
