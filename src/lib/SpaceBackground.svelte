<!-- src/lib/SpaceBackground.svelte -->
<div class="backgroundFX">
  <!-- ⭐ Dense Stars -->
  <div class="star-field">
    {#each Array(200) as _, i}
      <div
        class="star"
        style="
          top: {Math.random() * 100}%;
          left: {Math.random() * 100}%;
          animation-delay: {Math.random() * 5}s;
        "
      ></div>
    {/each}
  </div>

  <!-- 🌠 Diagonal Shooting Stars -->
  {#each Array(5) as _, i}
    <div class="shootingStarContainer">
      {#each Array(3) as _}
        <div
          class="shootingStar"
          style="
            top: {Math.random() * 100}%;
            left: {Math.random() * 100}%;
            animation-delay: {Math.random() * 10}s;
            animation-duration: {1.5 + Math.random()}s;
          "
        ></div>
      {/each}
    </div>
  {/each}

  <!-- 🌌 Other FX -->
  <div class="twinkleMask"></div>
  <div class="twinkleMask2"></div>
  <div class="clouds"></div>
  <div class="fogContainer">
    <div class="fog"></div>
  </div>
</div>

<style>
.backgroundFX {
  position: fixed;
  width: 100vw;
  height: 100vh;
  top: 0;
  left: 0;
  z-index: -20;
  overflow: hidden;
  pointer-events: none;
}

/* 🌟 Stars */
.star-field {
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: -25;
}

.star {
  position: absolute;
  width: 2px;
  height: 2px;
  background: white;
  border-radius: 50%;
  opacity: 0.6;
  animation: twinkle 4s infinite ease-in-out;
}

@keyframes twinkle {
  0%, 100% { opacity: 0.2; transform: scale(1); }
  50%      { opacity: 1;   transform: scale(1.5); }
}

/* 🌠 Shooting Stars */
.shootingStarContainer {
  position: absolute;
  width: 100%;
  height: 130%;
  transform: rotate(45deg);
  z-index: -21;
}

.shootingStar {
  position: absolute;
  height: 1px;
  width: 0;
  background: linear-gradient(-70deg, rgba(255, 235, 235, 1), rgba(0, 0, 0, 0));
  animation-name: shootingFrames;
  animation-timing-function: ease-in-out;
  animation-iteration-count: infinite;
  opacity: 0.25;
}

@keyframes shootingFrames {
  0% {
    transform: translateX(0);
    width: 0;
    opacity: 0;
  }
  30% {
    width: 200px;
    opacity: 1;
  }
  100% {
    width: 0;
    transform: translateX(800px);
    opacity: 0;
  }
}

/* 💫 Twinkle + Clouds */
.twinkleMask,
.twinkleMask2,
.clouds {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  display: block;
  z-index: -22;
}

.twinkleMask {
  background: transparent url('https://wolf.drjm.co.uk/nightsky/twinklemask.png') repeat top center;
  animation: twinkleFrames 700s linear infinite;
}

.twinkleMask2 {
  background: transparent url('https://wolf.drjm.co.uk/nightsky/twinkleMask2.png') repeat top center;
  height: 200%;
  animation: twinkleFrames2 300s linear infinite;
}

.clouds {
  background: transparent url('https://wolf.drjm.co.uk/nightsky/clouds.png') repeat top center;
  height: 150%;
  animation: cloudsFrames 300s linear infinite;
}

/* 🌫️ Fog */
.fogContainer {
  width: 100vw;
  height: 100vh;
  position: absolute;
  top: 0;
  left: 0;
  z-index: -21;
}

.fog {
  position: absolute;
  left: -50%;
  top: -30%;
  width: 200%;
  height: 200%;
  animation: fogFrames 60s linear infinite alternate;
  background: linear-gradient(-5deg,
    #00000000 0%,
    #ffffff15 40%,
    #74590121 45%,
    #8b845b21 55%,
    #00000000 70%);
  z-index: -21;
}

/* 🔁 Animations */
@keyframes fogFrames {
  0% { transform: none; }
  10% { transform: scaleY(.75) translate(5%, -2%) rotate(15deg); }
  25% { transform: scaleY(1) translate(10%, 7%); }
  50% { transform: scaleY(0.5) rotate(-15deg); }
  75% { transform: scaleY(0.2) translate(7%, -2%); }
  100% { transform: none; }
}

@keyframes twinkleFrames {
  from { background-position: 0 0; }
  to   { background-position: -10000px 5000px; }
}

@keyframes twinkleFrames2 {
  from { background-position: 0 0; }
  to   { background-position: 10000px 5000px; }
}

@keyframes cloudsFrames {
  from { background-position: 0 0; }
  to   { background-position: 10000px 0; }
}
</style>
