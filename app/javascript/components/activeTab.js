
function activeTab () {
  if (window.location.hash == '#%23profile') {
    $("#home-title").toggleClass("active");
    $("#profile-title").toggleClass("active")
    $("#home").toggleClass("active");
    $("#profile").toggleClass("active")
  };
}

export {activeTab};

