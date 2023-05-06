let image_to_upload = null;
let download_link = null;
const imageUpload = document.querySelector(".image-upload");
const drag_drop_div = document.querySelector(".drop-area");
const uploadButton = document.querySelector("#upload-button");
const downloadButton = document.querySelector("#download-btn");
const about = document.querySelector("#about");
const aboutModal = document.querySelector(".about-modal");
const aboutModalCloseButton = document.querySelector(".close-btn");


imageUpload.addEventListener("dragover", function (e) {
  e.preventDefault();
  e.stopPropagation();
  imageUpload.classList.add("active");
});

imageUpload.addEventListener("dragleave", function (e) {
  e.preventDefault();
  e.stopPropagation();
  imageUpload.classList.remove("active");
});

imageUpload.addEventListener("drop", function (e) {
  e.preventDefault();
  e.stopPropagation();

  removeAllImages();

  imageUpload.classList.remove("active");
  const files = e.dataTransfer;
  displayImage(files);
});

function displayImage(input) {
  removeAllImages();
  drag_drop_div.style.padding = '20px';
  if (input.files && input.files[0]) {
    image_to_upload = input.files[0];
    const reader = new FileReader();
    reader.onload = function (e) {
      const img = document.createElement("img");
      img.src = e.target.result;
      img.classList.add("uploaded-image");
      document.getElementById("image-preview").appendChild(img);
      uploadButton.classList.remove("disabled");
      uploadButton.style.right = 0;
    };
    reader.readAsDataURL(input.files[0]);
  }
}

function displayOutputImage(output_img_link) {
  const img = document.createElement("img");
  img.src = output_img_link;
  img.classList.add("uploaded-image");
  document.getElementById("image-preview-output").appendChild(img);
}

async function uploadImage(image) {
  // const url_upload_image = "http://localhost:8000/upload-image";
  const url_upload_image = "http://188.166.207.3/upload-image";
  // const url_process_image = "http://localhost:8000/process-image";
  const url_process_image = "http://188.166.207.3/process-image";

  document.getElementById("loader").style.display = "flex";

  var formData = new FormData();
  let fileInput = document.querySelector("#file-input");
  formData.append("image", image_to_upload);

  const result = await axios.post(url_upload_image, formData);
  // console.log("Result => ", result.data);

  const output = await axios.post(url_process_image, {
    image_src: result.data.filename,
    output_name: `${uniqueId()}.png`,
  });
  // console.log("Output => ", output.data);

  download_link = "https://image-auto-enhance-brightness-ml.sgp1.digitaloceanspaces.com/" + output.data.filename;

  displayOutputImage(download_link);  

  document.getElementById("loader").style.display = "none";
  document.querySelector("#download-btn").style.display = 'block';
}

uploadButton.onclick = function () {
  if (!image_to_upload) {
    return;
  }
  // uploadImage("URL");
  uploadImage(image_to_upload);
}

downloadButton.onclick = () => {
  if(!download_link) return;
  const a = document.createElement('A');
  a.href = download_link;
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
}

about.onclick = (e) => {
  e.preventDefault();
  aboutModal.classList.remove('no-display');
}

aboutModalCloseButton.onclick = (e) => {
  aboutModal.classList.add('no-display');
}

function removeAllImages() {
  const images = document.getElementsByTagName("img");
  const l = images.length;
  for (let i = 0; i < l; i++) {
    images[0].parentNode.removeChild(images[0]);
  }
}

function uniqueId() {
  const dateString = Date.now().toString(36);
  const randomness = Math.random().toString(36).substr(2);
  return dateString + randomness;
}