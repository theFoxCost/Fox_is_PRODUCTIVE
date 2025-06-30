<script>
	import { onMount } from "svelte";
	import { fade } from 'svelte/transition';
	import img from './assets/img.gif';
	import quotes from './assets/quotes.json';
    import Spinner from './spinner.svelte'

	let quote = "";
	let author = "";
	let date = "";
	let visible = false;

	function fetchRandomQuote() {
		visible = false; // trigger fade-out

		setTimeout(() => {
			const randomIndex = Math.floor(Math.random() * quotes.length);
			const selected = quotes[randomIndex];
			quote = selected.quote;
			author = selected.author;
			date = selected.date;
			visible = true; // trigger fade-in
		}, 500); // half second delay for fade-out before new quote
	}

	onMount(() => {
		setTimeout(() => {
			fetchRandomQuote();
			setInterval(fetchRandomQuote, 5000);
		}, 1000);
	});
</script>


<main>
	<div id="box">
		{#if visible}
			<div transition:fade={{ duration: 500 }}>
				<div id="txt">
					<p id="quoteText">{quote}</p>
				</div>
				<div id="aut">
					<p id="quoteAuthor">{author} | {date}</p>
				</div>
			</div>
		{/if}
	</div>
	<div id="logo">
        <Spinner />
	</div>
</main>


<style>
	@font-face {
		font-family: sst-r;
		src: url(./font/SSTRg.TTF);
	}
	@font-face {
		font-family: sst-b;
		src: url(./font/SSTBold.TTF);
	}
	@font-face {
		font-family: sst-l;
		src: url(./font/SSTLight.TTF);
	}

	#txt {
		display: flex;
		align-items: start;
		font-size: 20px;
		color: aliceblue;
		margin: 0;
		font-family: sst-l;
	}
	#box {
		display: flex;
		flex-direction: column;
		width: 70%;
		margin: auto;
		margin-top: 380px;
	}
	#aut {
		color: aliceblue;
		font-family: sst-b;
		display: flex;
		align-items: center;
		justify-content: end;
	}
	#msg {
		position: absolute;
		right: 0;
		width: 100px;
		bottom: 0;
		margin: 15px;
		border-radius: 8px;
	}
	p {
		margin-bottom: 2px;
	}
</style>
