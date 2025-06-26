<script>
    import { Play, Pause, SkipBack, SkipForward, Volume2, VolumeX } from 'lucide-svelte';
    import spotify from '../assets/spotify-tile.svg';
    import { writable } from 'svelte/store';

    const isPlaying = writable(false);
    const isMuted = writable(false);

    function togglePlay() {
        isPlaying.update(v => !v);
    }

    function toggleMute() {
        isMuted.update(v => !v);
    }
</script>

<main>
    <div class="player">
        <div class="spot">
            <img class="spoti" src={spotify} alt="Spotify logo" />
        </div>

        <div class="backnext icon">
            <SkipBack size="18" color='aliceblue'/>
        </div>

        <div 
            class="play-toggle icon"
            on:click={togglePlay} 
            role="button" 
            tabindex="0" 
            on:keydown={(e) => e.key === 'Enter' && togglePlay()}>
            {#if $isPlaying}
                <Pause size="18" color="aliceblue" />
            {:else}
                <Play size="18" color="#3bd75f" />
            {/if}
        </div>

        <div class="skipfor icon">
            <SkipForward size="18" color='aliceblue'/>
        </div>

        <div 
            class="vol icon" 
            on:click={toggleMute} 
            role="button" 
            tabindex="0"
            on:keydown={(e) => e.key === 'Enter' && toggleMute()}>
            {#if $isMuted}
                <VolumeX size="18" color="gray" />
            {:else}
                <Volume2 size="18" color="aliceblue" />
            {/if}
        </div>

        <div class="visualizer">
            <svg width="50" height="24" viewBox="0 0 50 24" xmlns="http://www.w3.org/2000/svg">
                {#if $isPlaying}
                    <!-- Animated bars when playing -->
                    <rect x="0" y="24" width="3" height="10" fill="#3bd75f">
                        <animate attributeName="height" values="10;40;20;60;10" dur="1s" repeatCount="indefinite"/>
                        <animate attributeName="y" values="14;0;4;0;14" dur="1s" repeatCount="indefinite"/>
                    </rect>
                    <rect x="6" y="24" width="3" height="40" fill="#3bd75f">
                        <animate attributeName="height" values="40;20;60;10;40" dur="1s" repeatCount="indefinite"/>
                        <animate attributeName="y" values="0;4;0;14;0" dur="1s" repeatCount="indefinite"/>
                    </rect>
                    <rect x="12" y="24" width="3" height="20" fill="#3bd75f">
                        <animate attributeName="height" values="20;60;10;40;20" dur="1s" repeatCount="indefinite"/>
                        <animate attributeName="y" values="4;0;14;0;4" dur="1s" repeatCount="indefinite"/>
                    </rect>
                    <rect x="18" y="24" width="3" height="60" fill="#3bd75f">
                        <animate attributeName="height" values="60;10;40;20;60" dur="1s" repeatCount="indefinite"/>
                        <animate attributeName="y" values="0;14;0;4;0" dur="1s" repeatCount="indefinite"/>
                    </rect>
                    <rect x="24" y="24" width="3" height="30" fill="#3bd75f">
                        <animate attributeName="height" values="30;50;10;30;50" dur="0.8s" repeatCount="indefinite"/>
                        <animate attributeName="y" values="0;0;14;0;0" dur="0.8s" repeatCount="indefinite"/>
                    </rect>
                    <rect x="30" y="24" width="3" height="50" fill="#3bd75f">
                        <animate attributeName="height" values="50;10;30;50;10" dur="0.8s" repeatCount="indefinite"/>
                        <animate attributeName="y" values="0;14;0;0;14" dur="0.8s" repeatCount="indefinite"/>
                    </rect>
                    <rect x="36" y="24" width="3" height="10" fill="#3bd75f">
                        <animate attributeName="height" values="10;30;50;10;30" dur="0.8s" repeatCount="indefinite"/>
                        <animate attributeName="y" values="14;0;0;14;0" dur="0.8s" repeatCount="indefinite"/>
                    </rect>
                {:else}
                    <!-- Static bars when paused -->
                    <rect x="0" y="14" width="3" height="10" fill="#3bd75f"/>
                    <rect x="6" y="4" width="3" height="20" fill="#3bd75f"/>
                    <rect x="12" y="8" width="3" height="16" fill="#3bd75f"/>
                    <rect x="18" y="0" width="3" height="24" fill="#3bd75f"/>
                    <rect x="24" y="4" width="3" height="20" fill="#3bd75f"/>
                    <rect x="30" y="10" width="3" height="14" fill="#3bd75f"/>
                    <rect x="36" y="14" width="3" height="10" fill="#3bd75f"/>
                {/if}
            </svg>
        </div>
    </div>
</main>

<style>
    .player {
        border: 2px #3bd75f solid;
        background-color: rgb(47, 47, 47);
        display: flex;
        justify-content: space-around;
        align-items: center;
        border-radius: 10px;
        height: 30px;
        width: 205px;
        padding: 5px;
        margin-bottom: 8px;
    }

    .spoti {
        width: 20px;
        height: 20px;
    }

    .icon :global(svg) {
        cursor: pointer;
    }

    .visualizer {
        width: 50px;
        height: 22px;
        margin-left: 2px;
    }
</style>