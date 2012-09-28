# -----------------------------
# Prepare

# Get our formatted site title as defined by out docpad.cson file
siteTitle = @getPreparedTitle()

# Merge our site keywords with our documents keywords and stringify
siteKeywords = @getPreparedKeywords()


siteDescription = @getPreparedKeywords()


# -----------------------------
# Document

doctype 5
html lang: 'en', ->

	# -----------------------------
	# Document Header

	head ->
		# -----------------------------
		# Meta Information

		# Set our charset to UFT8 (oldshool method)
		meta charset:'utf-16'

		# Set our charset to UFT8 (newschool method)
		meta 'http-equiv':'content-type', content:'text/html; charset=utf-8'

		# Always use the latest rendering engine
		meta 'http-equiv':'X-UA-Compatible', content:'IE=edge,chrome=1'

		# Set our defualt viewport (window size and scaling) for mobile devices
		meta name:'viewport', content:'width=device-width, initial-scale=1'

		# SEO: Set our page title that will show up in search engine results
		meta name:'title', content:h(siteTitle)

		# SEO: Set the description of this page
		meta name:'description', content:h(siteDescription)

		# SEO: Set the keywords of this page
		meta name:'keywords', content:h(siteKeywords)

		# Output meta data set by DocPad and it's plugins
		text @getBlock('meta').toHTML()

		# Page title as shown in the browser tab and window
		title siteTitle

		link href:"http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic", rel:"stylesheet", type:"text/css"

		link rel:'stylesheet', href:'/vendor/reveal/css/main.css', type:'text/css'
		link rel:'stylesheet', href:'/vendor/reveal/css/theme/default.css', type:'text/css'
		link rel:'stylesheet', href:'/vendor/reveal/lib/css/zenburn.css', type:'text/css'

		link rel:'stylesheet', href:'/vendor/reveal/css/print/paper.css', type:'text/css', media:'print'

		# -----------------------------
		# IE conditional comment
		ie 'lte IE9', ->
			script async:'async', src:'http://html5shim.googlecode.com/svn/trunk/html5.js'


	# -----------------------------
	# Document Body

	body ->
		text @content

		script src:'/vendor/reveal/lib/js/showdown.js'
		script src:'/vendor/reveal/lib/js/classList.js'
		script src:'/vendor/reveal/lib/js/head.min.js'
		script src:'/vendor/reveal/lib/js/highlight.js'
		script src:'/vendor/reveal/lib/js/html5shiv.js'
		script src:'/vendor/reveal/lib/js/showdown.js'
		script src:'/vendor/reveal/js/reveal.js'

		script type:'text/javascript', ->
			"""
				Reveal.initialize({
					// Display controls in the bottom right corner
					controls: true,

					// Display a presentation progress bar
					progress: true,

					// Push each slide change to the browser history
					history: true,

					// Enable keyboard shortcuts for navigation
					keyboard: true,

					// Enable the slide overview mode
					overview: true,

					// Loop the presentation
					loop: false,

					// Number of milliseconds between automatically proceeding to the
					// next slide, disabled when set to 0
					autoSlide: 0,

					// Enable slide navigation via mouse wheel
					mouseWheel: true,

					// Apply a 3D roll to links on hover
					rollingLinks: true,

					// Transition style
					transition: 'default' // default/cube/page/concave/linear(2d)
				});
			"""

		# Analytics
		script """
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-15502477-7']);
			_gaq.push(['_trackPageview']);
			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		"""
