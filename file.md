---
layout: base
title: File Not Found
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

        // Create a new link element
        var linkElement = document.createElement("a");
        
        // Set the href attribute
        linkElement.setAttribute("href", pdfURL);
        
        // Set the link text
        linkElement.textContent = "Download";
        
        // Append the link to the container
        document.getElementById("pdfLinkContainer").appendChild(linkElement);
    </script>

  </div><!-- Conatiner end -->
</section>
