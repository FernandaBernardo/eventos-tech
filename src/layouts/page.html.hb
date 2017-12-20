<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Eventos Tech</title>
	<meta name="description" content="Lista com os próximos eventos/meetups/reuniões de Tecnologia">
	<meta itemprop="name" content="Eventos Tech">
	<meta name="twitter:card" content="summary" />
	<meta name="twitter:title" content="Eventos Tech">
	<meta name="twitter:description" content="Lista com os próximos eventos/meetups/reuniões de Tecnologia">
	<meta property="og:url" content="https://fernandabernardo.github.io/eventos-tech">
	<meta property="og:title" content="Eventos Tech">
	<meta property="og:description" content="Lista com os próximos eventos/meetups/reuniões de Tecnologia">
	<meta property="og:site_name" content="Eventos Tech">
	<meta itemprop="description" content="Lista com os próximos eventos/meetups/reuniões de Tecnologia">
	<link rel="icon" type="image/png" href="images/favicon.png">
	<link rel="stylesheet" type="text/css" href="reset.css">
	<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<header class="header container">
		<h1><a href="/"><img src="images/logo.png" alt="Eventos Tech"></a></h1>
		<nav class="nav">
			<ul class="nav-list">
				<li class="nav-item"><a href="#proximos-eventos">Próximos Eventos</a></li>
				<li class="nav-item"><a href="#submissao-palestras">Submeter Palestras</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section id="proximos-eventos" class="container">
			<h3 class="title">Próximos Eventos</h3>
			{{#each (getCollection "events")}}
				<article class="event">
					<a class="event-media dark-image" href="{{url}}" target="_blank">
						<img alt="{{name}}" src="{{url_image}}">
					</a>
					<section class="event-main">
						<h2 class="name"><a href="{{url}}" target="_blank">{{name}}</a></h2>
						<p class="description">{{description}}</p>
						<ul class="event-infos">
							<li class="link"><a href="{{url}}" target="_blank">{{url}}</a></li>
							<li class="date">{{date_event}}</li>
							<li class="price">{{price}}</li>
							<li class="address"><a href="{{address_maps}}" target="_blank">{{address_name}}</a></li>
						</ul>
					</section>
				</article>
			{{/each}}
		</section>

		<section id="submissao-palestras" class="container">
			<h3 class="title">Submeter Palestras</h3>
			{{#each (getCollection "call4papers")}}
				<article class="event">
					<a class="event-media dark-image" href="{{url}}" target="_blank">
						<img alt="{{name}}" src="{{url_image}}">
					</a>
					<section class="event-main">
						<h2 class="name"><a href="{{url}}" target="_blank">Call4Papers - {{name}}</a></h2>
						<p class="description">{{description}}</p>
						<ul class="event-infos">
							<li class="link"><a href="{{url}}" target="_blank">Submeter palestra! (Até {{submission_date}})</a></li>
							<li class="date">Evento: {{date_event}}</li>
							<li class="address"><a href="{{address_maps}}" target="_blank">{{address_name}}</a></li>
						</ul>
					</section>
				</article>
			{{/each}}
		</section>
		<section id="sugerir-evento" class="container">
			<h3 class="title">Conhece mais algum evento de tecnologia que não está na lista?</h3>
			<a class="new-event" href="https://github.com/fernandabernardo/eventos-tech/issues">Sugerir Evento</a>
			<span>*Mais informações no <a href="https://github.com/fernandabernardo/eventos-tech">README</a></span>
		</section>
        {{{content}}}
	</main>
	<footer class="container">
		<p>Copyright © Eventos Tech <script>now = new Date; document.write(now.getFullYear());</script></p>
	</footer>

	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-93509291-1', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>
