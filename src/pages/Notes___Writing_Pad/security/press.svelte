<script>
  import key from '../icons8-enter-key-100.png';
</script>

<div class="press">
  <div class="presscont">
    <p>Unlock</p>
    <img class="key" src={key} alt="Unlock Key" />
  </div>
</div>

<style>
  .press {
    position: absolute;
    right: 10px;
    bottom: 10px;
    z-index: 100;
  }

  .presscont {
    display: flex;
    gap: 12px;
    align-items: center;
    color: white;
    background: transparent;
  }

  .key {
    width: 24px;
    height: 24px;
  }

  p {
    animation: zombie 5s ease-in-out infinite;
    font-family: jet-r;
  }

  @keyframes zombie {
    0%   { opacity: 0; }
    25%  { opacity: 0.25; }
    50%  { opacity: 0.5; }
    75%  { opacity: 0.75; }
    100% { opacity: 1; }
  }
</style>
