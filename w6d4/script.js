document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const addList = (e) => {

    e.preventDefault();

    console.log('eqweqw');
    const inputContent = document.querySelector('.favorite-input');
    const input = inputContent.value;
    const li = document.createElement('li');
    const ul = document.getElementById('restaurants');
    li.textContent = input;
    ul.appendChild(li);
  };

  const form = document.querySelector(".favorite-submit");
  form.addEventListener("click", addList);
  // --- your code here!



  // adding new photos
  const button = document.querySelector(".photo-show-button");

  button.addEventListener('click', (e) => {
    e.preventDefault();

    const div = document.querySelector('.photo-form-container');

    if (div.className === "photo-form-container hidden") {
      div.className = "photo-form-container";
    } else {
      div.className = "photo-form-container hidden";
    }

    let submit = document.querySelector(".photo-url-submit");
    submit.addEventListener('click', (eventIMG) => {
      eventIMG.preventDefault();

      const imageUrl = document.querySelector('.photo-url-input').value;
      const ul = document.querySelector('.dog-photos');
      const li = document.createElement('li');
      const img = document.createElement('img');

      img.src = imageUrl;
      img.alt = "LMAO";

      li.appendChild(img);
      ul.appendChild(li);
      document.querySelector('.photo-url-input').value = "";
    });
  });
  // --- your code here!



});
