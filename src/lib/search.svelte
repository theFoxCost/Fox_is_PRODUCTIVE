<script>
	import { Search } from 'lucide-svelte';
	export let searchQuery;
</script>

<main>
	<div>
		<div class="search_cont">
			<Search color="rgb(73, 73, 73)" size="14" />
		</div>
		<input
			type="text"
			placeholder="search"
			class="search"
			bind:value={searchQuery}
		/>
	</div>
</main>

<style>
	.search_cont {
		position: absolute;
		margin-top: 23px;
		margin-left: 5px;
	}
	.search {
		width: 170px;
		margin-top: 10px;
		background-color: rgb(47, 47, 47);
		border: none;
		height: 40px;
		border-radius: 5px;
		padding: 2px 25px;
		font-size: 15px;
		color: white;
		font-family: jet-r;
	}
	input:focus {
		outline: none;
		border: none;
		box-shadow: none;
	}
	@font-face {
		font-family: jet-r;
		src: url(../fonts/JetBrainsMono-Regular.ttf);
	}
	input::placeholder {
		color: rgba(255, 255, 255, 0.246);
		font-family: jet-r;
	}
</style>
