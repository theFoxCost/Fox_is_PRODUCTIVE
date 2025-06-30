<script>
	import { onMount } from "svelte";
	import Typed from "typed.js";
	import { CircleCheck, CircleX, Lock, Eye, EyeOff } from "lucide-svelte";


	let passwordInput = "";
	let color = "#232323";
	let eyecolor = "#aaa";
	let showPassword = false;
	let letter_space = "6px";

	let typedTarget;
	let accessIcon = null;
	let accessText = "";

	const PASSWORD = "ilovefox";

	const changeeye = () => {
		showPassword = !showPassword;
		eyecolor = showPassword ? "rgb(49, 49, 49)" : "#aaa";
		letter_space = showPassword ? "1px" : "6px";
	};

	async function verifyPassword() {
		await new Promise((r) => setTimeout(r, 500));

		const result = passwordInput === PASSWORD;

		if (result) {
			color = "#1c9800";
			accessText = "Access Succeeded";
			accessIcon = "check";
		} else {
			color = "#98001a";
			accessText = "Access Denied";
			accessIcon = "x";
		}
	}

	function handleKeydown(event) {
		if (event.key === "Enter") {
			verifyPassword();
		}
	}

	onMount(() => {
		new Typed(typedTarget, {
			strings: ["Enter Your Password"],
			typeSpeed: 50,
			showCursor: false
		});
	});
</script>


<main>
	<div class="passcode">
		{#if !accessText}
			<h1 bind:this={typedTarget} class="typed-text"></h1>
		{:else}
			<h1 class="access-text" style="color: {color};">
				{accessText}
				{#if accessIcon === "check"}
					<CircleCheck color={color} size="18" />
				{:else if accessIcon === "x"}
					<CircleX color={color} size="18" />
				{/if}
			</h1>
		{/if}

		<div class="pas1">
			<div class="pass_cont">
				<input
					type={showPassword ? "text" : "password"}
					bind:value={passwordInput}
					on:keydown={handleKeydown}
					style="background-color: {color}; padding-right: 30px; letter-spacing: {letter_space};"
				/>
				<div class="eye-icon" on:click={changeeye}>
					{#if showPassword}
						<EyeOff size="16" color={eyecolor} />
					{:else}
						<Eye size="16" color={eyecolor} />
					{/if}
				</div>
			</div>

		</div>
	</div>
</main>

<style>
	* {
		font-family: jet-r;
	}

	main {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		height: 98.5vh;
		color: rgba(255, 255, 255, 0.802);
	}

	.passcode {
		display: flex;
		flex-direction: column;
		align-items: center;
		padding: 20px;
		border-radius: 10px;
	}

	.typed-text,
	.access-text {
		font-size: 1.2rem;
		margin-bottom: 10px;
		text-align: center;
		display: flex;
		align-items: center;
		gap: 5px;
	}

	.pas1 {
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		align-items: center;
		gap: 4px;
	}

	.pas1 input {
		padding: 5px 15px;
		font-size: 1.1rem;
		border-radius: 200px;
		text-align: center;
		color: rgba(255, 248, 240, 0.753) ;
		border: none;
		width: 200px;
		background-color: #232323;
		transition: background-color 0.3s ease;
	}

	input:focus {
		outline: none;
	}

	.pass_cont {
		position: relative;
	}
    .pass_cont input {
	padding: 5px 35px 5px 15px;
	font-size: 1.1rem;
	border-radius: 200px;
	text-align: center;
	color: rgba(255, 248, 240, 0.753);
	border: none;
	background-color: #232323;

	/* This is the transition */
	transition: background-color 0.3s ease, opacity 0.3s ease;
}

	.eye-icon {
		position: absolute;
		right: 10px;
		top: 58%;
		transform: translateY(-50%);
		cursor: pointer;
	}

	.loader {
		width: 10px;
		aspect-ratio: 1;
		border-radius: 50%;
		background:
			radial-gradient(farthest-side, gray 94%, #0000) top/8px 8px no-repeat,
			conic-gradient(#0000 30%, gray);
		-webkit-mask: radial-gradient(farthest-side, #0000 calc(100% - 8px), #000 0);
		animation: l13 1s infinite linear;
	}

	@keyframes l13 {
		100% {
			transform: rotate(1turn);
		}
	}
</style>
