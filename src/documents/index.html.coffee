---
title: 'Reveal.js'
layout: 'default'
---

if @generateSlidesMenu
	div class:'menu', ->
		ul ->
			@getCollection('slides').toJSON().forEach (slide) ->
				li ->
					a href:"#/#{slide.htmlId}", ->
						text slide.title

div class:'reveal', ->
	div class:'slides', ->
		@getCollection('slides').toJSON().forEach (slide) =>
			section id:"#{slide.htmlId}", ->
				text slide.contentRenderedWithoutLayouts if slide.contentRenderedWithoutLayouts

	# The navigational controls UI
	aside class:"controls", style:"display: block;", ->
		a class:"left", href:"#", -> '◄'
		a class:"right", href:"#", -> '►'
		a class:"up", href:"#", -> '▲'
		a class:"down", href:"#", '▼'

	# Presentation progress bar
	div class:"progress", -> span