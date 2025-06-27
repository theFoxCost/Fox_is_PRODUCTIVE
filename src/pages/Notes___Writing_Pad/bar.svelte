<script>
  import { onMount } from 'svelte';
  import ProgressBar from 'progressbar.js';

  export let progressPercent = 75;
  let line;

  onMount(() => {
    line = new ProgressBar.Line('#line-container', {
      strokeWidth: 3,
      easing: 'easeInOut',
      color: '#00FFE1',
      duration: 1500,
      trailColor: 'rgba(255, 255, 255, 0.1)',
      trailWidth: 3,
      svgStyle: { width: '100%', height: '100%', borderRadius: '8px' },
      text: {
        style: {
          color: '#fff',
          position: 'absolute',
          right: '0',
          top: '-20px',
          fontSize: '0.9rem',
          fontWeight: '600',
          padding: 0,
          margin: 0,
          transform: null
        },
        autoStyleContainer: false
      },
      step: function (state, bar) {
        bar.setText(Math.round(bar.value() * 100) + '%');
      }
    });

    // Apply rounded ends to both paths
    line.svg.setAttribute('style', 'overflow: visible;');
    line.path.setAttribute('stroke-linecap', 'round');
    line.trail.setAttribute('stroke-linecap', 'round'); // this is the missing line

    // Animate to progress
    line.animate(progressPercent / 100);

    return () => {
      line.destroy();
    };
  });
</script>

<div id="line-container"></div>

<style>
  #line-container {
    width: 83%;
    height: 15px;
    margin: 8px 0;
    border-radius: 8px;
    overflow: hidden;
    position: relative;
    background-color: transparent;
  }

  #line-container > svg {
    border-radius: 8px;
    display: block;
  }
</style>
