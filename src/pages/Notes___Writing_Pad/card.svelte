<script>
  import { Star, EllipsisIcon, Laugh, Podcast } from "lucide-svelte";
  import tippy from "tippy.js";
  import "tippy.js/dist/tippy.css";
  import { onMount } from "svelte";

  let podcastIcon;

  onMount(() => {
    if (podcastIcon) {
      tippy(podcastIcon, {
        content: "Tap to Listen",
        animation: "scale",
        theme: "light-border",
        placement: "top",
      });
    }
  });
</script>

<main>
  <div class="main_card">
    <div class="tools">
      <div class="rc_logX">
        <Laugh color="#00FFE1" />
      </div>
      <div class="rc_log">
        <Star />
      </div>
      <div class="rc_log">
        <EllipsisIcon />
      </div>
    </div>

    <div class="title">
      <h3>Complete Nuclear Code</h3>
      <!-- ✅ Tooltip target must be on a real DOM element -->
      <span bind:this={podcastIcon} class="tooltip-wrapper">
        <Podcast color="#00FFE1" />
      </span>
    </div>

    <div class="description">
      <p class="des">
        In the quiet hum of the circuit, a faint glint flickered beneath layers
        of obsidian casing. The machine's pulse echoed like a heartbeat, steady
        and hypnotic.
      </p>
    </div>

    <div class="gradient-line"></div>
  </div>
</main>

<style>
  .gradient-line {
    width: 100%;
    height: 3px;
    background: linear-gradient(to right, black, #00ffe195, black);
    border-radius: 2px;
  }

  .des {
    color: #6d6d6d;
    font-size: 15px;
  }

  h3 {
    margin: 0;
    color: black;
    font-size: 25px;
    font-weight: 800;
    background-color: #00ffe1;
    padding: 2px 6px;
    border-radius: 5px;
  }

  .rc_logX {
    width: 30px;
    height: 30px;
    padding: 4px;
    background-color: rgb(50, 50, 50);
    border-radius: 50%;
    border: 2px solid #00ffe17b;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
  }

  .rc_log {
    cursor: pointer;
    width: 30px;
    height: 30px;
    padding: 4px;
    background-color: rgb(50, 50, 50);
    border-radius: 50%;
    border: 2px solid rgb(121, 121, 121);
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: 5px;
  }

  .tools {
    display: flex;
    flex-direction: row;
    justify-content: end;
    align-items: center;
    gap: 5px;
  }

  .main_card {
    display: flex;
    flex-direction: column;
    padding: 10px;
    width: 400px;
    height: 240px;
    border: 2px solid rgba(255, 255, 255, 0.529);
    border-radius: 10px;
    background-color: black;
  }

  .title {
    display: flex;
    flex-direction: row;
    justify-content: start;
    align-items: center;
    gap: 20px;
    margin-top: 10px;
  }

  .tooltip-wrapper {
    display: flex;
    align-items: center;
    cursor: pointer;
  }
</style>
