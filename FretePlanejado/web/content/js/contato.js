$(function(){
    $(document).on('click', '.toggle-menu', function(ev) {
        var button = $(ev.target);
        var isOpened = button.data('opened');
        var content = $('.header-content');
        
        content.toggle();
    });
})
