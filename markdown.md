[toc]

<!-- toc -->

#  1 TOC(Table of Contents) 

## 1.1 gitbook

Create the file "book.json"

```bash
cat > ./book.json << "EOF"
{
    "plugins" : [
        "toc",
	"expandable-chapters"
    ],
    "pluginsConfig": {
        "toc": {
            "addClass": true,
            "className": "toc"
        }
    }
}
EOF
```

 install gitbook again:

```bash
gitbook install
```

add following line where the toc expected :

 ![toc](images/markdown/toc.png)

## 1.2 typora

```bash
[toc]   # A space is expected following the end
```

# 2 Markdown Syntax

## 2.1 Headings

| Markdown               | HTML                    | Rendered Output |
| ---------------------- | ----------------------- | --------------- |
| # Heading Level 1      | <h1>Heading Level 1<h1> | Heading Level 1 |
| ## Heading Level 2     | <h2>Heading Level 2<h2> | Heading Level 2 |
| ......                 | ......                  | ......          |
| ###### Heading Level 6 | <h6>Heading Level 2<h6> | Heading Level 6 |

## 2.2  text style

strikethough: ~~text~~

```bash
~~text~~
```

italics:  *text*

```bash
*text*
```

blod: **text**

```bash
**text**
```

italics+blod: ***text***

```bash
***text***
```

underline: <u>text</u>

```bash
<u>text</u>  # or "ctrl+u"
```

highlight ==text==

```bash
==text==  # you need configure the "preference-->markdown" by "ctrl+," to apply, then restart is expeted. 
```

subscript:  H~2~O

```bash
H~2~O  # configure "preference-->markdown" is expected as well.
```

superscript: m^2^/s

```bash
m^2^/s
```

emotion icon  :smile:

```bash
:smile
```

##2.3 Table

| Table heading | Table heading | Table heading |
| ------------- | ------------- | ------------- |
|               |               |               |

```bash
 |Table heading|Table heading|Table heading|  # or "ctrl+T"
```

##2.4  quote

>text
>
>>text

```bash>
>text
>>text
```

##2.5  list

1. unordered list

   number + ' . ' +space

2. ordered list 

   ' * ' ( or ' + ' or ' - ' ) + space

##2.6 code block

```bash
```bash 
```

##2.7 Horizontal Rules

---

```bash
***
---
___
```

##2.8 links

[Myblog](https://brucecookie.github.io)

```bash
[Myblog](https://brucecookie.github.io)
```

## 2.9 picture

```bash
github:  ![picture](images/How_to_blog/picture.gif)
```

# 
