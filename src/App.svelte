<script>
  import Navbar from './lib/navbar.svelte';
  import Menu from './lib2/menu.svelte';
  import SpaceBackground from './lib/SpaceBackground.svelte';
</script>

<main>
  <SpaceBackground /> 
  <div class="bigOG">
    <div class="nav">
      <Navbar />
    </div>
    <div class="menu">
      <Menu />
    </div>
  </div>
</main>
<style>
  .bigOG{
  display: flex;
  flex-direction: row;
}
</style>
