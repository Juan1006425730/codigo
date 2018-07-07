const form = document.getElementById("form")

if (form) {
  form.addEventListener('submit', () => {
    let width = form.querySelector("#width"),
        height = form.querySelector("#height"),
        url = form.querySelector("#url")

    if (width && height && url) {
      width = width.value
      height = height.value
      url = url.value
    }

    window.open(url, url,'width=${width},height=${height}')
  })
}