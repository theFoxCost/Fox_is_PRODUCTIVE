<script>
  import { onMount } from 'svelte';
  import ProgressBar from 'progressbar.js';
  
  let line;

  onMount(() => {
    line = new ProgressBar.Line('#line-container', {
      strokeWidth: 4,
      easing: 'easeInOut',
      color: '#00ffe1',
      duration: 2000,
      trailColor: '#222',
      trailWidth: 4,
      svgStyle: { width: '100%', height: '100%', borderRadius: '10px' },
      text: {
        style: {
          color: '#fff',
          position: 'absolute',
          right: '0',
          top: '-25px',
          fontSize: '1rem',
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

    line.svg.setAttribute('style', 'overflow: visible;');
    line.path.setAttribute('stroke-linecap', 'round');

    line.animate(1.0);
  });
</script>

<div id="line-container"></div>

<style>
  #line-container {
    width: 80%;
    height: 12px;
    margin: 10px auto;
    border-radius: 6px;
    overflow: hidden;
    position: relative;
    background-color: transparent;
  }

  #line-container > svg {
    border-radius: 6px;
    display: block;
  }
</style>
