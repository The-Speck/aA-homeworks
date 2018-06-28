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

  // --- your code here!
  const addButton = document.getElementsByClassName("favorite-submit")[0];
  addButton.addEventListener("click", event => {
    event.preventDefault();

    const placeInputLi = document.getElementsByClassName("favorite-input")[0];
    const place = placeInputLi.value;
    placeInputLi.value = "";


    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");

    li.textContent = place;
    ul.appendChild(li);
  });


  // adding new photos

  // --- your code here!
  const togglePhotoForm = document.getElementsByClassName("photo-show-button")[0];
  let photoFormHidden = true;

  togglePhotoForm.addEventListener("click", event => {
    const formContainer = document.getElementsByClassName("photo-form-container")[0];

    if (photoFormHidden) {
      formContainer.classList.remove('hidden');
      photoFormHidden = false;
    } else {
      formContainer.classList.add('hidden');
      photoFormHidden = true;
    }
  });

  const addPhotoButton = document.getElementsByClassName("photo-url-submit")[0];
  addPhotoButton.addEventListener("click", event => {
    event.preventDefault();

    const photoInputLi = document.getElementsByClassName("photo-url-input")[0];
    const photo = photoInputLi.value;
    photoInputLi.value = "";

    const img = document.createElement("img");
    const li = document.createElement("li");
    const ul = document.getElementsByClassName("dog-photos")[0];

    img.src = photo;
    li.appendChild(img);
    ul.appendChild(li);
  });
});
