<script>
  import Card from "../pages/Notes___Writing_Pad/card.svelte";
  import LockScreen from "../pages/Notes___Writing_Pad/security/lockScreen.svelte";
</script>

<main class="big_main">
  <Card isShown="none" />
    <LockScreen />
</main>

<style>
.big_main {
  position: relative;   
  z-index: 15;         
  background-color: rgba(0, 0, 0, 0.208);
  width: 156vh;
  height: 98.3vh;
  margin: 5px;
  border-radius: 5px;
  border: rgba(255, 255, 255, 0.2) 1px solid;
  backdrop-filter: blur(5px); 
}

</style>