<script>
  import { Star, EllipsisIcon, Laugh, Podcast, Eye, Calendar, Dot } from "lucide-svelte";
  import tippy from "tippy.js";
  import "tippy.js/dist/tippy.css";
  import { onMount } from "svelte";
  import Tag from "./tag.svelte";
  import Clock from "./clock.svelte";
  import Bar from "./bar.svelte";

  let isnot = "is";
  let color_isnot = "white";
  let podcastIcon;

  // Optional: pass progress dynamically
  let progressPercent = 75;

  onMount(() => {
    if (podcastIcon) {
      tippy(podcastIcon, {
        content: "Tap to Listen",
        animation: "fade",
        theme: "smooth",
        placement: "top",
        duration: [250, 150],
      });
    }
  });
</script>

<main>
  <div class="main_card">
    <div class="tools">
      <div class="rc_logX"><Laugh color="#00FFE1" /></div>
      <div class="rc_log"><Star color="rgba(255, 255, 255, 0.637)" /></div>
      <div class="rc_log"><EllipsisIcon color="rgba(255, 255, 255, 0.637)" /></div>
    </div>

    <div class="tags">
      <Tag tag_ref={"tech"} />
      <Tag tag_ref={"sport"} />
      <Tag tag_ref={"work"} />
    </div>

    <div class="title">
      <h3>Complete Nuclear Code</h3>
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

    <div class="meta">
      <div class="bars">
        <Bar />

        <div class="progress-label">
          <Dot color={color_isnot} />
          <p class="isnottxt">{isnot} progress</p>
          <p class="percent-label">{progressPercent}%</p>
        </div>
      </div>

      <Clock />

      <div class="meta-stack">
        <div class="meta-item">
          <Eye size="16" color="#ffffff71" />
          <span>12.1K views</span>
        </div>
        <div class="meta-item">
          <Calendar size="16" color="#ffffff71" />
          <span>21 Mar 2022</span>
        </div>
      </div>
    </div>
  </div>
</main>

<style>
  .main_card {
    display: flex;
    flex-direction: column;
    padding: 10px;
    width: 400px;
    border: 2px solid rgba(255, 255, 255, 0.2);
    border-radius: 14px;
    background-color: rgba(0, 0, 0, 0.92);
  }

  .tools {
    display: flex;
    justify-content: flex-end;
    gap: 6px;
  }

  .rc_logX, .rc_log {
    width: 30px;
    height: 30px;
    padding: 4px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgb(50, 50, 50);
    cursor: pointer;
  }

  .rc_logX {
    border: 2px solid #00ffe17b;
  }

  .rc_log {
    border: 2px solid rgb(121, 121, 121);
  }

  .tags {
    display: flex;
    gap: 8px;
    margin: 10px 0;
  }

  .title {
    display: flex;
    align-items: center;
    gap: 15px;
    margin-bottom: 8px;
  }

  h3 {
    margin: 0;
    color: black;
    font-size: 22px;
    font-weight: 800;
    background-color: #00ffe1;
    padding: 4px 8px;
    border-radius: 8px;
  }

  .tooltip-wrapper {
    display: flex;
    align-items: center;
    cursor: pointer;
    transition: 0.3s ease;
  }

  .description .des {
    color: #6d6d6d;
    font-size: 15px;
    margin: 0;
    line-height: 1.4;
  }

  .gradient-line {
    width: 100%;
    height: 3px;
    background: linear-gradient(to right, black, #00ffe195, black);
    border-radius: 5px;
    margin: 12px 0 10px 0;
  }

  .meta {
    display: flex;
    justify-content: space-around;
    align-items: center;
  }

  .bars {
    display: flex;
    flex-direction: column;
    align-items: start;
    gap: 8px;
    width: 45%;
  }

  .progress-label {
    height: 15px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 6px;
    background-color: rgba(255, 255, 255, 0);
    border-radius: 20px rgba(255, 255, 255, 0)   ;
     font-size: 13px;
  }

  .isnottxt {
    margin: 0;
    color: #ffffffa8;
  }

  .percent-label {
    margin: 0;
    color: #ffffffcc;
    font-weight: bold;
  }

  .meta-stack {
    display: flex;
    flex-direction: column;
    gap: 6px;
    margin-left: 10px;
    margin-left: 10px;
    text-align: right;
  }

  .meta-item {
    display: flex;
    align-items: center;
    gap: 6px;
    color: #ffffff70;
    font-size: 13px;
  }

  .tippy-box[data-theme~="smooth"] {
    background-color: #fff;
    color: #000;
    border-radius: 6px;
    padding: 6px 10px;
    font-size: 14px;
    opacity: 0;
    transition: opacity 0.4s ease-in-out;
  }

  .tippy-box[data-theme~="smooth"][data-state="visible"] {
    opacity: 1;
  }
  p{
    font-size: 13px;
  }
</style>
