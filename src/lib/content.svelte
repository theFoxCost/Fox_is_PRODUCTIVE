<script>
	let activeIndex = null;

	let features = [
  'Note-Taking Space',
  'Project Manager',
  'Smart Calendar',
  'To-Do Organizer',
  'Daily Journal Log',
  'Mind Map Studio',
  'Idea & Insight Hub',
  'Activity Timeline',
  'Active Project ',
  'Archived Projects',
  'Knowledge Library',
  'Habit Tracker',
  'Goals & Motivation',
  'Reading List Hub',
  'Tablet Drawing Pad',
  'App Preferences'
];


	function changeborder(index) {
		activeIndex = index;
	}
</script>

<main>
	<div class="list">
		{#each features as feature, i}
			<div
				class="show {activeIndex === i ? 'active' : ''}"
				on:click={() => changeborder(i)}
			>
				<h1>{feature}</h1>
			</div>
		{/each}
	</div>
</main>

<style>
.list {
	scroll-behavior: smooth;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 15px;
	margin-top: 20px;
	margin-bottom: 10px;
    height:410px;
    overflow-y: scroll;
}

/* Default item */
.show {
	cursor: pointer;
	padding: 5px 10px;
	border-left: 5px solid transparent;
	border-radius: 8px;
	color: white;
	transition:
		padding-left 0.3s ease,
		border-left 0.3s ease,
		background 0.3s ease;
	background-color: #222;
}

/* When active */
.show.active {
	border-left: 8px solid rgba(255, 140, 0, 0.9);
	padding-left: 20px;
	background: linear-gradient(to right, rgba(255, 140, 0, 0.1), transparent);
}

/* Text styling */
h1 {
	font-size: 15px;
	margin: 0;
	color: inherit;
	transition: color 0.3s ease;
}
</style>
