<script>
    export let isPassShown
    
</script>
<main>
    <div class="passcode" style="display: {isPassShown};">
        <input type="text" class="field">
    </div>
</main>
<style>
    .passcode{
        display: flex;
        justify-content: space-around;
    }
    .field{
        border: 2px rgba(255, 166, 0, 0.756) solid;
        background-color: rgb(106, 69, 0);
        color: aliceblue;
        width:100px;
        height: 40px;
    }
    input:focus{
        outline: none;
    }
</style>