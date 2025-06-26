<script>
    import { Play } from 'lucide-svelte';
    import { SkipForward } from 'lucide-svelte';
    import { SkipBack } from 'lucide-svelte';
    import { Pause } from 'lucide-svelte';
    import { Disc3 } from 'lucide-svelte'; // do 360 for this
    import { Volume2 } from 'lucide-svelte';
    import { VolumeOff } from 'lucide-svelte';

</script>

<main>
    <div class="player">
        <div>
            <Disc3 color="rgba(255, 140, 0, 0.9)"/>
        </div>
        <div>
            <SkipBack color="white"/>
        </div>
        <div>
            <Play color="white"/>
        </div>
        <div>
            <SkipForward color="white"/>
        </div>
        <div>
            <Volume2 color="white"/>
        </div>

        <Pause />
        <VolumeOff/>
    </div>
</main>
<style>
    .player{
        background-color: rgb(68, 68, 68);
        height:20px;
        padding: 5px;
        width: 210px;
        display:flex;
        flex-direction:row;
        justify-content:space-between;    
    }
</style>