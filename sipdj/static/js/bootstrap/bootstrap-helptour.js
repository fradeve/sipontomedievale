// popover help tour //

/* This helper provides some functions to manage an help popover tour; what you
 * need is:
 * ## loading this js file in page:
 * <script type="text/javascript" src="js/bootstrap-helptour.js"></script>
 *
 * ## defining popover content, position and target using nested divs as follows:
 *  <div id="pop1_content" class="popSourceBlock">
 *      <div class="popPlacement">left</div>
 *      <div class="popId">pop1</div>
 *      <div class="popTitle">
 *          wonderful title
 *      </div>
 *      <div class="popContent">
 *          <p>Amazing content</p>
 *      </div>
 *  </div>
 *
 * ## set the stating popover function in this file, see
 * $("#pop1").click(function() {}
 *
 * WARNING:
 * if some elements in your DOM have popover defined other than the help tour's
 * ones, you need to add class 'morepopover' to this element/button.
 */
activePopover = null;

jQuery(document).on('click', '.pop-trigger', function(){
/* start function whenever an element with class ".pop-trigger"
 * is clicked (a button); the ".on" statement assign action also
 * to elements not even created (buttons are added to DOM dinamically)
 * http://stackoverflow.com/questions/10252060/how-do-i-run-a-jquery-function-after-the-a-div-have-been-added-to-the-dom */
    if ($('#'+($('#' + curHelpElement + "_content > div.popId").html())).hasClass('todestroy')){
        $('#'+($('#' + curHelpElement + "_content > div.popId").html())).popover('destroy')
    }else{
        $('#'+($('#' + curHelpElement + "_content > div.popId").html())).popover('toggle');
    };
    // check if there are elements with tempcontent class defined before, for
    // elements with more than one popover
    if ($('.tempcontent')) {
        $('.tempcontent').attr('data-original-title', $('.tempcontent').attr('oldtitle'));
        $('.tempcontent').attr('data-content', $('.tempcontent').attr('oldcontent'));
        $('.tempcontent').removeAttr('oldtitle', 'oldcontent')
    }
    curHelpElement = nextHelpElement;
    var curPop = $('#'+($('#' + curHelpElement + "_content > div.popId").html()))
    if (curPop.hasClass('morepopover')){
        curPop.attr('oldtitle', curPop.attr('data-original-title'));
        curPop.attr('oldcontent', curPop.attr('data-content'));
        curPop.attr('data-original-title', getPopTitle(curHelpElement));
        curPop.attr('data-content', helpTourPopContent(curHelpElement));
        curPop.addClass('tempcontent');
        curPop.popover('show');
    }else{
        curPop.popover({
            html : true,
            placement : getPopPlacement(curHelpElement),
            title : getPopTitle(curHelpElement),
            content : helpTourPopContent(curHelpElement),
        });
        curPop.popover('show');
        curPop.addClass('todestroy');
    };
    $('.popover').attr('id', ('div'+nextHelpElement));
});

function helpTourPopContent(target) {
    var message = $("#" + target + "_content > div.popContent").html();
    curHelpElement = target;
    nextHelpElement = 'pop'+(parseInt(target[3])+1).toString();
    var arrow = {
        start : 'Inizia qui <i class="icon-arrow-right icon-white"></i>',
        next : 'Avanti <i class="icon-arrow-right icon-white"></i>'
    }
    var buttonNextPop = '<br><center><a id="' + nextHelpElement + '" class="btn btn-info pop-trigger" href="' + ('#'+('divpop'+(parseInt(nextHelpElement[3])+1).toString())) + '">' + ((parseInt(target[3])==1) ? arrow.start : arrow.next) + '</a><center>'
    return (message + buttonNextPop)
};

function getPopTitle(target) {
        return $("#" + target + "_content > div.popTitle").html();
};

function getPopPlacement(target) {
        return $("#" + target + "_content > div.popPlacement").html();
};

$("#pop1").click(function() {
    activePopover = $(this);
    $(this).popover({
        html : true,
        placement : getPopPlacement(activePopover.attr("id")),
        content : helpTourPopContent(activePopover.attr("id")),
        title : getPopTitle(activePopover.attr("id"))
    })
});
