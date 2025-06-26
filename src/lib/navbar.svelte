<script>
    import Logo from "./logo.svelte";
    import Card from "./card.svelte";
    import Content from './content.svelte'
    import Player from "./player.svelte";
    import drift from '../assets/drift.gif'
</script>
<main>
    <div class="main">
        <div>
            <Logo />
        </div>
        <div>
            <Card />
        </div>
        <div>
            <Content />
        </div>
        <div>
            <Player />
        </div>
        <div>
            <img class="driftl" src=" {drift} " alt="">
        </div>
    </div>
</main>



<style>
   .main{
    margin: 5px;
    border-radius: 5px;
        display: flex;
        flex-direction: column;
        height: 95vh;
        width: 220px;
        background-color: rgba(0, 0, 0, 0.728);
        padding: 15px 10px;
        border: rgba(255, 255, 255, 0.428) 1px solid;
    }
    .driftl{
    width: 220px;
    height: 120px;
    border-radius:5px;
    }
</style>