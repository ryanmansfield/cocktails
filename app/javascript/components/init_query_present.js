const queryPresent = () => {
  $(document).ready(function() {
    if (window.location.href.includes("query"))
      document.getElementById("cocktails").scrollIntoView({behavior: 'smooth'});
  });
}

export { queryPresent }
