import 'package:master_html/resources/models/lesson_model.dart';

const Map<String, List<LessonModel>> allLessons = {
  //First lesson (HTML Introduction)
  "HTML Introduction": <LessonModel>[
    LessonModel(
        header: "What is HTML?",
        article: <String>[
          "HTML stands for Hyper Text Markup Language, it is the backbone of web development.",
          "It is a simple, easy-to-learn language that describes the structure of web pages and tells the browser how to display the content.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "What's the difference between HTML and HTML5?",
        article: <String>[
          "HTML5 is the fifth and current version of HTML.",
          "HTML5 introduced a lot of new features and improvements on top of it's previous version and it offers a lot of functionality for building websites.",
          "HTML5 was released in 2014 and has been the standard version of web since and it is what we will learn in the following lessons!",
          "Let's see an example of simple HTML code below.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),

    // <!-- <meta name="viewport" content="width=device-width, initial-scale=1">  -->
    LessonModel(
        header: "HTML Code Example -",
        article: <String>["null"],
        codeExample: '''<!DOCTYPE html>
 <html>
 <head>
     <title>Web page Title</title>
 </head>
 <body>
     <h1>This is a Heading</h1>
     <p>This is a paragraph.</p>
 </body>
 </html>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Example Breakdown -",
        article: <String>[
          "• The <!DOCTYPE html> declaration defines that this document is an HTML5 document.",
          "• The <html> element is the root element of an HTML page.",
          "• The <head> element contains meta information about the HTML page.",
          "• The <title> element specifies a title for the HTML page (which is shown in the browser's title bar or in the page's tab).",
          "• The <body> element defines the document's body, and is a container for all the visible contents, such as headings, paragraphs, images, links, embeds, tables, lists, etc.",
          "• The <h1> element defines a large heading.",
          "• The <p> element defines a paragraph.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "How will you learn?",
        article: <String>[
          "In the following lessons, we will guide you through the basic and advance concepts of HTML. Whether you're a beginner or you already know how to code, our step-by-step approach will help you learn HTML easily, efficiently and quickly.",
          "And To make your learning experience more practical and interactive, we have implemented a small code editor that holds code examples which can be modified by the user. This will enable you to experiment with the HTML code examples and to see how they would actually look like on a real browser. There are also breakdown of each part from the examples so that it helps you understand clearly!",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "HTML is a markup language and not a programming language.",
        warning: "null"),
  ],

  //Second lesson (code Editor)
  "Code Editor": <LessonModel>[
    LessonModel(
        header: "Where can I write HTML code?",
        article: <String>[
          "In a text editor! which is also known as code editor. There are code editors available for all sorts of device. So, whether you are on Computer or on an Android phone, you can create and write HTML. And the most popular code editors are completely free!",
          "Let's look at a list of some of the free and most popular code editors -",
          "      • Visual Studio Code (for computer)",
          "      • Sublime (for computer)",
          "      • Spck Code Editor",
          "      • TrebEdit",
          "      • This App!",
          "We implemented a code editor in our app so the users can both learn and practice HTML without having to leave this app.",
          "You can use any of those apps that are mentioned here to create, write and edit HTML files.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "How do I create a HTML file?",
        article: <String>[
          "In order to create a html file you have to give the file.html extension for example Home.html or contact.html. Otherwise it wouldn't work and browsers or code editors won't recognize the file.",
          "Below you can see us creating a HTML file named index.html inside My First Website folder on a code editor -",
          "photo1",
          "photo2",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
  ],

  //Third lesson (Html Boilerplate)
  "HTML Boilerplate": <LessonModel>[
    LessonModel(
        header: "What is Boilerplate code?",
        article: <String>[
          "In programming, boilerplate code, or simply boilerplate, are sections of code that are repeated in multiple places with little to no difference.",
          "This is why rather than writing the same code over and over again, programmers take boilerplate code whenever needed and use it in their code. Note that it is important to understand what the code does and why it's needed and not just blindly copy and paste code.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "HTML Boilerplate code -",
        article: <String>["null"],
        codeExample: '''
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Web page Title</title>
</head>
<body>
    
</body>
</html>''',
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "null",
        article: <String>[
          "In the next lesson we will learn about HTML Element."
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
  ],
  //Fourth lesson (Html Elements)
  "HTML Elements": <LessonModel>[
    LessonModel(
        header: "HTML Elements",
        article: <String>[
          "An HTML Element usually consists of a starting tag, element content and then ending tag or also known as closing tags.",
        ],
        codeExample: " <p>This is element content</p>",
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "null",
        article: <String>[
          "Here <p> is a starting tag, 'This is element content' is the content and </p> is the ending tag.",
          "For better and clear understanding, let's take a look at a screenshot -",
          "photo3",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),

    // <!-- <meta name="viewport" content="width=device-width, initial-scale=1">  -->
    LessonModel(
        header: "Nested HTML Elements",
        article: <String>[
          "There are some cases where we may use more than one HTML Element. That's where we nest one HTML Element inside another. This is how it looks like."
        ],
        codeExample: "<p><i>I'm an italic paragraph</i></p>",
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Empty Elements",
        article: <String>[
          "Some elements in HTML doesn't have an ending tag and element content. They are called empty Elements.",
          "Some of the commonly used empty Elements are listed below.",
          "     • <link>",
          "     • <img>",
          "     • <meta>",
          "     • <br>",
          "     • <input>",
          "Some likes to put a forward slash / before the greater than symbol.",
          "But if you want to use it or not, both are correct and will work without any issues.",
        ],
        // codeExample: "null",
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
  ],

  //Third lesson (HTML Attributes)
  "HTML Attributes": <LessonModel>[
    LessonModel(
        header: "HTML Attributes",
        article: <String>[
          "HTML attributes are used to add other informations to an HTML Element.",
          "We can use attributes to modify an element or give the element some special type of values.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Important Things to Remember -",
        article: <String>[
          "HTML attributes are only applied to start tags and will never be on end tags.",
          "An HTML elements can have multiple attributes.",
          "There are some attributes that can be used on all HTML Elements though they may not have effects on some elements. They are called Global Attributes.",
          "An HTML attribute is composed of - an attribute name, an equal = sign  and a value surrounded by quotation marks.",
          "It looks like this: 'theattributename =\"value\"'. Here is a screenshot of an attribute :",
          "photo4",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Attributes Examples",
        article: <String>[
          "In this part of the lesson we are going to learn some HTML Attributes with examples.",
          "In this example we have added a header with <h1> element and gave it orange color using style attribute. Here style is the attribute and orange is the value.",
        ],
        codeExample: "<h1 style=\"color:orange\";>Hello world header</h1>",
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Multiple value Attributes Example -",
        article: <String>[
          "In this example we have added a paragraph element that has multiple attribute values.",
        ],
        codeExample:
            '''<p style="font-size: 35px; color: red;">I'm a paragraph and my font size is 35 pixels</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
  ],

  //Sixth lesson (Html Comments)
  "HTML Comments": <LessonModel>[
    LessonModel(
        header: "What are comments in HTML?",
        article: <String>[
          "Comments are texts kept as a note inside an HTML file.",
          "Comments aren't displayed by browsers and only the person writing or editing the code can see it.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Why use comments in HTML?",
        article: <String>[
          "Comments can be used to explain the code, it acts as note to make the code more readable.",
          "It can also be used to prevent execution when testing alternative code.",
          "Comments in HTML looks like this <!- - comment goes here - ->",
          "Below we will see an example on how comments in HTML look like and proper use case."
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "HTML Comments Example -",
        article: <String>["null"],
        codeExample: '''<p>This is a paragraph</p>

<!-- This is a comment in HTML -->

<!-- This comment has multiple lines,
     also known as multi-line comment -->

<p>This is another paragraph</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "When to use comments in HTML?",
        article: <String>[
          "Comments shouldn't be used everywhere and it should only be used to explain something difficult or something that should be done later.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
  ],

  //Seventh lesson (HTML Headings)
  "HTML Headings": <LessonModel>[
    LessonModel(
        header: "HTML Headings -",
        article: <String>[
          "HTML Headings usually contain a title of the main topic of a certain section of a webpage.",
          "HTML Headings are crucial because when one searches something on search engines like Google, headings help search engines to find your website and represent to them.",
          "HTML Headings are block-level elements.",
        ],
        codeExample: '''<h1> Heading 1 </h1>

<h2> Heading 2 </h2>

<h3> Heading 3 </h3>

<h4> Heading 4 </h4>

<h5> Heading 5 </h5>

<h6> Heading 6 </h6>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "null",
        article: <String>[
          "As you can see on the example that the elements used are the <h1>, <h2>, <h3>, <h4>, <h5> and <h6>.",
          "It's important to remember that there's no heading after <h6>.",
          "You should have noticed that the size of a heading depends on its corresponding number after the h. And the lower the number the larger the font-size.",
          "There should be only one <h1> in a web page.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
  ],

  //Eighth lesson (HTML Paragraphs)
  "HTML Paragraphs": <LessonModel>[
    LessonModel(
        header: "HTML Paragraphs",
        article: <String>[
          "HTML paragraphs are used to represent regular text in the website.",
          "The <p> element defines HTML paragraphs.",
          "HTML paragraphs are block-level element.",
        ],
        codeExample: '''<p>This is a paragraph in HTML</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Styling paragraph",
        article: <String>[
          "We can apply different kind of inline styles on paragraphs. Below we will see examples of some of them.",
        ],
        codeExample:
            '''<p style="text-align: center;">This is a centered paragraph<p>

<p style="color: red;">This is a red paragraph</p>

<p style="font-size: 25px;">This is a 25px font sized paragraph</p>

<p style="font-weight: bold;">This is a paragraph with bold font font</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
  ],

  //Ninth lesson (HTML Styling)
  "HTML Styling": <LessonModel>[
    LessonModel(
        header: "HTML Styling",
        article: <String>[
          "We can use styling to change the appearance of any HTML element. We can their change default values.",
          "For example, the default color of text is black but using style we can change it to red. The default text size is 16px but we can change it to 20px and whatever we like.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Internal Style Sheet",
        article: <String>[
          "Internal Style Sheet is composed Cascading Style Sheet (CSS) rule-set. And we can add as many rules on as many elements as we want.",
          "A CSS rule-set consists of an element selector and a declaration block closed by curly braces that contains CSS declarations separated by semicolons.",
          "They are all enclosed inside the <style> element with its type=\"value\" attribute which is included inside the <head> element.",
          "Internal Style Sheet Example -",
        ],
        codeExample: '''<style type="text/css">

P {
       color: red;
       font-size: 20px;
}

</style>''',
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Inline Styling",
        article: <String>[
          "We can also style an element using the style attribute and declaration inside the element and it is similar to internal styling.",
        ],
        codeExample: '''
<p style="color: red;">This is a paragraph that is yellow</p>

<p style="background-color: yellow;">This is a paragraph with yellow background</p>
''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Font/Text sizing Example -",
        article: <String>[
          "null",
        ],
        codeExample: '''
<p style="font-size: 12px;">This is 12px font sized text</p>

<p>This is default font sized text</p>

<p style="font-size: 20px;">This is 20px font sized text</p>

<p style="font-size: 30px;">This is 30px font sized text</p>
''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Text Alignment Example -",
        article: <String>[
          "null",
        ],
        codeExample: '''
<p style="text-align: left"> I am aligned left </p>
        
<p style="text-align: center"> I am aligned center. </p>

<p style="text-align: right"> I am aligned right. </p>
''',
        outPutExample: "true",
        note:
            "There will be a lot of Internal and inline Styling throughout the whole course so keep going and enjoy!",
        warning: "null"),
  ],
  //Tenth lesson ()
  //Eleventh Lesson ()

  //Twelfth lesson (HTML Line Breaks)
  "HTML Line Breaks": <LessonModel>[
    LessonModel(
        header: "HTML Line Break",
        article: <String>[
          "A Line break puts a break in a line starts a new line.",
          "The <br> element defines an HTML line break. It's an Empty Element so there's no ending tag.",
          "We can put as many line break as we want.",
        ],
        codeExample: '''  <p>Without line break</p>
  <p>without line break</p> 
 
  <p>With line break</p>
  <br>
  <p>With line break</p>

  <p>Multiple line breaks</p>
  <br><br><br>
  <p>Multiple line breaks</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
  ],

  //Thirteenth lesson (HTML Horizontal Rule)
  "HTML Horizontal Rule": <LessonModel>[
    LessonModel(
        header: "HTML Horizontal Rule",
        article: <String>[
          "Horizontal Rule displays a line on the browser screen. It's an empty Element.",
          "The <hr> defines an HTML Horizontal Rule.",
        ],
        codeExample: '''<h2>This is a header</h2>
<hr>
<p>This is a paragraph</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Styling Horizontal Rule",
        article: <String>[
          "You can style a Horizontal Rule however you want by using styling properties.",
        ],
        codeExample: '''
        
     <hr style="color: red; height: 5px;">
   
     <hr style="width: 70%; color="black" />
   ''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
  ],

  //Fourteenth lesson (HTML Text Formatting)
  "HTML Text Formatting": <LessonModel>[
    LessonModel(
        header: "HTML Text Formatting",
        article: <String>[
          "Formatting text is essential for good appearance of a website.",
          "Those elements are usually placed inside another element that represents text such as paragraph or header.",
          "Let's look at some of text formatting elements.",
          "        • <b> Makes the text appear bold",
          "        • <u> put underlines below the text",
          "        • <i> Makes the code appear italicized",
          "        • <s> strikes through a text",
          "        • <q> enquotes a text",
          "        • <code> defines a text as a code",
          "        • <mark> highlights a text",
        ],
        codeExample: '''   <!-- bold Text -->
   <p><b>I am a bolded text</b></p>

   <!-- underlined Text -->
   <p><u>I am an underlined text</u></p>
   
   <!-- italic Text -->
   <p><i>I am an italic text</i></p>
   
   <!-- striked text -->
   <p><s>I am a striked text</s></p>

   <!-- quoted text -->
   <p><q>I am an enquoted text</q></p>

   <!-- code -->
   <p><code>I am a code text</code></p>
 
   <!-- marked text -->
   <p><mark>I am a marked text</mark></p>
  
   <!-- mixed formatted -->
   <p><b><u><i>I am a mixed formatted text</i></u></b></p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
  ],

  //Tenth lesson (HTML Images)
  "HTML images": <LessonModel>[
    LessonModel(
        header: "HTML Images",
        article: <String>[
          "Images are an essential part of web development. They make websites more attractive and informative.",
          "The <img> element is used to embed images in HTML documents. It's an empty element, so it doesn't have a closing tag.",
        ],
        codeExample: '''<img src="image.jpg" alt="Description of image">''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Image Attributes",
        article: <String>[
          "The <img> element has several important attributes:",
          "• src: Specifies the path to the image file",
          "• alt: Provides alternative text for the image (important for accessibility)",
          "• width: Sets the width of the image",
          "• height: Sets the height of the image",
          "• title: Provides additional information about the image",
        ],
        codeExample: '''<img src="photo.jpg" alt="A beautiful landscape" width="300" height="200" title="Mountain view">''',
        outPutExample: "true",
        note: "Always include the alt attribute for accessibility and SEO purposes.",
        warning: "null"),
    LessonModel(
        header: "Image Formats",
        article: <String>[
          "Common image formats supported by web browsers:",
          "• JPEG (.jpg, .jpeg) - Good for photographs",
          "• PNG (.png) - Good for images with transparency",
          "• GIF (.gif) - Good for simple animations",
          "• WebP (.webp) - Modern format with good compression",
          "• SVG (.svg) - Vector graphics, scalable without quality loss",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "Choose the appropriate format based on your image type and requirements.",
        warning: "null"),
  ],

  //Eleventh lesson (HTML Links)
  "HTML Links": <LessonModel>[
    LessonModel(
        header: "HTML Links",
        article: <String>[
          "Links are the foundation of the web. They allow users to navigate between pages and websites.",
          "The <a> element creates a hyperlink. The href attribute specifies the destination URL.",
        ],
        codeExample: '''<a href="https://www.example.com">Visit Example Website</a>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Link Types",
        article: <String>[
          "There are several types of links you can create:",
          "• External links: Point to other websites",
          "• Internal links: Point to pages within your website",
          "• Email links: Open the user's email client",
          "• Phone links: Open the phone dialer on mobile devices",
        ],
        codeExample: '''<!-- External link -->
<a href="https://www.google.com">Google</a>

<!-- Internal link -->
<a href="about.html">About Us</a>

<!-- Email link -->
<a href="mailto:contact@example.com">Contact Us</a>

<!-- Phone link -->
<a href="tel:+1234567890">Call Us</a>''',
        outPutExample: "true",
        note: "Use descriptive link text that explains where the link goes.",
        warning: "null"),
    LessonModel(
        header: "Link Attributes",
        article: <String>[
          "Important attributes for the <a> element:",
          "• href: The URL the link points to",
          "• target: Specifies where to open the link",
          "• rel: Describes the relationship between the current page and the linked page",
          "• title: Provides additional information about the link",
        ],
        codeExample: '''<a href="https://www.example.com" target="_blank" rel="noopener" title="Opens in new tab">External Link</a>''',
        outPutExample: "true",
        note: "Use target='_blank' for external links to open them in a new tab.",
        warning: "Always include rel='noopener' when using target='_blank' for security reasons."),
  ],

  //Fifteenth lesson (HTML Block vs Inline Elements)
  "HTML Block vs Inline Elements": <LessonModel>[
    LessonModel(
        header: "Block vs Inline Elements",
        article: <String>[
          "HTML elements can be categorized into two main types: block-level elements and inline elements.",
          "Understanding the difference between these two types is crucial for proper HTML structure and CSS styling.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Block-Level Elements",
        article: <String>[
          "Block-level elements:",
          "• Always start on a new line",
          "• Take up the full width available",
          "• Have top and bottom margins",
          "• Can contain other block-level and inline elements",
          "Examples: <div>, <p>, <h1>-<h6>, <section>, <article>, <header>, <footer>",
        ],
        codeExample: '''<div style="background-color: lightblue; padding: 10px;">
  <h1>This is a block element</h1>
  <p>This paragraph is also a block element</p>
</div>''',
        outPutExample: "true",
        note: "Block elements create 'blocks' of content that stack vertically.",
        warning: "null"),
    LessonModel(
        header: "Inline Elements",
        article: <String>[
          "Inline elements:",
          "• Do not start on a new line",
          "• Only take up as much width as necessary",
          "• Cannot have top and bottom margins",
          "• Can only contain other inline elements",
          "Examples: <span>, <a>, <strong>, <em>, <img>, <input>",
        ],
        codeExample: '''<p>This is a paragraph with <strong>bold text</strong> and <em>italic text</em>.</p>
<span style="color: red;">This is an inline element</span>''',
        outPutExample: "true",
        note: "Inline elements flow within the text and don't create line breaks.",
        warning: "null"),
  ],

  //Sixteenth lesson (HTML Sections)
  "HTML Sections": <LessonModel>[
    LessonModel(
        header: "HTML Section Element",
        article: <String>[
          "The <section> element represents a standalone section of a document.",
          "It's used to group related content together and improve the semantic structure of your HTML.",
        ],
        codeExample: '''<section>
  <h2>About Us</h2>
  <p>This section contains information about our company.</p>
</section>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "When to Use Sections",
        article: <String>[
          "Use <section> when:",
          "• You have a group of related content",
          "• The content would make sense as a standalone piece",
          "• You want to improve document structure",
          "• You're creating a thematic grouping of content",
        ],
        codeExample: '''<section>
  <h2>Our Services</h2>
  <ul>
    <li>Web Design</li>
    <li>Development</li>
    <li>Consulting</li>
  </ul>
</section>

<section>
  <h2>Contact Information</h2>
  <p>Email: contact@example.com</p>
  <p>Phone: (555) 123-4567</p>
</section>''',
        outPutExample: "true",
        note: "Each section should typically have a heading element.",
        warning: "Don't use section for styling purposes - use div for that."),
  ],

  //Seventeenth lesson (HTML Articles)
  "HTML Articles": <LessonModel>[
    LessonModel(
        header: "HTML Article Element",
        article: <String>[
          "The <article> element represents a self-contained composition in a document.",
          "It should be independently distributable or reusable, such as a blog post, news article, or forum post.",
        ],
        codeExample: '''<article>
  <h2>How to Learn HTML</h2>
  <p>HTML is the foundation of web development...</p>
  <footer>
    <p>Published on: <time datetime="2024-01-15">January 15, 2024</time></p>
  </footer>
</article>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "When to Use Articles",
        article: <String>[
          "Use <article> when the content:",
          "• Is self-contained and complete",
          "• Could be syndicated independently",
          "• Makes sense on its own",
          "• Is a blog post, news story, or similar content",
        ],
        codeExample: '''<article>
  <header>
    <h1>Breaking News: New Technology Released</h1>
    <p>By John Doe | January 15, 2024</p>
  </header>
  <p>The latest technology has been released...</p>
  <section>
    <h2>Key Features</h2>
    <ul>
      <li>Feature 1</li>
      <li>Feature 2</li>
    </ul>
  </section>
</article>''',
        outPutExample: "true",
        note: "Articles can contain other semantic elements like header, footer, and section.",
        warning: "Don't use article for content that doesn't make sense on its own."),
  ],

  //Eighteenth lesson (HTML Tables)
  "HTML Tables": <LessonModel>[
    LessonModel(
        header: "HTML Tables",
        article: <String>[
          "Tables are used to display data in rows and columns.",
          "HTML tables are created using the <table> element along with other table-related elements.",
        ],
        codeExample: '''<table border="1">
  <tr>
    <th>Name</th>
    <th>Age</th>
    <th>City</th>
  </tr>
  <tr>
    <td>John</td>
    <td>25</td>
    <td>New York</td>
  </tr>
</table>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Table Elements",
        article: <String>[
          "Key table elements:",
          "• <table>: Defines the table",
          "• <tr>: Defines a table row",
          "• <th>: Defines a header cell",
          "• <td>: Defines a data cell",
          "• <thead>: Groups header content",
          "• <tbody>: Groups body content",
          "• <tfoot>: Groups footer content",
        ],
        codeExample: '''<table border="1">
  <thead>
    <tr>
      <th>Product</th>
      <th>Price</th>
      <th>Stock</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Laptop</td>
      <td>\$999</td>
      <td>15</td>
    </tr>
    <tr>
      <td>Phone</td>
      <td>\$599</td>
      <td>25</td>
    </tr>
  </tbody>
</table>''',
        outPutExample: "true",
        note: "Use thead, tbody, and tfoot for better table structure and accessibility.",
        warning: "Avoid using tables for layout purposes - use CSS Grid or Flexbox instead."),
    LessonModel(
        header: "Table Styling",
        article: <String>[
          "You can style tables using CSS to make them more attractive and readable.",
        ],
        codeExample: '''<table style="border-collapse: collapse; width: 100%;">
  <tr style="background-color: #f2f2f2;">
    <th style="border: 1px solid #ddd; padding: 8px;">Name</th>
    <th style="border: 1px solid #ddd; padding: 8px;">Age</th>
  </tr>
  <tr>
    <td style="border: 1px solid #ddd; padding: 8px;">John</td>
    <td style="border: 1px solid #ddd; padding: 8px;">25</td>
  </tr>
</table>''',
        outPutExample: "true",
        note: "border-collapse: collapse; removes the double borders between cells.",
        warning: "null"),
  ],

  //Nineteenth lesson (HTML Lists)
  "HTML Lists": <LessonModel>[
    LessonModel(
        header: "HTML Lists",
        article: <String>[
          "Lists are used to group related items together.",
          "HTML provides three types of lists: unordered lists, ordered lists, and description lists.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Unordered Lists",
        article: <String>[
          "Unordered lists use bullet points and are created with the <ul> element.",
          "Each list item is defined with the <li> element.",
        ],
        codeExample: '''<ul>
  <li>Apple</li>
  <li>Banana</li>
  <li>Orange</li>
</ul>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Ordered Lists",
        article: <String>[
          "Ordered lists use numbers and are created with the <ol> element.",
          "You can customize the numbering using the type attribute.",
        ],
        codeExample: '''<ol>
  <li>First step</li>
  <li>Second step</li>
  <li>Third step</li>
</ol>

<ol type="A">
  <li>Option A</li>
  <li>Option B</li>
  <li>Option C</li>
</ol>''',
        outPutExample: "true",
        note: "type='A' uses uppercase letters, type='a' uses lowercase letters, type='I' uses Roman numerals.",
        warning: "null"),
    LessonModel(
        header: "Nested Lists",
        article: <String>[
          "You can nest lists inside other lists to create hierarchical structures.",
        ],
        codeExample: '''<ul>
  <li>Fruits
    <ul>
      <li>Apple</li>
      <li>Banana</li>
    </ul>
  </li>
  <li>Vegetables
    <ul>
      <li>Carrot</li>
      <li>Broccoli</li>
    </ul>
  </li>
</ul>''',
        outPutExample: "true",
        note: "Nested lists are useful for creating menus, outlines, and hierarchical data.",
        warning: "null"),
  ],

  //Twentieth lesson (HTML Forms)
  "HTML Forms": <LessonModel>[
    LessonModel(
        header: "HTML Forms",
        article: <String>[
          "Forms are used to collect user input and send it to a server for processing.",
          "The <form> element is the container for all form elements.",
        ],
        codeExample: '''<form action="/submit" method="post">
  <label for="name">Name:</label>
  <input type="text" id="name" name="name">
  <button type="submit">Submit</button>
</form>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Form Attributes",
        article: <String>[
          "Important form attributes:",
          "• action: Specifies where to send the form data",
          "• method: Specifies how to send the data (GET or POST)",
          "• name: Gives the form a name for JavaScript access",
          "• target: Specifies where to display the response",
        ],
        codeExample: '''<form action="https://example.com/process" method="post" name="contactForm">
  <!-- form elements go here -->
</form>''',
        outPutExample: "true",
        note: "GET method appends data to URL, POST method sends data in request body.",
        warning: "Always validate form data on both client and server side."),
    LessonModel(
        header: "Form Elements",
        article: <String>[
          "Common form elements:",
          "• <input>: Various input types (text, email, password, etc.)",
          "• <textarea>: Multi-line text input",
          "• <select>: Dropdown list",
          "• <button>: Submit, reset, or custom buttons",
          "• <label>: Labels for form controls",
        ],
        codeExample: '''<form>
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required>
  
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required>
  
  <label for="message">Message:</label>
  <textarea id="message" name="message" rows="4"></textarea>
  
  <button type="submit">Send</button>
</form>''',
        outPutExample: "true",
        note: "The required attribute makes a field mandatory.",
        warning: "null"),
  ],

  //Twenty-first lesson (HTML Input)
  "HTML Input": <LessonModel>[
    LessonModel(
        header: "HTML Input Element",
        article: <String>[
          "The <input> element is the most important form element.",
          "It can be displayed in many ways, depending on the type attribute.",
        ],
        codeExample: '''<input type="text" placeholder="Enter your name">
<input type="email" placeholder="Enter your email">
<input type="password" placeholder="Enter your password">''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Common Input Types",
        article: <String>[
          "Basic input types:",
          "• text: Single-line text input",
          "• password: Password input (hidden characters)",
          "• email: Email address input",
          "• number: Numeric input",
          "• tel: Telephone number input",
          "• url: URL input",
        ],
        codeExample: '''<form>
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" required>
  
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required>
  
  <label for="phone">Phone:</label>
  <input type="tel" id="phone" name="phone">
  
  <label for="age">Age:</label>
  <input type="number" id="age" name="age" min="0" max="120">
</form>''',
        outPutExample: "true",
        note: "The min and max attributes set the minimum and maximum values for number inputs.",
        warning: "null"),
  ],

  //Twenty-second lesson (HTML Input Part 2)
  "HTML Input Part 2": <LessonModel>[
    LessonModel(
        header: "Advanced Input Types",
        article: <String>[
          "HTML5 introduced many new input types for better user experience and validation.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Date and Time Inputs",
        article: <String>[
          "Date and time related input types:",
          "• date: Date picker",
          "• time: Time picker",
          "• datetime-local: Date and time picker",
          "• month: Month picker",
          "• week: Week picker",
        ],
        codeExample: '''<form>
  <label for="birthdate">Birth Date:</label>
  <input type="date" id="birthdate" name="birthdate">
  
  <label for="meeting">Meeting Time:</label>
  <input type="datetime-local" id="meeting" name="meeting">
  
  <label for="vacation">Vacation Month:</label>
  <input type="month" id="vacation" name="vacation">
</form>''',
        outPutExample: "true",
        note: "These input types provide native date/time pickers on supported browsers.",
        warning: "null"),
    LessonModel(
        header: "File and Media Inputs",
        article: <String>[
          "File and media related input types:",
          "• file: File upload",
          "• image: Image submit button",
          "• color: Color picker",
          "• range: Slider control",
        ],
        codeExample: '''<form>
  <label for="photo">Upload Photo:</label>
  <input type="file" id="photo" name="photo" accept="image/*">
  
  <label for="color">Choose Color:</label>
  <input type="color" id="color" name="color">
  
  <label for="volume">Volume:</label>
  <input type="range" id="volume" name="volume" min="0" max="100">
</form>''',
        outPutExample: "true",
        note: "The accept attribute restricts file types that can be uploaded.",
        warning: "null"),
  ],

  //Twenty-third lesson (HTML Input part 3)
  "HTML Input part 3": <LessonModel>[
    LessonModel(
        header: "Radio Buttons and Checkboxes",
        article: <String>[
          "Radio buttons and checkboxes are used for selection inputs.",
          "• Radio buttons: Only one option can be selected",
          "• Checkboxes: Multiple options can be selected",
        ],
        codeExample: '''<form>
  <h3>Gender:</h3>
  <input type="radio" id="male" name="gender" value="male">
  <label for="male">Male</label>
  
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Female</label>
  
  <h3>Interests:</h3>
  <input type="checkbox" id="sports" name="interests" value="sports">
  <label for="sports">Sports</label>
  
  <input type="checkbox" id="music" name="interests" value="music">
  <label for="music">Music</label>
  
  <input type="checkbox" id="reading" name="interests" value="reading">
  <label for="reading">Reading</label>
</form>''',
        outPutExample: "true",
        note: "Radio buttons with the same name attribute form a group where only one can be selected.",
        warning: "null"),
  ],

  //Twenty-fourth lesson (HTML Form Labels)
  "HTML Form Labels": <LessonModel>[
    LessonModel(
        header: "HTML Labels",
        article: <String>[
          "The <label> element defines a label for form elements.",
          "Labels improve accessibility and user experience by providing clear descriptions.",
        ],
        codeExample: '''<form>
  <label for="username">Username:</label>
  <input type="text" id="username" name="username">
  
  <label for="password">Password:</label>
  <input type="password" id="password" name="password">
</form>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Label Attributes",
        article: <String>[
          "Important label attributes:",
          "• for: Associates the label with a form element using its id",
          "• form: Associates the label with a form using its id",
        ],
        codeExample: '''<form id="myForm">
  <label for="name" form="myForm">Full Name:</label>
  <input type="text" id="name" name="name">
</form>''',
        outPutExample: "true",
        note: "Using the for attribute makes the label clickable and improves accessibility.",
        warning: "null"),
  ],

  //Twenty-fifth lesson (HTML Buttons)
  "HTML Buttons": <LessonModel>[
    LessonModel(
        header: "HTML Buttons",
        article: <String>[
          "Buttons are interactive elements that users can click to perform actions.",
          "HTML provides the <button> element for creating buttons.",
        ],
        codeExample: '''<button type="button">Click Me</button>
<button type="submit">Submit Form</button>
<button type="reset">Reset Form</button>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Button Types",
        article: <String>[
          "Button types:",
          "• button: Generic button (default)",
          "• submit: Submits form data",
          "• reset: Resets form to default values",
        ],
        codeExample: '''<form>
  <input type="text" name="name" placeholder="Enter name">
  <button type="submit">Submit</button>
  <button type="reset">Clear</button>
  <button type="button" onclick="alert('Hello!')">Say Hello</button>
</form>''',
        outPutExample: "true",
        note: "The onclick attribute can be used to add JavaScript functionality.",
        warning: "null"),
  ],

  //Twenty-sixth lesson (HTML Dropdown Lists)
  "HTML Dropdown Lists": <LessonModel>[
    LessonModel(
        header: "HTML Select Element",
        article: <String>[
          "The <select> element creates a dropdown list.",
          "It contains <option> elements that define the available choices.",
        ],
        codeExample: '''<select name="country">
  <option value="">Choose a country</option>
  <option value="us">United States</option>
  <option value="uk">United Kingdom</option>
  <option value="ca">Canada</option>
</select>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Select Attributes",
        article: <String>[
          "Important select attributes:",
          "• name: Specifies the name for the form data",
          "• multiple: Allows multiple selections",
          "• size: Specifies the number of visible options",
          "• required: Makes the field mandatory",
        ],
        codeExample: '''<select name="languages" multiple size="3">
  <option value="html">HTML</option>
  <option value="css">CSS</option>
  <option value="javascript">JavaScript</option>
  <option value="python">Python</option>
</select>''',
        outPutExample: "true",
        note: "Hold Ctrl (or Cmd on Mac) to select multiple options.",
        warning: "null"),
  ],

  //Twenty-seventh lesson (HTML Textarea)
  "HTML Textarea": <LessonModel>[
    LessonModel(
        header: "HTML Textarea",
        article: <String>[
          "The <textarea> element creates a multi-line text input field.",
          "It's useful for longer text input like comments, descriptions, or messages.",
        ],
        codeExample: '''<textarea name="message" rows="4" cols="50">
Enter your message here...
</textarea>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Textarea Attributes",
        article: <String>[
          "Common textarea attributes:",
          "• rows: Specifies the number of visible text lines",
          "• cols: Specifies the visible width of the textarea",
          "• placeholder: Provides a hint about what to enter",
          "• maxlength: Sets the maximum number of characters",
          "• readonly: Makes the textarea read-only",
        ],
        codeExample: '''<textarea 
  name="comment" 
  rows="6" 
  cols="40" 
  placeholder="Write your comment here..."
  maxlength="500">
</textarea>''',
        outPutExample: "true",
        note: "The placeholder text disappears when the user starts typing.",
        warning: "null"),
  ],

  //Twenty-eighth lesson (HTML Form Attributes)
  "HTML Form Attributes": <LessonModel>[
    LessonModel(
        header: "Form Validation Attributes",
        article: <String>[
          "HTML5 provides built-in form validation attributes.",
          "These attributes help ensure data quality without JavaScript.",
        ],
        codeExample: '''<form>
  <input type="text" required placeholder="Required field">
  <input type="email" required placeholder="Valid email required">
  <input type="number" min="1" max="100" placeholder="Number 1-100">
  <input type="url" placeholder="Valid URL required">
</form>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
  ],

  //Twenty-ninth lesson (HTML Form Attributes part 2)
  "HTML Form Attributes part 2": <LessonModel>[
    LessonModel(
        header: "Advanced Form Attributes",
        article: <String>[
          "Additional form attributes for better user experience:",
          "• pattern: Specifies a regular expression for validation",
          "• autocomplete: Enables/disables browser autocomplete",
          "• novalidate: Disables form validation",
          "• autofocus: Automatically focuses the input when page loads",
        ],
        codeExample: '''<form>
  <input type="text" pattern="[A-Za-z]{3}" title="Three letters only" placeholder="Three letters">
  <input type="tel" autocomplete="tel" placeholder="Phone number">
  <input type="email" autofocus placeholder="Email (auto-focused)">
</form>''',
        outPutExample: "true",
        note: "The pattern attribute uses regular expressions for custom validation.",
        warning: "null"),
  ],

  //Thirtieth lesson (HTML File Paths)
  "HTML File Paths": <LessonModel>[
    LessonModel(
        header: "HTML File Paths",
        article: <String>[
          "File paths specify the location of files in your website structure.",
          "Understanding file paths is essential for linking to other pages, images, and resources.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Types of File Paths",
        article: <String>[
          "There are three types of file paths:",
          "• Absolute paths: Complete URL from the web root",
          "• Relative paths: Path relative to the current file",
          "• Root-relative paths: Path from the website root",
        ],
        codeExample: '''<!-- Absolute path -->
<img src="https://example.com/images/logo.png">

<!-- Relative path -->
<img src="images/logo.png">

<!-- Root-relative path -->
<img src="/images/logo.png">''',
        outPutExample: "true",
        note: "Relative paths are most commonly used for internal links.",
        warning: "null"),
  ],

  //Thirty-first lesson (HTML Meta Tags)
  "HTML Meta Tags": <LessonModel>[
    LessonModel(
        header: "HTML Meta Tags",
        article: <String>[
          "Meta tags provide metadata about the HTML document.",
          "They are placed in the <head> section and are not visible on the page.",
        ],
        codeExample: '''<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Learn HTML with our comprehensive tutorial">
  <meta name="keywords" content="HTML, web development, tutorial">
  <meta name="author" content="Your Name">
</head>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Important Meta Tags",
        article: <String>[
          "Essential meta tags:",
          "• charset: Defines character encoding",
          "• viewport: Controls page layout on mobile devices",
          "• description: Provides page description for search engines",
          "• keywords: Specifies keywords for search engines",
          "• author: Specifies the author of the page",
        ],
        codeExample: '''<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Free HTML tutorial for beginners">
  <meta name="robots" content="index, follow">
  <meta name="theme-color" content="#4285f4">
</head>''',
        outPutExample: "true",
        note: "The viewport meta tag is essential for responsive design.",
        warning: "null"),
  ],

  //Thirty-second lesson (HTML Fonts)
  "HTML Fonts": <LessonModel>[
    LessonModel(
        header: "HTML Fonts",
        article: <String>[
          "Fonts control the appearance of text on your website.",
          "While HTML has limited font control, CSS provides extensive font styling options.",
        ],
        codeExample: '''<p style="font-family: Arial, sans-serif;">This is Arial font</p>
<p style="font-family: 'Times New Roman', serif;">This is Times New Roman</p>
<p style="font-family: 'Courier New', monospace;">This is Courier New</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Font Properties",
        article: <String>[
          "Common font properties:",
          "• font-family: Specifies the font type",
          "• font-size: Sets the font size",
          "• font-weight: Controls font boldness",
          "• font-style: Controls font style (italic, normal)",
          "• color: Sets the text color",
        ],
        codeExample: '''<p style="font-family: Georgia, serif; font-size: 18px; font-weight: bold; color: #333;">
  This is styled text with Georgia font, 18px size, bold weight, and dark gray color.
</p>''',
        outPutExample: "true",
        note: "Always provide fallback fonts in case the primary font is not available.",
        warning: "null"),
  ],

  //Thirty-third lesson (HTML nbsp)
  "HTML nbsp": <LessonModel>[
    LessonModel(
        header: "HTML Non-Breaking Space",
        article: <String>[
          "The &nbsp; entity represents a non-breaking space in HTML.",
          "It prevents line breaks and ensures words stay together.",
        ],
        codeExample: '''<p>This is a paragraph with&nbsp;non-breaking&nbsp;spaces.</p>
<p>Mr.&nbsp;John&nbsp;Doe</p>
<p>10&nbsp;km/h</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "When to Use nbsp",
        article: <String>[
          "Use &nbsp; when:",
          "• You want to prevent line breaks between words",
          "• Displaying titles (Mr. John Doe)",
          "• Showing measurements (10 km/h)",
          "• Creating consistent spacing",
        ],
        codeExample: '''<p>Contact:&nbsp;+1&nbsp;(555)&nbsp;123-4567</p>
<p>Price:&nbsp;\$99.99</p>
<p>Temperature:&nbsp;25&nbsp;°C</p>''',
        outPutExample: "true",
        note: "&nbsp; is useful for maintaining formatting consistency.",
        warning: "Don't overuse &nbsp; for spacing - use CSS margins and padding instead."),
  ],

  //Thirty-fourth lesson (Semantic HTML)
  "Semantic HTML": <LessonModel>[
    LessonModel(
        header: "Semantic HTML",
        article: <String>[
          "Semantic HTML uses meaningful elements that clearly describe their purpose.",
          "It improves accessibility, SEO, and code maintainability.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Semantic Elements",
        article: <String>[
          "Common semantic elements:",
          "• <header>: Represents the header of a document or section",
          "• <nav>: Represents navigation links",
          "• <main>: Represents the main content of the document",
          "• <section>: Represents a standalone section",
          "• <article>: Represents a self-contained composition",
          "• <aside>: Represents content that is tangentially related",
          "• <footer>: Represents the footer of a document or section",
        ],
        codeExample: '''<header>
  <h1>Website Title</h1>
  <nav>
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
  </nav>
</header>

<main>
  <article>
    <h2>Main Article</h2>
    <p>Article content...</p>
  </article>
</main>

<footer>
  <p>&copy; 2024 Website Name</p>
</footer>''',
        outPutExample: "true",
        note: "Semantic elements make your code more readable and accessible.",
        warning: "null"),
  ],

  //Thirty-fifth lesson (Semantic HTML part 2)
  "Semantic HTML part 2": <LessonModel>[
    LessonModel(
        header: "More Semantic Elements",
        article: <String>[
          "Additional semantic elements for better document structure:",
          "• <figure>: Represents self-contained content like images",
          "• <figcaption>: Represents a caption for a figure",
          "• <time>: Represents a specific time or date",
          "• <mark>: Represents highlighted text",
          "• <details>: Represents additional details",
          "• <summary>: Represents a summary for details",
        ],
        codeExample: '''<figure>
  <img src="image.jpg" alt="Description">
  <figcaption>This is a caption for the image</figcaption>
</figure>

<p>The meeting is scheduled for <time datetime="2024-01-15T14:30">2:30 PM on January 15th</time>.</p>

<details>
  <summary>Click to expand</summary>
  <p>This is the hidden content that appears when expanded.</p>
</details>''',
        outPutExample: "true",
        note: "These elements provide better structure and accessibility.",
        warning: "null"),
  ],

  //Thirty-sixth lesson (HTML Figures)
  "HTML Figures": <LessonModel>[
    LessonModel(
        header: "HTML Figure Element",
        article: <String>[
          "The <figure> element represents self-contained content like images, diagrams, or code snippets.",
          "It's often used with <figcaption> to provide a caption.",
        ],
        codeExample: '''<figure>
  <img src="chart.png" alt="Sales Chart">
  <figcaption>Monthly sales performance for 2024</figcaption>
</figure>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Figure with Code",
        article: <String>[
          "Figures can also contain code examples:",
        ],
        codeExample: '''<figure>
  <pre><code>
function greet(name) {
  return "Hello, " + name + "!";
}
  </code></pre>
  <figcaption>JavaScript function example</figcaption>
</figure>''',
        outPutExample: "true",
        note: "Figures help organize and caption various types of content.",
        warning: "null"),
  ],

  //Thirty-seventh lesson (HTML Character Entities)
  "HTML Character Entities": <LessonModel>[
    LessonModel(
        header: "HTML Character Entities",
        article: <String>[
          "Character entities are used to display special characters in HTML.",
          "They start with & and end with ;",
        ],
        codeExample: '''<p>&lt; represents less than (&lt;)</p>
<p>&gt; represents greater than (&gt;)</p>
<p>&amp; represents ampersand (&amp;)</p>
<p>&quot; represents quotation mark (&quot;)</p>
<p>&apos; represents apostrophe (&apos;)</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Common Character Entities",
        article: <String>[
          "Frequently used character entities:",
          "• &lt; = < (less than)",
          "• &gt; = > (greater than)",
          "• &amp; = & (ampersand)",
          "• &quot; = \" (quotation mark)",
          "• &apos; = ' (apostrophe)",
          "• &copy; = © (copyright)",
          "• &reg; = ® (registered trademark)",
          "• &trade; = ™ (trademark)",
        ],
        codeExample: '''<p>Copyright &copy; 2024 Company Name</p>
<p>Registered &reg; and Trademark &trade;</p>
<p>Use &lt;div&gt; for containers</p>''',
        outPutExample: "true",
        note: "Character entities ensure special characters display correctly in all browsers.",
        warning: "null"),
  ],

  //Thirty-eighth lesson (HTML Videos)
  "HTML Videos": <LessonModel>[
    LessonModel(
        header: "HTML Video Element",
        article: <String>[
          "The <video> element is used to embed video content in HTML pages.",
          "It supports multiple video formats and provides built-in controls.",
        ],
        codeExample: '''<video width="320" height="240" controls>
  <source src="movie.mp4" type="video/mp4">
  <source src="movie.webm" type="video/webm">
  Your browser does not support the video tag.
</video>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Video Attributes",
        article: <String>[
          "Common video attributes:",
          "• controls: Displays video controls",
          "• autoplay: Starts playing automatically",
          "• loop: Repeats the video",
          "• muted: Starts muted",
          "• poster: Shows an image before video plays",
          "• preload: Specifies how to load the video",
        ],
        codeExample: '''<video 
  width="400" 
  height="300" 
  controls 
  autoplay 
  muted 
  loop
  poster="thumbnail.jpg">
  <source src="video.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>''',
        outPutExample: "true",
        note: "Always provide fallback content for browsers that don't support video.",
        warning: "Autoplay videos should be muted to comply with browser policies."),
  ],

  //Thirty-ninth lesson (HTML Audios)
  "HTML Audios": <LessonModel>[
    LessonModel(
        header: "HTML Audio Element",
        article: <String>[
          "The <audio> element is used to embed audio content in HTML pages.",
          "It supports multiple audio formats and provides built-in controls.",
        ],
        codeExample: '''<audio controls>
  <source src="audio.mp3" type="audio/mpeg">
  <source src="audio.ogg" type="audio/ogg">
  Your browser does not support the audio tag.
</audio>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Audio Attributes",
        article: <String>[
          "Common audio attributes:",
          "• controls: Displays audio controls",
          "• autoplay: Starts playing automatically",
          "• loop: Repeats the audio",
          "• muted: Starts muted",
          "• preload: Specifies how to load the audio",
        ],
        codeExample: '''<audio 
  controls 
  autoplay 
  muted 
  loop>
  <source src="music.mp3" type="audio/mpeg">
  <source src="music.wav" type="audio/wav">
  Your browser does not support the audio tag.
</audio>''',
        outPutExample: "true",
        note: "Provide multiple audio formats for better browser compatibility.",
        warning: "Autoplay audio should be muted to comply with browser policies."),
  ],

  //Fortieth lesson (HTML Pictures)
  "HTML Pictures": <LessonModel>[
    LessonModel(
        header: "HTML Picture Element",
        article: <String>[
          "The <picture> element provides multiple image sources for different screen sizes and devices.",
          "It's useful for responsive images and art direction.",
        ],
        codeExample: '''<picture>
  <source media="(min-width: 800px)" srcset="large.jpg">
  <source media="(min-width: 400px)" srcset="medium.jpg">
  <img src="small.jpg" alt="Responsive image">
</picture>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Picture with Different Formats",
        article: <String>[
          "You can also provide different image formats:",
        ],
        codeExample: '''<picture>
  <source srcset="image.webp" type="image/webp">
  <source srcset="image.jpg" type="image/jpeg">
  <img src="image.jpg" alt="Image with format fallback">
</picture>''',
        outPutExample: "true",
        note: "The picture element provides better performance and compatibility.",
        warning: "Always include a fallback img element."),
  ],

  //Forty-first lesson (HTML Iframe)
  "HTML Iframe": <LessonModel>[
    LessonModel(
        header: "HTML Iframe Element",
        article: <String>[
          "The <iframe> element embeds another HTML page within the current page.",
          "It's commonly used for embedding videos, maps, and other external content.",
        ],
        codeExample: '''<iframe 
  src="https://www.example.com" 
  width="300" 
  height="200" 
  title="Example Website">
</iframe>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Iframe Attributes",
        article: <String>[
          "Common iframe attributes:",
          "• src: Specifies the URL of the embedded page",
          "• width/height: Sets the dimensions",
          "• title: Provides accessibility information",
          "• frameborder: Controls the border",
          "• allowfullscreen: Enables fullscreen mode",
        ],
        codeExample: '''<iframe 
  src="https://www.youtube.com/embed/dQw4w9WgXcQ"
  width="560" 
  height="315" 
  frameborder="0" 
  allowfullscreen
  title="YouTube video">
</iframe>''',
        outPutExample: "true",
        note: "Iframes are useful for embedding external content without leaving your page.",
        warning: "Be careful with iframes for security reasons - only embed trusted content."),
  ],

  //Forty-second lesson (HTML Iframe part 2)
  "HTML Iframe part 2": <LessonModel>[
    LessonModel(
        header: "Iframe Security",
        article: <String>[
          "Iframes can pose security risks if not used carefully.",
          "Important security considerations:",
          "• Only embed content from trusted sources",
          "• Use sandbox attribute to restrict iframe capabilities",
          "• Consider using Content Security Policy (CSP)",
        ],
        codeExample: '''<iframe 
  src="https://trusted-site.com" 
  sandbox="allow-scripts allow-same-origin"
  title="Trusted content">
</iframe>''',
        outPutExample: "true",
        note: "The sandbox attribute helps prevent malicious scripts from running.",
        warning: "Never embed untrusted content in iframes."),
  ],

  //Forty-third lesson (HTML Entities)
  "HTML Entities": <LessonModel>[
    LessonModel(
        header: "HTML Entities",
        article: <String>[
          "HTML entities are used to display characters that have special meaning in HTML.",
          "They help avoid conflicts with HTML syntax.",
        ],
        codeExample: '''<p>To display &lt;div&gt; tags, use: &amp;lt;div&amp;gt;</p>
<p>Copyright symbol: &copy;</p>
<p>Euro symbol: &euro;</p>
<p>Degree symbol: &deg;</p>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
  ],

  //Forty-fourth lesson (HTML SVG)
  "HTML SVG": <LessonModel>[
    LessonModel(
        header: "HTML SVG",
        article: <String>[
          "SVG (Scalable Vector Graphics) can be embedded directly in HTML.",
          "SVG images are scalable and maintain quality at any size.",
        ],
        codeExample: '''<svg width="100" height="100">
  <circle cx="50" cy="50" r="40" stroke="black" stroke-width="3" fill="red" />
</svg>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "SVG Shapes",
        article: <String>[
          "Common SVG shapes:",
          "• <circle>: Creates circles",
          "• <rect>: Creates rectangles",
          "• <line>: Creates lines",
          "• <polygon>: Creates polygons",
          "• <path>: Creates complex shapes",
        ],
        codeExample: '''<svg width="200" height="200">
  <rect x="10" y="10" width="80" height="80" fill="blue" />
  <circle cx="150" cy="50" r="30" fill="green" />
  <line x1="10" y1="150" x2="190" y2="150" stroke="red" stroke-width="2" />
</svg>''',
        outPutExample: "true",
        note: "SVG is great for logos, icons, and simple graphics.",
        warning: "null"),
  ],

  //Forty-fifth lesson (HTML Canvas)
  "HTML Canvas": <LessonModel>[
    LessonModel(
        header: "HTML Canvas",
        article: <String>[
          "The <canvas> element provides a drawing surface for JavaScript.",
          "It's used for creating graphics, animations, and games.",
        ],
        codeExample: '''<canvas id="myCanvas" width="300" height="200" style="border:1px solid #000;">
  Your browser does not support the canvas element.
</canvas>''',
        outPutExample: "true",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Canvas with JavaScript",
        article: <String>[
          "Canvas requires JavaScript to draw:",
        ],
        codeExample: '''<canvas id="myCanvas" width="300" height="200"></canvas>
<script>
  var canvas = document.getElementById("myCanvas");
  var ctx = canvas.getContext("2d");
  ctx.fillStyle = "red";
  ctx.fillRect(10, 10, 100, 100);
</script>''',
        outPutExample: "true",
        note: "Canvas is powerful for creating dynamic graphics and animations.",
        warning: "Canvas content is not accessible to screen readers."),
  ],

  //Forty-sixth lesson (HTML Vs XHTML)
  "HTML Vs XHTML": <LessonModel>[
    LessonModel(
        header: "HTML vs XHTML",
        article: <String>[
          "HTML and XHTML are both markup languages, but they have different syntax rules.",
          "XHTML is stricter and follows XML rules.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Key Differences",
        article: <String>[
          "Main differences:",
          "• XHTML requires all elements to be closed",
          "• XHTML is case-sensitive",
          "• XHTML requires quotes around attribute values",
          "• XHTML requires proper nesting",
          "• HTML5 is more flexible and forgiving",
        ],
        codeExample: '''<!-- HTML5 (flexible) -->
<img src=image.jpg>
<br>

<!-- XHTML (strict) -->
<img src="image.jpg" />
<br />''',
        outPutExample: "true",
        note: "HTML5 is the current standard and is more widely used.",
        warning: "null"),
  ],

  //Forty-seventh lesson (What's next?)
  "What's next?": <LessonModel>[
    LessonModel(
        header: "Congratulations!",
        article: <String>[
          "You have successfully completed the HTML tutorial!",
          "You now have a solid foundation in HTML and can create well-structured web pages.",
        ],
        codeExample: "null",
        outPutExample: "null",
        note: "null",
        warning: "null"),
    LessonModel(
        header: "Next Steps",
        article: <String>[
          "To continue your web development journey:",
          "• Learn CSS for styling and layout",
          "• Study JavaScript for interactivity",
          "• Explore responsive design principles",
          "• Practice building real projects",
          "• Learn about web accessibility",
          "• Study modern frameworks like React, Vue, or Angular",
        ],
        codeExample: '''<!-- Your first complete HTML page -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My First Website</title>
</head>
<body>
    <header>
        <h1>Welcome to My Website</h1>
        <nav>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>
    
    <main>
        <section>
            <h2>About Me</h2>
            <p>This is my first website built with HTML!</p>
        </section>
    </main>
    
    <footer>
        <p>&copy; 2024 My Website</p>
    </footer>
</body>
</html>''',
        outPutExample: "true",
        note: "Keep practicing and building projects to improve your skills!",
        warning: "null"),
  ],

};
