<script>
	import Fuse from 'fuse.js';
	import Search from './Search.svelte';

	import {
		NotebookText, LayoutDashboard, Calendar, CheckSquare, BookOpenText,
		Brain, Lightbulb, Clock3, PlayCircle, Archive, Library, Activity,
		Target, BookOpen, PenTool, Settings
	} from 'lucide-svelte';

	let activeIndex = null;
	let searchQuery = '';

	const features = [
		{ label: 'Note-Taking Space', icon: NotebookText },
		{ label: 'Project Manager', icon: LayoutDashboard },
		{ label: 'Smart Calendar', icon: Calendar },
		{ label: 'To-Do Organizer', icon: CheckSquare },
		{ label: 'Daily Journal Log', icon: BookOpenText },
		{ label: 'Mind Map Studio', icon: Brain },
		{ label: 'Idea & Insight Hub', icon: Lightbulb },
		{ label: 'Activity Timeline', icon: Clock3 },
		{ label: 'Active Project', icon: PlayCircle },
		{ label: 'Archived Projects', icon: Archive },
		{ label: 'Knowledge Library', icon: Library },
		{ label: 'Habit Tracker', icon: Activity },
		{ label: 'Goals & Motivation', icon: Target },
		{ label: 'Reading List Hub', icon: BookOpen },
		{ label: 'Tablet Drawing Pad', icon: PenTool },
		{ label: 'App Preferences', icon: Settings }
	];

	const fuse = new Fuse(features, {
		keys: ['label'],
		threshold: 0.4
	});

	$: filtered = searchQuery.trim()
		? fuse.search(searchQuery).map(res => res.item)
		: features;

	function changeborder(index) {
		activeIndex = index;
	}
</script>

<main>
	<Search bind:searchQuery />

	<div class="list">
		{#each filtered as feature, i}
			<div
				class="show {activeIndex === i ? 'active' : ''}"
				on:click={() => changeborder(i)}
			>
				<div class="item">
					<svelte:component this={feature.icon} size="16" class="icon" />
					<h1>{feature.label}</h1>
				</div>
			</div>
		{/each}
	</div>
</main>

<style>
	.list {
		transform: translateZ(0);
		scroll-behavior: smooth;
		display: flex;
		flex-direction: column;
		align-items: flex-start;
		gap: 15px;
		margin-top: 20px;
		margin-bottom: 10px;
		height: 410px;
		overflow-y: auto;
		scrollbar-width: none;
	}
	.list::-webkit-scrollbar {
		display: none;
	}
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
		width: 100%;
	}
	.show.active {
		border-left: 8px solid rgba(255, 140, 0, 0.9);
		padding-left: 20px;
		background: linear-gradient(to right, rgba(255, 140, 0, 0.1), transparent);
	}
	.item {
		display: flex;
		align-items: center;
		gap: 10px;
	}
	.icon {
		color: orange;
	}
	h1 {
		font-size: 15px;
		margin: 0;
		color: inherit;
		font-family: jet-r, sans-serif;
		font-weight: 300;
	}
</style>
