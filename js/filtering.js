$(document).ready(function() {

    // Get list of filter classes (except all)
    // c.f. http://bit.ly/1KdZKFR
    var classes = {};
    $(".filter-all").each(function() {
        $($(this).attr('class').split(' ')).each(function() {
            if (/^filter[-]/.test(this)) {
                classes[this] = this;
            }
        });
    });
    delete classes["filter-all"];

    // Generate filter HTML
    var class_names = Object.keys(classes).map(
                        function(key) { return key; }).sort();
    var html = "<div id=\"filters\">\n<ul class=\"nav nav-tabs\">\n";
    function html_add(k, isactive) {
        html += "<li role=\"presentation\"";
        if (isactive) {
            html += " class=\"active\"";
        }
        html += "><a href=\"#\" id=\"";
        html += k;
        html += "\">";
        html += k.substring(7);
        html += "</a></li>\n";
    }
    html_add("filter-all", 1);
    class_names.map(function(v,k) { 
        html_add(v, 0);
    });
    html += "</ul>\n</div>\n";

    // Insert filter markup
    $("#filters").each(function(i,obj) { $(this).replaceWith(html); });

    // Implement client-side filtering
    $("body").on("click", "#filters a", function(e) {
        console.log("Handler called\n");
        e.preventDefault();
        var filter = $(this).attr("id");
        $(".filter-all").show();
        $(".filter-all:not(." + filter + ")").hide();
        $("#filters li").removeClass("active");
        $(this).parent().addClass("active");
    });
    
});
