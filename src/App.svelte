<script>
  import Navbar from "./lib/navbar.svelte";
  import Menu from "./lib/menu.svelte";
</script>
<main>
  <div class="glow-bg"></div>
  <div class="nav">
    <Navbar />
  </div>
  <div class="menu">
    <Menu />
  </div>
</main>





<style>

.glow-bg {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  z-index: -1;
  background: linear-gradient(135deg, #00f0ff, #00ff8f, #7f00ff, #ff00f7);
  background-size: 400% 400%;
  animation: neonMove 10s ease infinite;
  filter: blur(100px);
  opacity: 0.4;
}

.content {
  position: relative;
  z-index: 1;
  padding: 2rem;
  color: white;
  font-family: sans-serif;
}

@keyframes neonMove {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}
</style>