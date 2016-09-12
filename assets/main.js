(function(window){
  'use strict';



  window.addEventListener('keydown', function(keyEvent) {
    var adjust = 1;
    var previousKeys = ['ArrowLeft', 'ArrowUp', 'p'];

    if(previousKeys.indexOf(keyEvent.key) > -1){
      adjust = -1;
    }

    var nextY = Math.floor( window.scrollY / window.innerHeight + adjust) * window.innerHeight;

    animatedScrollTo(
      document.body, nextY, 200, function() {
        console.log('done!')
      }
    );
  });



})(window);