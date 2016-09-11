(function(window, Ractive, _, marked){
  'use strict';

  var noTeardown = {teardown: function(){}};

  var Mark = Ractive.extend({
    template: '#mark',
    computed: {
      contentHTML: function(){
        return marked(this.get('markdown') || '');
      }
    },
    onchange: function(){
      _.defer(_.partial(jammer.linkExternal, this.el));
    }
  });

  function handleMarkdown(markdown){
    return marked(markdown || '');
  }

})(window, Ractive, _, marked);