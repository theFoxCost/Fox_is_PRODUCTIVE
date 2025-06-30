<script>
  import Content from "../pages/Notes___Writing_Pad/loading_page/content.svelte";
</script>

<main class="big_main">
  <Content />
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
  overflow-y: scroll;
  scrollbar-width: none; 
}


</style>