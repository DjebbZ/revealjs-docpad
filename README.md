# [Reveal.js](http://lab.hakim.se/reveal-js/) skeleton for [DocPad](https://github.com/bevry/docpad)
Create reveal.js presentations using DocPad.

## Description

Gives you everything to directly start writing your reveal.js slides, with an optional menu to navigate between them.

## Getting Started

1. [Install DocPad](https://github.com/bevry/docpad)

1. Clone the project and run the server

	``` bash
	git clone git://github.com/DjebbZ/revealjs-docpad.git
	cd revealjs.docpad
	npm install
	docpad run
	```

1. [Open http://localhost:9778/](http://localhost:9778/)

1. Start hacking away by modifying the `src` directory

## Documentation

### File structure

- Each slide is a file under `src/documents` with the tag `'slide'`.
- `src/documents/index.html.coffee` concatenates all the slides and displays the menu and the controls.
- `src/layout/default.html.coffee` holds the global html page.
- `docpad.coffee` holds site metadata like its name, keywords for SEO, and configuration options

### Usage

Each slide must have these metadata :

- `title: '<Title of your slide>'` Explicit enough...
- `slideOrder: X` X = Number used to order the slides
- `tags: ['slide']` Tag used to tell Docpad which document is a slide

This skeleton can generate a menu for you to easily navigate through your slide. It's activated by default,
in the docpad.coffee configuration file, at `generateSlidesMenu`. Disable it by using `false` instead.
If you use this feature, add the following metadata :

`htmlId: '<someId>'` <someId> must be a unique and valid HTML id for each slide.

Add as many slide files as you need. The content is written in Markdown.

If you want to use vertical slides, wrap each vertical slide content in a `<section>` tag :

	``` 
	<section>
		Vertical Slide 1
	</section>
	<section>
		Vertical Slide 2
	</section>
	```

Customize the site metadata in `docpad.coffee`.

Change the Reveal.js options in `src/layouts/default.html.coffee`.

## Known issues

- The controls UI doesn't highlight the possible directions.
- I couldn't include the Reveal dependencies as written in the docs, they produce an totally-not-explicit js error.
- In my machine, the Docpad's livereload plugin (shipped with the project) doesn't work.
- The generated menu has no style. I'm lazy and leave it up to you.

## Thanks

- [DocPad](https://github.com/bevry/docpad)
- [Takeharu.Oshida](https://github.com/georgeOsdDev) for SlidePad and some of its code

## License

This skeleton is made ["public domain"](http://en.wikipedia.org/wiki/Public_domain) using the [Creative Commons Zero](http://creativecommons.org/publicdomain/zero/1.0/), as such before you publish your website you should place your desired license here and within the `LICENSE.md` file.

If you are wanting to open-source your website, we suggest using the [Creative Commons Attribution License](http://creativecommons.org/licenses/by/3.0/) for content and the [MIT License](http://creativecommons.org/licenses/MIT/) for code. In which case you'd probably want to use the following as your license:

	Unless stated otherwise, all content is licensed under the [Creative Commons Attribution License](http://creativecommons.org/licenses/by/3.0/) and code licensed under the [MIT License](http://creativecommons.org/licenses/MIT/), © [Your Name](http://your.website)

If you are wanting to close-source your website, we'd suggest using the following:

	Copyright [Your Name](http://your.website). All rights reserved.

Other included things such as themes and libraries are likely already licensed by their own invidual licenses, so be sure to respect their licenses too.
