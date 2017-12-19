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
	<link rel="stylesheet" type="text/css" href="{{site.baseUrl}}/reset.css">
	<link rel="stylesheet" type="text/css" href="{{site.baseUrl}}/main.css">
</head>
<body>
	<header class="header container">
		<h1><a href="{{site.baseUrl}}"><img src="{{site.baseUrl}}/images/logo.png" alt="Eventos Tech"></a></h1>
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
			<article class="event">
				<a class="event-media dark-image" href="https://docs.google.com/forms/d/1Z_bG6lRJrMa6wnhy4KGoL_UkJ9cAQpYrgvepBdFOt7w/viewform?edit_requested=true" target="_blank">
					<img alt="Front in Vale" src="http://frontinvale.com.br/images/front-in-vale.svg">
				</a>
				<section class="event-main">
					<h2 class="name"><a href="https://docs.google.com/forms/d/1Z_bG6lRJrMa6wnhy4KGoL_UkJ9cAQpYrgvepBdFOt7w/viewform?edit_requested=true" target="_blank">Call4Papers - Front in Vale 2017</a></h2>
					<p class="description">Além das palestras tradicionais, neste ano iremos abrir espaço para a comunidade através dos lightning talks. Serão 8 durante o dia, sendo 4 na parte da manhã e 4 na parte da tarde. Cada palestrante terá 10 minutos para a apresentação.</p>
					<ul class="event-infos">
						<li class="link"><a href="https://docs.google.com/forms/d/1Z_bG6lRJrMa6wnhy4KGoL_UkJ9cAQpYrgvepBdFOt7w/viewform?edit_requested=true" target="_blank">Submeter trilha! (Até 20/03)</a></li>
						<li class="date">Evento: 16/09/2017</li>
						<li class="address"><a href="https://www.google.com/maps/preview?q=Faro+Hotel+-+Rua+S%C3%ADria,+Jardim+Oswaldo+Cruz,+S%C3%A3o+Jos%C3%A9+dos+Campos+-+S%C3%A3o+Paulo,+Brasil&hl=pt-BR&ie=UTF8&ll=-23.196523,-45.88264&spn=0.011794,0.019741&sll=37.0625,-95.677068&sspn=41.496446,80.859375&oq=Faro+Hotel&t=m&z=16&iwloc=A" target="_blank">Faro Hotel - São José dos Campos/SP</a></li>
					</ul>
				</section>
			</article>
			<article class="event">
				<a class="event-media dark-image" href="https://www.papercall.io/reactconfbr" target="_blank">
					<img alt="React Conf 2017" src="https://scontent.fldb1-1.fna.fbcdn.net/v/t1.0-9/19366420_231009184083433_8298607544036184477_n.png?oh=c9b6cb8e540ad661786ff541bc5ec271&oe=59E027C5">
				</a>
				<section class="event-main">
					<h2 class="name"><a href="https://www.papercall.io/reactconfbr" target="_blank">Call4Papers - React Conf 2017</a></h2>
					<p class="description">Se você tem uma palestra inédita, com temas relacionados a React JS, React Native, Fiber, GraphQL, Redux, Relay, Jest, PWAs, ou outros frameworks e bibliotecas reativas, envie sua proposta. Responderemos a todos.</p>
					<ul class="event-infos">
						<li class="link"><a href="https://www.papercall.io/reactconfbr" target="_blank">Submeter palestra! (Até 31/08)</a></li>
						<li class="date">Evento: 07/10/2017</li>
						<li class="address"><a href="#" target="_blank">Em breve - São Paulo/SP</a></li>
					</ul>
				</section>
			</article>
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
