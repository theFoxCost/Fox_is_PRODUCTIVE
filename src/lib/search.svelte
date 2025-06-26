<script>
    import { Search } from 'lucide-svelte';
</script>
<main>
    <div>
    <div class="search_cont">
        <Search color="rgb(73, 73, 73)" size="14"/>
    </div>
        <input type="text" placeholder="search" class="search">
    </div>
</main>
<style>
    .search_cont{
        position: absolute;
        margin-top: 23px;
        margin-left: 5px;
    }
    .search{
        width: 160px;
        margin-top: 10px;
        background-color: rgb(47, 47, 47);
        border: none;
        height: 40px;
        border-radius: 5px;
        padding: 2px 25px;
        font-size: 15px;
    }
    input:focus {
        outline: none;
        border: none;
        box-shadow: none;
        color: aliceblue;
        font-family: jet-r;
        font-weight: 400;
    }
    @font-face {
    font-family: jet-r;
    src: url(../fonts/JetBrainsMono-Regular.ttf);
}
    input::placeholder{
        color:rgba(255, 255, 255, 0.246);
        font-family: jet-r;
    }
</style>