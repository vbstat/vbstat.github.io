---
layout: base
title: File Download
sitemap: false
---

<section id="main-container" class="main-container">
  <div class="container">
 

 <div id="pdfLinkContainer">
    <!-- The link will be inserted here -->
</div>

<div id="iframeContainer">
    <!-- The iframe will be inserted here -->
</div>

<script>
    // Get the current URL
    var currentURL = window.location.href;

    // Extract the path from the URL
    var urlParts = currentURL.split("/file?");
    var path = urlParts[1];

    // Construct the full URL for the PDF
    var pdfURL = "https://vbstat.github.io/" + path;

    // Create a new link element
    var linkElement = document.createElement("a");

    // Set Bootstrap classes for styling
    linkElement.classList.add("btn", "btn-primary");

    // Set the href attribute
    linkElement.setAttribute("href", pdfURL);

    // Set the link text
    linkElement.textContent = "Download";

    // Append the link to the container
    document.getElementById("pdfLinkContainer").appendChild(linkElement);

    // Get the container for the iframe
    var iframeContainer = document.getElementById("iframeContainer");

    // Create the iframe element
    var iframeElement = document.createElement("iframe");

    // Set attributes for the iframe
    iframeElement.setAttribute("src", "https://docs.google.com/gview?url=" + pdfURL + "&embedded=true");
    iframeElement.style.width = "100%";
    iframeElement.style.height = "80vh";

    // Append the iframe to the container
    iframeContainer.appendChild(iframeElement);
</script>


  </div><!-- Conatiner end -->
</section>
