Trix.config.blockAttributes = attributes =
  default:
    tagName: "div"
    parse: false
    breakOnReturn: true
  quote:
    tagName: "blockquote"
    nestable: true
  heading1:
    tagName: "h2"
    terminal: true
    breakOnReturn: true
    group: false
  heading2:
    tagName: "h3"
    terminal: true
    breakOnReturn: true
    group: false
  heading3:
    tagName: "h4"
    terminal: true
    breakOnReturn: true
    group: false
  code:
    tagName: "pre"
    terminal: true
    text:
      plaintext: true
  bulletList:
    tagName: "ul"
    parse: false
  bullet:
    tagName: "li"
    listAttribute: "bulletList"
    group: false
    nestable: true
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
  numberList:
    tagName: "ol"
    parse: false
  number:
    tagName: "li"
    listAttribute: "numberList"
    group: false
    nestable: true
    test: (element) ->
      Trix.tagName(element.parentNode) is attributes[@listAttribute].tagName
  attachmentGallery:
    tagName: "div"
    exclusive: true
    terminal: true
    parse: false
    group: false
