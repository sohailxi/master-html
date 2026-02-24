const Map<String, List<Map<String, dynamic>>> allQuiz = {
  //Quiz for the first lesson(HTML Introduction)
  "HTML Introduction": [
    {
      "question": "Which version of HTML is currently in use?",
      "correct_answer": "HTML5",
      "options": ["HTML4", "HTML5", "HTML6"]
    },
    {
      "question": "Which element specifies a title for the web page?",
      "correct_answer": "title",
      "options": ["title", "head", "meta"]
    },
    {
      "question": "How to tell the browser that our file is HTML5 file?",
      "correct_answer": "By declaring <!DOCTYPE html>",
      "options": [
        "By declaring <!DOCTYPE html>",
        "Writing <head> element twice",
        "Writing meta elements"
      ]
    },
    {
      "question": "What kind of language is HTML?",
      "correct_answer": "Markup Language",
      "options": ["Programming language", "Gaming language", "Markup Language"]
    },
    {
      "question": "What does HTML stand for?",
      "correct_answer": "Hyper Text Markup Language",
      "options": [
        "Hyper Transformative Markup Language",
        "Hyper Text Markup Language",
        "Hyper Fast Programming Language"
      ]
    }
  ],
//Quiz for the second lesson(Code Editor)
  "Code Editor": [
    {
      "question": "What is the extension of a HTML file?",
      "correct_answer": ".html",
      "options": [".MP3", ".Jpg", ".html"]
    },
    {
      "question": "What is code editors also known by?",
      "correct_answer": "Text editor",
      "options": ["Computer editor", "Text editor", "Browser editor"]
    },
    {
      "question": "On what device can you write code?",
      "correct_answer": "Both",
      "options": ["Computer", "Smartphone", "Both"]
    },
    {
      "question": "Where can we create a file?",
      "correct_answer": "In any folder",
      "options": ["In any folder", "In html code", "None of the above"]
    },
    {
      "question": "Which one is a code editor for mobile?",
      "correct_answer": "Spck Editor",
      "options": ["VS code", "Spck Editor", "Sublime"]
    }
  ],
  //Quiz for the third lesson(HTML Boilerplate)
  "HTML Boilerplate": [
    {
      "question": "What is boilerplate code?",
      "correct_answer": "Repeated code sections",
      "options": ["Repeated code sections", "New code", "Random code"]
    },
    {
      "question": "Which element is the root element of an HTML page?",
      "correct_answer": "html",
      "options": ["head", "body", "html"]
    },
    {
      "question": "What is the purpose of boilerplate code?",
      "correct_answer": "To avoid writing the same code repeatedly",
      "options": [
        "To avoid writing the same code repeatedly",
        "To make code longer",
        "To confuse developers"
      ]
    }
  ],
  //Quiz for the fourth lesson(HTML Elements)
  "HTML Elements": [
    {
      "question": "What is an HTML element?",
      "correct_answer": "A combination of start tag, content, and end tag",
      "options": [
        "A combination of start tag, content, and end tag",
        "Just the start tag",
        "Just the content"
      ]
    },
    {
      "question": "What are empty elements?",
      "correct_answer": "Elements without closing tags",
      "options": [
        "Elements without closing tags",
        "Elements without content",
        "Elements without attributes"
      ]
    },
    {
      "question": "Which of these is an empty element?",
      "correct_answer": "<img>",
      "options": ["<p>", "<img>", "<div>"]
    },
    {
      "question": "What is nested HTML?",
      "correct_answer": "Elements inside other elements",
      "options": [
        "Elements inside other elements",
        "Elements next to each other",
        "Elements with the same name"
      ]
    }
  ],

  //Quiz for the fifth lesson(HTML Attributes)
  "HTML Attributes": [
    {
      "question": "What are HTML attributes used for?",
      "correct_answer": "To provide additional information about elements",
      "options": [
        "To provide additional information about elements",
        "To create new elements",
        "To delete elements"
      ]
    },
    {
      "question": "Where are attributes placed?",
      "correct_answer": "In the start tag",
      "options": ["In the start tag", "In the end tag", "Between tags"]
    },
    {
      "question": "What is the correct syntax for an attribute?",
      "correct_answer": "name=\"value\"",
      "options": ["name=\"value\"", "name=value", "name:value"]
    },
    {
      "question": "Can an element have multiple attributes?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only sometimes"]
    }
  ],

  //Quiz for the sixth lesson(HTML Comments)
  "HTML Comments": [
    {
      "question": "Why should we use comments in HTML?",
      "correct_answer": "To explain the code",
      "options": [
        "To explain the code",
        "For code decoration",
        "To make our code faster"
      ]
    },
    {
      "question": "Which one is comment tag in HTML?",
      "correct_answer": "<!-- -->",
      "options": ["<comment></comment>", "<xx- -xx>", "<!-- -->"]
    },
    {
      "question": "Are Comments displayed by browsers?",
      "correct_answer": "No",
      "options": ["Yes", "No", "Sometimes"]
    }
  ],

  //Quiz for the seventh lesson(HTML Headings)
  "HTML Headings": [
    {
      "question": "How many heading levels are there in HTML?",
      "correct_answer": "6",
      "options": ["4", "6", "8"]
    },
    {
      "question": "Which heading is the largest?",
      "correct_answer": "h1",
      "options": ["h1", "h6", "h3"]
    },
    {
      "question": "How many h1 elements should be on a page?",
      "correct_answer": "One",
      "options": ["One", "Multiple", "None"]
    },
    {
      "question": "What is the purpose of headings?",
      "correct_answer": "To structure content and improve SEO",
      "options": [
        "To structure content and improve SEO",
        "To make text bigger",
        "To add colors"
      ]
    }
  ],

  //Quiz for the eighth lesson(HTML Paragraphs)
  "HTML Paragraphs": [
    {
      "question": "Which element defines a paragraph?",
      "correct_answer": "<p>",
      "options": ["<p>", "<para>", "<text>"]
    },
    {
      "question": "Are paragraphs block-level elements?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Sometimes"]
    },
    {
      "question": "How do you center-align a paragraph?",
      "correct_answer": "style=\"text-align: center\"",
      "options": [
        "style=\"text-align: center\"",
        "style=\"center: true\"",
        "style=\"align: center\""
      ]
    }
  ],

  //Quiz for the ninth lesson(HTML Styling)
  "HTML Styling": [
    {
      "question": "What is inline styling?",
      "correct_answer": "CSS written inside HTML elements",
      "options": [
        "CSS written inside HTML elements",
        "CSS in separate files",
        "CSS in the head section"
      ]
    },
    {
      "question": "Where is internal CSS placed?",
      "correct_answer": "In the head section",
      "options": [
        "In the head section",
        "In the body section",
        "In a separate file"
      ]
    },
    {
      "question": "What is the purpose of CSS?",
      "correct_answer": "To style and format HTML elements",
      "options": [
        "To style and format HTML elements",
        "To create HTML elements",
        "To delete HTML elements"
      ]
    }
  ],

  //Quiz for the tenth lesson(HTML Images)
  "HTML images": [
    {
      "question": "Which element is used to display images?",
      "correct_answer": "<img>",
      "options": ["<img>", "<image>", "<picture>"]
    },
    {
      "question": "What is the required attribute for images?",
      "correct_answer": "src",
      "options": ["src", "alt", "width"]
    },
    {
      "question": "What is the purpose of the alt attribute?",
      "correct_answer": "To provide alternative text for accessibility",
      "options": [
        "To provide alternative text for accessibility",
        "To make the image bigger",
        "To change the image color"
      ]
    },
    {
      "question": "Which image format supports transparency?",
      "correct_answer": "PNG",
      "options": ["JPEG", "PNG", "GIF"]
    }
  ],

  //Quiz for the eleventh lesson(HTML Links)
  "HTML Links": [
    {
      "question": "Which element creates a hyperlink?",
      "correct_answer": "<a>",
      "options": ["<a>", "<link>", "<href>"]
    },
    {
      "question": "What attribute specifies the link destination?",
      "correct_answer": "href",
      "options": ["href", "src", "link"]
    },
    {
      "question": "How do you create an email link?",
      "correct_answer": "mailto:email@example.com",
      "options": [
        "mailto:email@example.com",
        "email:email@example.com",
        "link:email@example.com"
      ]
    },
    {
      "question": "What does target=\"_blank\" do?",
      "correct_answer": "Opens link in a new tab",
      "options": [
        "Opens link in a new tab",
        "Opens link in the same tab",
        "Closes the current tab"
      ]
    }
  ],

  //Quiz for the twelfth lesson(HTML Line Breaks)
  "HTML Line Breaks": [
    {
      "question": "Which element creates a line break?",
      "correct_answer": "<br>",
      "options": ["<br>", "<break>", "<lb>"]
    },
    {
      "question": "Is <br> an empty element?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Sometimes"]
    },
    {
      "question": "Can you use multiple <br> tags?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only two"]
    }
  ],

  //Quiz for the thirteenth lesson(HTML Horizontal Rule)
  "HTML Horizontal Rule": [
    {
      "question": "Which element creates a horizontal line?",
      "correct_answer": "<hr>",
      "options": ["<hr>", "<line>", "<rule>"]
    },
    {
      "question": "Is <hr> an empty element?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Sometimes"]
    },
    {
      "question": "Can you style horizontal rules?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only with CSS"]
    }
  ],

  //Quiz for the fourteenth lesson(HTML Text Formatting)
  "HTML Text Formatting": [
    {
      "question": "Which element makes text bold?",
      "correct_answer": "<b>",
      "options": ["<b>", "<bold>", "<strong>"]
    },
    {
      "question": "Which element makes text italic?",
      "correct_answer": "<i>",
      "options": ["<i>", "<italic>", "<em>"]
    },
    {
      "question": "Which element underlines text?",
      "correct_answer": "<u>",
      "options": ["<u>", "<underline>", "<line>"]
    },
    {
      "question": "Which element highlights text?",
      "correct_answer": "<mark>",
      "options": ["<mark>", "<highlight>", "<bg>"]
    }
  ],

  //Quiz for the fifteenth lesson(HTML Block vs Inline Elements)
  "HTML Block vs Inline Elements": [
    {
      "question": "Do block elements start on a new line?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Sometimes"]
    },
    {
      "question": "Do inline elements take full width?",
      "correct_answer": "No",
      "options": ["No", "Yes", "Sometimes"]
    },
    {
      "question": "Which is a block element?",
      "correct_answer": "<div>",
      "options": ["<div>", "<span>", "<a>"]
    },
    {
      "question": "Which is an inline element?",
      "correct_answer": "<span>",
      "options": ["<span>", "<div>", "<p>"]
    }
  ],

  //Quiz for the sixteenth lesson(HTML Sections)
  "HTML Sections": [
    {
      "question": "What does the <section> element represent?",
      "correct_answer": "A standalone section of content",
      "options": [
        "A standalone section of content",
        "A navigation menu",
        "A footer"
      ]
    },
    {
      "question": "Should sections have headings?",
      "correct_answer": "Yes, typically",
      "options": ["Yes, typically", "No", "Only sometimes"]
    },
    {
      "question": "What is the purpose of sections?",
      "correct_answer": "To group related content",
      "options": [
        "To group related content",
        "To style content",
        "To hide content"
      ]
    }
  ],

  //Quiz for the seventeenth lesson(HTML Articles)
  "HTML Articles": [
    {
      "question": "What does the <article> element represent?",
      "correct_answer": "Self-contained content",
      "options": [
        "Self-contained content",
        "Navigation links",
        "Footer content"
      ]
    },
    {
      "question": "When should you use <article>?",
      "correct_answer": "For blog posts and news stories",
      "options": [
        "For blog posts and news stories",
        "For navigation menus",
        "For footers"
      ]
    },
    {
      "question": "Can articles contain other semantic elements?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only some"]
    }
  ],

  //Quiz for the eighteenth lesson(HTML Tables)
  "HTML Tables": [
    {
      "question": "Which element defines a table?",
      "correct_answer": "<table>",
      "options": ["<table>", "<tab>", "<grid>"]
    },
    {
      "question": "Which element defines a table row?",
      "correct_answer": "<tr>",
      "options": ["<tr>", "<row>", "<td>"]
    },
    {
      "question": "Which element defines a table header cell?",
      "correct_answer": "<th>",
      "options": ["<th>", "<header>", "<td>"]
    },
    {
      "question": "Which element defines a table data cell?",
      "correct_answer": "<td>",
      "options": ["<td>", "<data>", "<cell>"]
    }
  ],

  //Quiz for the nineteenth lesson(HTML Lists)
  "HTML Lists": [
    {
      "question": "Which element creates an unordered list?",
      "correct_answer": "<ul>",
      "options": ["<ul>", "<ol>", "<list>"]
    },
    {
      "question": "Which element creates an ordered list?",
      "correct_answer": "<ol>",
      "options": ["<ol>", "<ul>", "<list>"]
    },
    {
      "question": "Which element defines a list item?",
      "correct_answer": "<li>",
      "options": ["<li>", "<item>", "<list-item>"]
    },
    {
      "question": "Can you nest lists?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only ordered lists"]
    }
  ],

  //Quiz for the twentieth lesson(HTML Forms)
  "HTML Forms": [
    {
      "question": "Which element creates a form?",
      "correct_answer": "<form>",
      "options": ["<form>", "<input>", "<fieldset>"]
    },
    {
      "question": "What does the action attribute specify?",
      "correct_answer": "Where to send form data",
      "options": [
        "Where to send form data",
        "What type of form it is",
        "How to style the form"
      ]
    },
    {
      "question": "What are the two main form methods?",
      "correct_answer": "GET and POST",
      "options": ["GET and POST", "SEND and RECEIVE", "INPUT and OUTPUT"]
    }
  ],

  //Quiz for the twenty-first lesson(HTML Input)
  "HTML Input": [
    {
      "question": "Which element is the most important form element?",
      "correct_answer": "<input>",
      "options": ["<input>", "<text>", "<field>"]
    },
    {
      "question": "What does the type attribute control?",
      "correct_answer": "How the input is displayed",
      "options": [
        "How the input is displayed",
        "The input name",
        "The input value"
      ]
    },
    {
      "question": "Which input type is for passwords?",
      "correct_answer": "password",
      "options": ["password", "text", "hidden"]
    },
    {
      "question": "Which input type validates email format?",
      "correct_answer": "email",
      "options": ["email", "text", "mail"]
    }
  ],

  //Quiz for the twenty-second lesson(HTML Input Part 2)
  "HTML Input Part 2": [
    {
      "question": "Which input type shows a date picker?",
      "correct_answer": "date",
      "options": ["date", "time", "datetime"]
    },
    {
      "question": "Which input type shows a color picker?",
      "correct_answer": "color",
      "options": ["color", "palette", "rgb"]
    },
    {
      "question": "Which input type creates a slider?",
      "correct_answer": "range",
      "options": ["range", "slider", "number"]
    },
    {
      "question": "Which input type allows file uploads?",
      "correct_answer": "file",
      "options": ["file", "upload", "document"]
    }
  ],

  //Quiz for the twenty-third lesson(HTML Input part 3)
  "HTML Input part 3": [
    {
      "question": "Which input type allows only one selection?",
      "correct_answer": "radio",
      "options": ["radio", "checkbox", "select"]
    },
    {
      "question": "Which input type allows multiple selections?",
      "correct_answer": "checkbox",
      "options": ["checkbox", "radio", "select"]
    },
    {
      "question": "What attribute groups radio buttons together?",
      "correct_answer": "name",
      "options": ["name", "group", "type"]
    }
  ],

  //Quiz for the twenty-fourth lesson(HTML Form Labels)
  "HTML Form Labels": [
    {
      "question": "Which element defines a label?",
      "correct_answer": "<label>",
      "options": ["<label>", "<text>", "<caption>"]
    },
    {
      "question": "What attribute associates a label with a form element?",
      "correct_answer": "for",
      "options": ["for", "id", "name"]
    },
    {
      "question": "Do labels improve accessibility?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Sometimes"]
    }
  ],

  //Quiz for the twenty-fifth lesson(HTML Buttons)
  "HTML Buttons": [
    {
      "question": "Which element creates a button?",
      "correct_answer": "<button>",
      "options": ["<button>", "<btn>", "<click>"]
    },
    {
      "question": "What does type=\"submit\" do?",
      "correct_answer": "Submits the form",
      "options": ["Submits the form", "Resets the form", "Opens a new page"]
    },
    {
      "question": "What does type=\"reset\" do?",
      "correct_answer": "Clears the form",
      "options": ["Clears the form", "Submits the form", "Saves the form"]
    }
  ],

  //Quiz for the twenty-sixth lesson(HTML Dropdown Lists)
  "HTML Dropdown Lists": [
    {
      "question": "Which element creates a dropdown list?",
      "correct_answer": "<select>",
      "options": ["<select>", "<dropdown>", "<list>"]
    },
    {
      "question": "Which element defines an option in a dropdown?",
      "correct_answer": "<option>",
      "options": ["<option>", "<item>", "<choice>"]
    },
    {
      "question": "What attribute allows multiple selections?",
      "correct_answer": "multiple",
      "options": ["multiple", "many", "several"]
    }
  ],

  //Quiz for the twenty-seventh lesson(HTML Textarea)
  "HTML Textarea": [
    {
      "question": "Which element creates a multi-line text input?",
      "correct_answer": "<textarea>",
      "options": ["<textarea>", "<text>", "<multiline>"]
    },
    {
      "question": "What attribute sets the number of visible rows?",
      "correct_answer": "rows",
      "options": ["rows", "height", "lines"]
    },
    {
      "question": "What attribute sets the visible width?",
      "correct_answer": "cols",
      "options": ["cols", "width", "size"]
    }
  ],

  //Quiz for the twenty-eighth lesson(HTML Form Attributes)
  "HTML Form Attributes": [
    {
      "question": "What does the required attribute do?",
      "correct_answer": "Makes a field mandatory",
      "options": [
        "Makes a field mandatory",
        "Makes a field optional",
        "Hides a field"
      ]
    },
    {
      "question": "What does the min attribute do?",
      "correct_answer": "Sets minimum value",
      "options": ["Sets minimum value", "Sets maximum value", "Sets default value"]
    },
    {
      "question": "What does the max attribute do?",
      "correct_answer": "Sets maximum value",
      "options": ["Sets maximum value", "Sets minimum value", "Sets default value"]
    }
  ],

  //Quiz for the twenty-ninth lesson(HTML Form Attributes part 2)
  "HTML Form Attributes part 2": [
    {
      "question": "What does the pattern attribute use?",
      "correct_answer": "Regular expressions",
      "options": [
        "Regular expressions",
        "CSS rules",
        "JavaScript code"
      ]
    },
    {
      "question": "What does autofocus do?",
      "correct_answer": "Automatically focuses the input",
      "options": [
        "Automatically focuses the input",
        "Automatically fills the input",
        "Automatically submits the form"
      ]
    },
    {
      "question": "What does novalidate do?",
      "correct_answer": "Disables form validation",
      "options": [
        "Disables form validation",
        "Enables form validation",
        "Changes validation rules"
      ]
    }
  ],

  //Quiz for the thirtieth lesson(HTML File Paths)
  "HTML File Paths": [
    {
      "question": "What is an absolute path?",
      "correct_answer": "Complete URL from web root",
      "options": [
        "Complete URL from web root",
        "Path relative to current file",
        "Path from website root"
      ]
    },
    {
      "question": "What is a relative path?",
      "correct_answer": "Path relative to current file",
      "options": [
        "Path relative to current file",
        "Complete URL",
        "Path from website root"
      ]
    },
    {
      "question": "Which path type is most commonly used for internal links?",
      "correct_answer": "Relative paths",
      "options": ["Relative paths", "Absolute paths", "Root-relative paths"]
    }
  ],

  //Quiz for the thirty-first lesson(HTML Meta Tags)
  "HTML Meta Tags": [
    {
      "question": "Where are meta tags placed?",
      "correct_answer": "In the head section",
      "options": [
        "In the head section",
        "In the body section",
        "Anywhere in the document"
      ]
    },
    {
      "question": "What does the charset meta tag do?",
      "correct_answer": "Defines character encoding",
      "options": [
        "Defines character encoding",
        "Sets page title",
        "Controls viewport"
      ]
    },
    {
      "question": "What does the viewport meta tag do?",
      "correct_answer": "Controls page layout on mobile",
      "options": [
        "Controls page layout on mobile",
        "Sets page width",
        "Controls page height"
      ]
    }
  ],

  //Quiz for the thirty-second lesson(HTML Fonts)
  "HTML Fonts": [
    {
      "question": "Which property sets the font type?",
      "correct_answer": "font-family",
      "options": ["font-family", "font-type", "font-style"]
    },
    {
      "question": "Which property sets the font size?",
      "correct_answer": "font-size",
      "options": ["font-size", "font-height", "font-width"]
    },
    {
      "question": "Which property makes text bold?",
      "correct_answer": "font-weight",
      "options": ["font-weight", "font-bold", "font-style"]
    },
    {
      "question": "Should you provide fallback fonts?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only for special fonts"]
    }
  ],

  //Quiz for the thirty-third lesson(HTML nbsp)
  "HTML nbsp": [
    {
      "question": "What does &nbsp; represent?",
      "correct_answer": "Non-breaking space",
      "options": [
        "Non-breaking space",
        "Regular space",
        "Tab character"
      ]
    },
    {
      "question": "What does &nbsp; prevent?",
      "correct_answer": "Line breaks",
      "options": ["Line breaks", "Spaces", "Characters"]
    },
    {
      "question": "When should you use &nbsp;?",
      "correct_answer": "To keep words together",
      "options": [
        "To keep words together",
        "To add extra spacing",
        "To create paragraphs"
      ]
    }
  ],

  //Quiz for the thirty-fourth lesson(Semantic HTML)
  "Semantic HTML": [
    {
      "question": "What is semantic HTML?",
      "correct_answer": "HTML with meaningful elements",
      "options": [
        "HTML with meaningful elements",
        "HTML with colors",
        "HTML with animations"
      ]
    },
    {
      "question": "Which element represents navigation?",
      "correct_answer": "<nav>",
      "options": ["<nav>", "<menu>", "<navigation>"]
    },
    {
      "question": "Which element represents the main content?",
      "correct_answer": "<main>",
      "options": ["<main>", "<content>", "<body>"]
    },
    {
      "question": "Do semantic elements improve accessibility?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Sometimes"]
    }
  ],

  //Quiz for the thirty-fifth lesson(Semantic HTML part 2)
  "Semantic HTML part 2": [
    {
      "question": "Which element represents a figure?",
      "correct_answer": "<figure>",
      "options": ["<figure>", "<image>", "<picture>"]
    },
    {
      "question": "Which element represents a time?",
      "correct_answer": "<time>",
      "options": ["<time>", "<date>", "<datetime>"]
    },
    {
      "question": "Which element represents highlighted text?",
      "correct_answer": "<mark>",
      "options": ["<mark>", "<highlight>", "<bg>"]
    }
  ],

  //Quiz for the thirty-sixth lesson(HTML Figures)
  "HTML Figures": [
    {
      "question": "What does the <figure> element represent?",
      "correct_answer": "Self-contained content",
      "options": [
        "Self-contained content",
        "Navigation menu",
        "Footer content"
      ]
    },
    {
      "question": "Which element provides a caption for a figure?",
      "correct_answer": "<figcaption>",
      "options": ["<figcaption>", "<caption>", "<title>"]
    },
    {
      "question": "Can figures contain code examples?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only images"]
    }
  ],

  //Quiz for the thirty-seventh lesson(HTML Character Entities)
  "HTML Character Entities": [
    {
      "question": "What does &lt; represent?",
      "correct_answer": "Less than symbol (<)",
      "options": [
        "Less than symbol (<)",
        "Greater than symbol (>)",
        "Ampersand (&)"
      ]
    },
    {
      "question": "What does &gt; represent?",
      "correct_answer": "Greater than symbol (>)",
      "options": [
        "Greater than symbol (>)",
        "Less than symbol (<)",
        "Ampersand (&)"
      ]
    },
    {
      "question": "What does &amp; represent?",
      "correct_answer": "Ampersand (&)",
      "options": ["Ampersand (&)", "Less than (<)", "Greater than (>)"]
    },
    {
      "question": "What does &copy; represent?",
      "correct_answer": "Copyright symbol (©)",
      "options": [
        "Copyright symbol (©)",
        "Registered symbol (®)",
        "Trademark symbol (™)"
      ]
    }
  ],

  //Quiz for the thirty-eighth lesson(HTML Videos)
  "HTML Videos": [
    {
      "question": "Which element embeds video content?",
      "correct_answer": "<video>",
      "options": ["<video>", "<movie>", "<media>"]
    },
    {
      "question": "What does the controls attribute do?",
      "correct_answer": "Shows video controls",
      "options": [
        "Shows video controls",
        "Hides video controls",
        "Changes video size"
      ]
    },
    {
      "question": "What does the autoplay attribute do?",
      "correct_answer": "Starts playing automatically",
      "options": [
        "Starts playing automatically",
        "Stops playing",
        "Loops the video"
      ]
    },
    {
      "question": "Should autoplay videos be muted?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Sometimes"]
    }
  ],

  //Quiz for the thirty-ninth lesson(HTML Audios)
  "HTML Audios": [
    {
      "question": "Which element embeds audio content?",
      "correct_answer": "<audio>",
      "options": ["<audio>", "<sound>", "<music>"]
    },
    {
      "question": "What does the loop attribute do?",
      "correct_answer": "Repeats the audio",
      "options": ["Repeats the audio", "Stops the audio", "Pauses the audio"]
    },
    {
      "question": "Should you provide multiple audio formats?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only for large files"]
    }
  ],

  //Quiz for the fortieth lesson(HTML Pictures)
  "HTML Pictures": [
    {
      "question": "What does the <picture> element provide?",
      "correct_answer": "Multiple image sources",
      "options": [
        "Multiple image sources",
        "Single image source",
        "Video sources"
      ]
    },
    {
      "question": "What is the purpose of the picture element?",
      "correct_answer": "Responsive images",
      "options": [
        "Responsive images",
        "Animated images",
        "Interactive images"
      ]
    },
    {
      "question": "Should you include a fallback img element?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only sometimes"]
    }
  ],

  //Quiz for the forty-first lesson(HTML Iframe)
  "HTML Iframe": [
    {
      "question": "What does the <iframe> element do?",
      "correct_answer": "Embeds another HTML page",
      "options": [
        "Embeds another HTML page",
        "Creates a new page",
        "Opens a new window"
      ]
    },
    {
      "question": "What does target=\"_blank\" do for iframes?",
      "correct_answer": "Nothing (not applicable)",
      "options": [
        "Nothing (not applicable)",
        "Opens in new tab",
        "Opens in new window"
      ]
    },
    {
      "question": "Should you embed untrusted content in iframes?",
      "correct_answer": "No",
      "options": ["No", "Yes", "Sometimes"]
    }
  ],

  //Quiz for the forty-second lesson(HTML Iframe part 2)
  "HTML Iframe part 2": [
    {
      "question": "What does the sandbox attribute do?",
      "correct_answer": "Restricts iframe capabilities",
      "options": [
        "Restricts iframe capabilities",
        "Enables all features",
        "Changes iframe size"
      ]
    },
    {
      "question": "What security risk do iframes pose?",
      "correct_answer": "Malicious scripts",
      "options": [
        "Malicious scripts",
        "Slow loading",
        "Large file sizes"
      ]
    }
  ],

  //Quiz for the forty-third lesson(HTML Entities)
  "HTML Entities": [
    {
      "question": "What are HTML entities used for?",
      "correct_answer": "Display special characters",
      "options": [
        "Display special characters",
        "Create new elements",
        "Style elements"
      ]
    },
    {
      "question": "What does &euro; represent?",
      "correct_answer": "Euro symbol (€)",
      "options": ["Euro symbol (€)", "Dollar symbol (\$)", "Pound symbol (£)"]
    },
    {
      "question": "What does &deg; represent?",
      "correct_answer": "Degree symbol (°)",
      "options": ["Degree symbol (°)", "Percent symbol (%)", "Plus symbol (+)"]
    }
  ],

  //Quiz for the forty-fourth lesson(HTML SVG)
  "HTML SVG": [
    {
      "question": "What does SVG stand for?",
      "correct_answer": "Scalable Vector Graphics",
      "options": [
        "Scalable Vector Graphics",
        "Simple Vector Graphics",
        "Static Vector Graphics"
      ]
    },
    {
      "question": "Are SVG images scalable?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only sometimes"]
    },
    {
      "question": "Which element creates a circle in SVG?",
      "correct_answer": "<circle>",
      "options": ["<circle>", "<round>", "<oval>"]
    },
    {
      "question": "Which element creates a rectangle in SVG?",
      "correct_answer": "<rect>",
      "options": ["<rect>", "<square>", "<box>"]
    }
  ],

  //Quiz for the forty-fifth lesson(HTML Canvas)
  "HTML Canvas": [
    {
      "question": "What does the <canvas> element provide?",
      "correct_answer": "Drawing surface for JavaScript",
      "options": [
        "Drawing surface for JavaScript",
        "Image display",
        "Video playback"
      ]
    },
    {
      "question": "Does canvas require JavaScript?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only for animations"]
    },
    {
      "question": "Is canvas content accessible to screen readers?",
      "correct_answer": "No",
      "options": ["No", "Yes", "Sometimes"]
    }
  ],

  //Quiz for the forty-sixth lesson(HTML Vs XHTML)
  "HTML Vs XHTML": [
    {
      "question": "Is XHTML stricter than HTML?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "They are the same"]
    },
    {
      "question": "Is XHTML case-sensitive?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only for attributes"]
    },
    {
      "question": "Which requires all elements to be closed?",
      "correct_answer": "XHTML",
      "options": ["XHTML", "HTML", "Both"]
    },
    {
      "question": "Which is the current standard?",
      "correct_answer": "HTML5",
      "options": ["HTML5", "XHTML", "Both"]
    }
  ],

  //Quiz for the forty-seventh lesson(What's next?)
  "What's next?": [
    {
      "question": "What should you learn after HTML?",
      "correct_answer": "CSS",
      "options": ["CSS", "JavaScript", "Both"]
    },
    {
      "question": "What is CSS used for?",
      "correct_answer": "Styling and layout",
      "options": [
        "Styling and layout",
        "Programming logic",
        "Database management"
      ]
    },
    {
      "question": "What is JavaScript used for?",
      "correct_answer": "Interactivity",
      "options": ["Interactivity", "Styling", "Structure"]
    },
    {
      "question": "Should you practice building projects?",
      "correct_answer": "Yes",
      "options": ["Yes", "No", "Only if you have time"]
    }
  ],

};
