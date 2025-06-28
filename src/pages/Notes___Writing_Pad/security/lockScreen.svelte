<script>
  import moment from 'moment';
  import { onMount } from 'svelte';
  import Press from './press.svelte';
    import { fade } from 'svelte/transition';

  let unlocked = false;
  let time = '';
  let date = '';

  const unlock = () => {
    unlocked = true;
  };

  function handleKey(e) {
    if (e.key === 'Enter') {
      unlock();
    }
  }

  onMount(() => {
    // Update time and date every second
    const interval = setInterval(() => {
      time = moment().format('h:mm:ss a');
      date = moment().format('MMMM Do YYYY');
    }, 1000);

    // Listen for Enter key
    window.addEventListener('keydown', handleKey);

    return () => {
      clearInterval(interval);
      window.removeEventListener('keydown', handleKey);
    };
  });
</script>

{#if !unlocked}
  <div class="lock-container" transition:fade={{ duration: 800 }}>
    <div class="mainlog">
      <div class="clock">{time}</div>
      <div class="date">{date}</div>
    </div>
    <Press />
  </div>
{/if}


{#if unlocked}

{/if}

<style>
  .lock-container {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: #000000aa;
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 20px;
    font-family: 'Open Sans', sans-serif;
    z-index: 10;
    transition: transform 1s ease-in-out;
  }

  .slide-up {
    transform: translateY(-100%);
  }

  .mainlog {
    display: flex;
    flex-direction: column;
  }

  .clock {
    font-size: 2.5rem;
    margin-bottom: 10px;
    font-family: jet-r;
  }

  .date {
    font-size: 1rem;
    opacity: 0.8;
    font-family: jet-r;
  }


</style>
