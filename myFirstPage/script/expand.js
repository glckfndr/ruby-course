function expandContent(element){
  if(element.previousElementSibling.clientHeight === 65){
    element.previousElementSibling.style.height = "100%";
    element.innerHTML = "Show less ..."
  }
  else{
    element.previousElementSibling.style.height = "65px";
    element.innerHTML = "Read more ..."
  }
  
  }
