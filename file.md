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

<script>
    // Get the current URL
    var currentURL = window.location.href;

    // Extract the path from the URL
    var urlParts = currentURL.split("/file?");
    var path = urlParts[1];

    // Construct the full URL for the PDF
    var pdfURL = "https://vbstat.github.io/" + path;

    // Create a new link element for the "Download" button
    var downloadLinkElement = document.createElement("a");

    // Set Bootstrap classes for styling
    downloadLinkElement.classList.add("btn", "btn-primary");

    // Set the href attribute
    downloadLinkElement.setAttribute("href", pdfURL);

    // Set the link text
    downloadLinkElement.textContent = "Download";

    // Append the "Download" button to the container
    document.getElementById("pdfLinkContainer").appendChild(downloadLinkElement);

    // Get the iframe element
    var iframeElement = document.createElement("iframe");

    // Set attributes for the iframe
    iframeElement.setAttribute("src", "https://docs.google.com/gview?url=" + pdfURL + "&embedded=true");
    iframeElement.style.width = "100%";
    iframeElement.style.height = "80vh";

    // Append the iframe to the document body
    document.body.appendChild(iframeElement);

    // Create a new link element for the download button after the iframe
    var downloadButtonAfterIframe = document.createElement("a");

    // Set Bootstrap classes for styling
    downloadButtonAfterIframe.classList.add("btn", "btn-secondary");

    // Set the href attribute for the download button after the iframe
    downloadButtonAfterIframe.setAttribute("href", pdfURL);
    downloadButtonAfterIframe.setAttribute("download", "document.pdf"); // Add 'download' attribute to force download

    // Set the link text
    downloadButtonAfterIframe.textContent = "Download";

    // Append the download button after the iframe
    document.body.appendChild(downloadButtonAfterIframe);
</script>


  </div><!-- Conatiner end -->
</section>
