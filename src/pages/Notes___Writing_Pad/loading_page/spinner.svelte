<script></script>

<main>
    <div class="simple-spinner">
        <span></span>
    </div>
</main>

<style>
    .simple-spinner {
        width: 30px;
        height: 30px;
        position: absolute;
        right: 0;
        bottom: 0;
        transform: translate(-50%, -50%);
    }

    .simple-spinner span {
        display: block;
        width: 30px;
        height: 30px;
        border: 3px solid transparent;
        border-radius: 50%;
        border-right-color: rgba(255, 255, 255, 0.7);
        animation: spinner-anim 0.8s linear infinite;
    }

    @keyframes spinner-anim {
        from {
            transform: rotate(0);
        }
        to {
            transform: rotate(360deg);
        }
    }
</style>
