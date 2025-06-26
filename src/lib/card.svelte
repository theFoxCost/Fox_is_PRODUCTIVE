<script>
  import Rak from '../assets/rak.gif'; 
  import duo from '../assets/dd.png';

</script>

<main>
  <div class="card">
    <div class="img_cont">
      <img class="imgrak" src={Rak} alt="rak image" />
    </div>
    <div class="p2">
      <div class="tag1">Official Creator</div>
      <div class="tag">
        <div class="name">theFoxCost</div>
        <div class="baj">
          <img class="duolingo" src={duo} alt="duolingo" />
        </div>
      </div>
      <div class="id">007_fox_astro</div>
    </div>
  </div>
</main>

<style>
.card {
  background-color: rgb(35, 35, 35);
  width: 195px;
  height: 65px;
  display: flex;
  align-items: center;
  border-radius: 10px;
  justify-content: space-between;
  border: 2px solid gray;
  margin-top: 20px;
  margin-bottom: 10px;
  padding: 5px;
}

.img_cont {
  height: 50px;
  width: 50px;
  padding: 3px;
  border: 2px rgb(255, 191, 0) solid;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  overflow: hidden;
}

.imgrak {
  height: 50px;
  width: 50px;
  border-radius: 50%;
  object-fit: cover;
}

.p2 {
  display: flex;
  flex-direction: column;
  margin-left: 10px;
  flex: 1;
}

.tag1 {
  color: orange;
  font-size: 13px;
  margin-bottom: 2px;
}

.tag {
  display: flex;
  align-items: center;
  gap: 5px;
}

.name {
  color: aliceblue;
  font-size: 17px;
}

.baj {
  display: flex;
  align-items: center;
  justify-content: center;
}

.duolingo {
  height: 18px;
  width: 18px;
  object-fit: contain;
}

.id {
  font-size: 9px;
  color: gray;
  margin-top: 4px;
}
</style>
