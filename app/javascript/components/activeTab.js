
function activeTab () {
  console.log(window.location.hash);
  if (window.location.hash == '#%23profile') {
    console.log('coucou');
    $("#home-title").toggleClass("active");
    $("#profile-title").toggleClass("active")
    $("#home").toggleClass("active");
    $("#profile").toggleClass("active")
  };
}

export {activeTab};

