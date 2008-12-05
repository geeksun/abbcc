(function(){
    window['abbcc'] = {}
    window['abbcc']['ID'] = ID;
    window['abbcc']['getElementsByClassName'] = getElementsByClassName;
    window['abbcc']['setNodeAttribute_Class'] = setNodeAttribute_Class;
    window['abbcc']['setNodeAttribute_style'] = setNodeAttribute_style;
    window['abbcc']['insertBefore'] = insertBefore;
    window['abbcc']['insertAfter'] = insertAfter;
    window['abbcc']['appendFirstChild'] = appendFirstChild;
    window['abbcc']['appendLastChild'] = appendLastChild;
    window['abbcc']['removeNode'] = removeNode;
    window['abbcc']['removeChildren'] = removeChildren;
    window['abbcc']['addEvent'] = addEvent;
    window['abbcc']['removeEvent'] = removeEvent;
    window['abbcc']['setNodeDisplay'] = setNodeDisplay;
    
    function ID(){
        if (arguments.length == 0) 
            return false;
        var Elements = new Array();
        for (var i = 0; i < arguments.length; i++) {
            var Element = arguments[i];
            if (typeof(Element) == 'string') 
                Element = document.getElementById(Element);
            if (arguments.length == 1) 
                return Element;
            Elements.push(Element);
        }
        return Elements;
    }
    
    function getElementsByClassName(ClassName, Tag, parent){
        if (arguments.length == 1) {
            parent = null;
            Tag = '*';
        }
        parent = parent || document;
        if (!(parent = ID(parent))) 
            return false;
        var allTags = (Tag == '*' && parent.all) ? parent.all : parent.getElementsByTagName(Tag);
        var targetElements = new Array();
        ClassName = ClassName.replace(/\-/g, '\\-');
        var regex = new RegExp('(^|\\s)' + ClassName + '(\\s|$)');
        var element;
        for (var i = 0; i < allTags.length; i++) {
            element = allTags[i];
            if (regex.test(element.className)) 
                targetElements.push(element);
        }
        return targetElements;
    }

    function insertBefore(newNode, tagetNode){
        if (!(newNode = ID(newNode))) 
            return false;
        if (!(tagetNode = ID(tagetNode))) 
            return false;
        return tagetNode.parentNode.insertBefore(newNode, tagetNode);
    }
    
    function insertAfter(newNode, tagetNode){
        if (!(newNode = ID(newNode))) 
            return false;
        if (!(tagetNode = ID(tagetNode))) 
            return false;
        return insertBefore(newNode, tagetNode.nextSibling);
    }
    
    function appendFirstChild(newNode, parent){
        if (!(newNode = ID(newNode)) || !(parent = ID(parent))) 
            return false;
        if (parent.firstChild) 
            return insertBefore(newNode, parent.firstChild);
        return parent.appendChild(newNode);
    }
    
    function appendLastChild(newNode, parent){
        if (!(newNode = ID(newNode)) || !(parent = ID(parent))) 
            return false;
        return parent.appendChild(newNode);
    }
    
    function removeNode(node){
        if (arguments.length == 1 && !(node = ID(node))) 
            return false;
        var removingNode;
        for (var i = 0; i < arguments.length; i++) {
            try {
                if (arguments[i].constructor != Array) {
                    removingNode = ID(arguments[i]);
                    removingNode.parentNode.removeChild(removingNode);
                }
                else {
                    for (var j = 0; j < arguments[i].length; j++) {
                        try {
                            removingNode = ID(arguments[i][j]);
                            removingNode.parentNode.removeChild(removingNode);
                        } 
                        catch (e2) {
                            continue;
                        }
                    }
                }
            } 
            catch (e) {
                continue;
            }
        }
        return true;
    }
    
    function removeChildren(parent){
        if (!(parent = ID(parent))) 
            return false;
        while (parent.firstChild) 
            parent.firstChild.parentNode.removeChild(parent.firstChild);
        return parent;
    }
    
    function setNodeDisplay(node, display_value){
        if (!(node = ID(node))) 
            return false;
        if (display_value && typeof(display_value) == 'string') {
            node.style.display = display_value;
            return true;
        }
        if (node.style.display != 'none') 
            node.style.display = 'none';
        else 
            node.style.display = '';
        return node.style.display;
    }
    
    function addEvent(node, event_type, listener_method){
        if (!(node = ID(node))) 
            return false;
        if (node.addEventListener) {
            node.addEventListener(event_type, listener_method, false);
            return true;
        }
        else 
            if (node.attachEvent) {
                node['temp' + event_type + listener_method] = listener_method;
                node[event_type + listener_method] = function(){
                    node['temp' + event_type + listener_method](window.event);
                }
                node.attachEvent('on' + event_type, node[event_type + listener_method]);
                return true;
            }
        return false;
    }
    
    function removeEvent(node, event_type, listener_method){
        if (!(node = ID(node))) 
            return false;
        if (node.removeEventListener) {
            node.removeEventListener(event_type, listener_method, false);
            return true;
        }
        else 
            if (node.detachEvent) {
                node.detachEvent('on' + event_type, node[event_type + listener_method]);
                node[event_type + listener_method] = null;
                return true;
            }
        return false;
    }
    
    function getAbsolutePosition_Size(node){
        if (arguments.length != 1) 
            return false;
        if (!(node = ID(node))) 
            return false;
        var offsetTop = node.offsetTop;
        var offsetLeft = node.offsetLeft;
        var offsetWidth = node.offsetWidth;
        var offsetHeight = node.offsetHeight;
        while (node = node.offsetParent) {
            offsetTop += node.offsetTop;
            offsetLeft += node.offsetLeft;
        }
        return {
            absoluteTop: offsetTop,
            absoluteLeft: offsetLeft,
            offsetWidth: offsetWidth,
            offsetHeight: offsetHeight
        }
    }
    
    function setNodeAttribute_Class(node, className){
        if (!(node = ID(node))) 
            return false;
        if (document.all) {
            node.setAttribute('className', className)
            return true;
        }
        node.setAttribute('class', className);
        return true;
    }
    
    function setNodeAttribute_style(node, styleString){
        if (!(node = ID(node)) || typeof(styleString) != 'string') 
            return false;
        if (document.all) {
            if (styleString.substr(styleString.length - 1, 1) == ';') 
                styleString = styleString.substr(0, styleString.length - 1);
            var tempstr = '';
            var strings = styleString.split(';');
            for (var i = 0; i < strings.length; i++) {
                strings[i] = strings[i].split(':');
                if (strings[i][0].indexOf('-', 0) > 0) {
                    tempstr = strings[i][0].split('-');
                    tempstr = tempstr[0] + uCaseFirstChar(tempstr[1]);
                    node.style[tempstr] = strings[i][1];
                }
                else 
                    node.style[strings[i][0]] = strings[i][1];
            }
            return true;
        }
        node.setAttribute('style', styleString);
        return true;
    }
    
    function uCaseFirstChar(str){
        if (typeof(str) == 'string') {
            var tempstr = (str.substr(0, 1)).toUpperCase();
            return str = tempstr + str.substr(1, str.length - 1);
        }
        return false;
    }
    
})();
