<script>
    export let tag_ref;
    $: capitalized = tag_ref.charAt(0).toUpperCase() + tag_ref.slice(1);
    
</script>

<main>
    <div class="tag">
        <div class="tag_txt">
            <p>{capitalized}</p>
        </div>
    </div>
</main>

<style>
    p {
        color: rgb(0, 192, 0);
    }
    .tag_txt {
        align-items: center;
        text-align: center;
    }
    .tag {
        display: flex;
        align-items: center;
        justify-content: space-around;
        width: 60px;
        height: 25px;
        border: rgb(0, 192, 0) 2px solid;
        background-color: rgba(0, 128, 0, 0.447);
        border-radius: 15px;
    }
</style>
