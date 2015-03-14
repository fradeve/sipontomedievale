/* Load this script using conditional IE comments if you need to support IE 7 and IE 6. */

window.onload = function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'browserIconfont\'">' + entity + '</span>' + html;
	}
	var icons = {
			'icon-uniE840' : '&#xe840;',
			'icon-uniE841' : '&#xe841;',
			'icon-uniE842' : '&#xe842;',
			'icon-uniE843' : '&#xe843;',
			'icon-safari' : '&#xe00f;'
		},
		els = document.getElementsByTagName('*'),
		i, attr, html, c, el;
	for (i = 0; i < els.length; i += 1) {
		el = els[i];
		attr = el.getAttribute('data-icon');
		if (attr) {
			addIcon(el, attr);
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
};