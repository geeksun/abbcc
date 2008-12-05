/**
 * TreeView, TreeNode, TreeNodes
 *
*/
//treeview
TreeView.prototype.FullExpand=function(){};
TreeView.prototype.FullCollapse=function(){};
TreeView.prototype.SetNodeType=function(type){};
TreeView.prototype.OnChange=function(sender,node){};
TreeView.prototype.OnNodeControlClick=function(node,checked){};

function TreeView(parent)
{
  var pdiv,obj = getDocument(parent).createElement('div');
  if(parent){pdiv=parent;}else pdiv=getDocument(parent).body;
  pdiv.appendChild(obj);
  obj.style.overflow='auto';
  obj.style.width = 285;
  obj.style.height = 300;
  obj.Level=0;
  obj.TreeView=obj;
  obj.NodeType=null;
  obj.RootNode=null;
  obj.Selects=new Array();

  obj.Items=new TreeNodes(obj,obj);
  obj.ChildNodes=new Array();
  obj.appendChild(obj.Items);
  obj.OnChange = null;
  obj.OnNodeControlClick;
  obj.SelectImage=jcl_ResourceURL+'treeview/openfoldericon.gif';
  obj.Image=jcl_ResourceURL+'treeview/foldericon.gif';
  obj.PopupMenu;
//  obj.Refresh=TreeView_refresh;
  obj.FullExpand=TreeViewFullExpand;
  obj.FullCollapse=TreeViewFullCollapse;
  obj.SetNodeType=TreeView_SetNodeType;
  if(isIE)
	obj.onpropertychange=TreeView_onpropertychange
  else
	addEventTimerListener(obj,TreeView_onpropertychange);
  setStyle(obj);
  return obj;
}
function TreeView_SetNodeType(type)
{
  for(var i=0;i<this.Items.Item.length;i++){
    this.Items.Item[i].SetNodeType(type);
  }
}

function TreeView_onpropertychange(sender)
{
  var n;
  if(isIE) {
	  n=event.propertyName;
	  sender=this;
  }
  if(isMoz)
	  n='Selected';
  switch(n){
    case 'Selected':
      if(sender.OldSelected==sender.Selected)return;
	  sender.Selected.Focused=true;
	  if(sender.OldSelected){
		sender.OldSelected.Text.style.backgroundColor=clWhite;
		sender.OldSelected.Text.style.color=clBlack;
		if(sender.OnDeletion)sender.OnDeletion(sender,sender.OldSelected);
	  }
      if(sender.Selected!=null){
    	sender.Selected.Text.style.backgroundColor = clMaroon;
		sender.Selected.Text.style.color = clWhite;
		if(sender.OnChange)sender.OnChange(sender,sender.Selected);
      }
      sender.OldSelected=sender.Selected;
    break;
  }
}

function TreeViewFullExpand()
{
  for(var i=0;i<this.ChildNodes.length;i++){
    this.ChildNodes[i].Expanded = true;
  }
}
function TreeViewFullCollapse()
{
  for(var i=0;i<this.ChildNodes.length;i++){
    this.ChildNodes[i].Expanded = false;
  }
}
//TreeNodes
function TreeNodes(parent,pdiv)
{
  var obj = new Table(pdiv);
  obj.Owner=parent;
  obj.TreeView=parent.TreeView;

//  obj.style.borderStyle='solid';
  obj.cellSpacing=0;
  obj.cellPading=0;
  obj.style.borderWidth=0;
  obj.Level=parent.Level;
  obj.style.position='relative';
  obj.Item=new Array();
  obj.AddChild=TreeNodes_AddChild;
  obj.Add=TreeNodes_AddChild;
  obj.Clear=TreeNodes_Clear;
  obj.Delete=TreeNodesDelete;
  return obj;
}
function TreeNodes_AddChild(node)
{
  if(this.Item.length){
    var lastnode=this.Item[this.Item.length-1];
    lastnode.subcell1.style.backgroundRepeat='repeat-y';
    lastnode.subcell1.style.backgroundImage='url('+jcl_ResourceURL+'treeview/treeline.gif)';
    lastnode.col1.style.backgroundImage='url('+jcl_ResourceURL+'treeview/nodeline.gif)';
    if(lastnode.Level==1&&lastnode.Index==0){
      lastnode.col1.style.backgroundImage='url('+jcl_ResourceURL+'treeview/nodetopline.gif)';
	}
  }
  var row=this.AppendRow(this.tbody);
  var cell=this.AppendCell(row);
  cell.style.borderWidth=0;
  cell.appendChild(node);
  this.Item[this.Item.length]=node;
  this.TreeView.ChildNodes[this.TreeView.ChildNodes.length]=node;
  node.Index=this.Item.length-1;
  if(this.Owner!=this.TreeView) node.Parent=this.Owner;
  node.Owner=this;
  node.Level=this.Level+1;
  node.Items.Level=node.Level;
  if(this.Owner.Drawplus)this.Owner.Drawplus();
  node.TreeView=this.TreeView;
  node.Items.TreeView=this.TreeView;
  if(this.Item.length==1&&node.Level==1) node.TreeView.RootNode=node;
  if(!node.Image.src){
	  if(node.DefaultImage)
		node.Image.src=node.DefaultImage;
	  else
		node.Image.src= this.TreeView.Image;
  }
  var bgcolor=node.TreeView.style.backgroundColor;
  if(!bgcolor)bgcolor=clWhite;
  node.style.borderColor=bgcolor;
  node.col1.style.backgroundRepeat='no-repeat';
  if(node.Index>0){
    node.col1.style.backgroundImage='url('+jcl_ResourceURL+'treeview/treedownshortline.gif)';
  }
  node.SetNodeType(node.TreeView.NodeType);
  return node;
}

function TreeNodesDelete(node)
{
  _arrayremove(this.Item,node.Index);
  _arrayremove(this.TreeView.ChildNodes,node.Index);
  for(var i=0;i<this.Item.length;i++){
	  this.Item[i].Index=i;
  }
  this.removeChild(node);
}
function TreeNodes_Clear()
{
   var count=this.Item.length;
   var node;
   var childs=this.TreeView.ChildNodes;
   for(var i=0;i<count;i++){
	 node = this.Item[i];
	 for(var j=0;j<childs.length;j++){
		 if(childs[j]==node){
			 _arrayremove(childs,j);
		 }
	 }
     this.removeChild(node);
   }
   this.Item.length=0;
}

//treenode
function TreeNode(parent)
{
  var pdiv,obj=getDocument(parent).createElement('table');
  obj.thead = getDocument(parent).createElement('thead');
  obj.appendChild(obj.thead);
  obj.tbody = getDocument(parent).createElement('tbody');
  obj.appendChild(obj.tbody);
  obj.AppendRow=Table_AppendRow;
  obj.AppendCell=Table_AppendCell;
  obj.style.position='relative';
  obj.SelectImage;
  obj.DefaultImage;
  obj.Recurse=false;
  obj.Expanded=false;
  obj.cellSpacing=0;
  obj.cellPading=0;

  obj.row1=obj.AppendRow(obj.tbody);

  obj.col1=obj.AppendCell(obj.row1);
  obj.col2=obj.AppendCell(obj.row1);
  obj.col3=obj.AppendCell(obj.row1);
  obj.col4=obj.AppendCell(obj.row1);
  obj.col1.style.width='0.1%';
  obj.col2.style.width='0.1%';
  obj.col3.style.width='0.1%';
//  obj.col1.style.backgroundColor=clRed;

  obj.nodediv = new Image(obj.col1);
  obj.nodediv.src=jcl_ResourceURL+'treeview/treenodeplus.gif';
  obj.nodediv.style.position='relative';
  obj.nodediv.style.zIndex=3;
  obj.nodediv.style.visibility='hidden';
  obj.nodediv.treenode=obj;
  obj.nodediv.onmousedown=TreeNode_onmousedown;

  obj.Image=getDocument(parent).createElement('IMG');
  obj.col2.appendChild(obj.Image);
  obj.Image.treenode=obj;
  obj.Text=new Link(parent);
  obj.Text.style.whiteSpace="nowrap";
  obj.Text.href='#';
  obj.col4.appendChild(obj.Text);
  obj.Text.treenode=obj;
  obj.Text.style.cursor = 'pointer';
  obj.Text.style.textDecoration='none';
  obj.Text.onmouseover=function(){this.style.textDecoration='underline'};
  obj.Text.onmouseout=function(){this.style.textDecoration='none'};
  var row=obj.AppendRow(obj.tbody);
  obj.subcell1=obj.AppendCell(row);
  obj.subcell2=obj.AppendCell(row);
  obj.subcell2.colSpan=3;
  obj.childtable=new Div(obj.subcell2);
  obj.childtable.style.position='relative';
  obj.childtable.style.display='none';
  obj.Items=new TreeNodes(obj,obj.childtable);
  obj.childdiv= obj.Items;

  obj.treenode=obj;

  if(isIE)
	obj.onpropertychange=TreeNode_onpropertychange
  else
	addEventTimerListener(obj,TreeNode_onpropertychange);

  obj.Drawplus=TreeNode_Drawplus;
  obj.Text.onclick=TreeNode_onclick;
  obj.Text.ondblclick=TreeNode_onmousedown;
  obj.Image.onclick=TreeNode_onclick;
  obj.Image.ondblclick=TreeNode_onmousedown;
  obj.oncontextmenu =TreeNode_oncontextmenu ;
  obj.Text.oncontextmenu=TreeNode_oncontextmenu;
  obj.Text.treenode=obj;
  obj.Focus=TreeNode_Focus;
  obj.Focused=false;
  obj.TreeView;
  obj.Expand=TreeNode_Expand;
  obj.Collapse=TreeNode_Collapse;
  obj.SetNodeType=TreeNode_SetNodeType;
  obj.NodeControl;

  return obj;
}
function TreeNode_SetNodeType(type)
{
  this.col3.innerHTML='';
  this.NodeControl=null;
  if(type=='CheckBox')
	this.NodeControl=new CheckBox(this.col3);
  else if(type=='Radio')
	this.NodeControl=new Radio(this.col3);
  if(this.NodeControl){
    this.NodeControl.node=this;
    this.NodeControl.onclick=TreeNode_nodecontrolonclick;
    this.NodeControl.firechange=TreeNode_nodecontrolonchange;
  }
  for(var i=0;i<this.Items.Item.length;i++){
    this.Items.Item[i].SetNodeType(type);
  }
}
function TreeNode_nodecontrolonchange(){
  if(this.checked){
	if(!this.node.TreeView.Selects.has(this.node)) {
	  this.node.TreeView.Selects[this.node.TreeView.Selects.length]=this.node;
	}
  }
  else
    this.node.TreeView.Selects.remove(this.node);
  for(var i=0;i<this.node.Items.Item.length;i++){
    this.node.Items.Item[i].NodeControl.checked=this.checked;
	this.node.Items.Item[i].NodeControl.firechange();
  }
}
function TreeNode_nodecontrolonclick(){
  this.firechange();
  if(this.node.TreeView.OnNodeControlClick)this.node.TreeView.OnNodeControlClick(this.node, this.checked);
}

function TreeNode_oncontextmenu(event)
{
	if(!event)event=window.event;
    this.treenode.Focus();
	var popupmenu=this.treenode.TreeView.PopupMenu;
	if(popupmenu)if(popupmenu.AutoPopup){
	  var x=event.clientX;
	  var y=event.clientY;
      this.treenode.TreeView.PopupMenu.Popup(x,y);
	}
    event.returnValue = false;
    event.cancelBubble=true;
}
function TreeNode_onmousedown(event)
{
  if(!event)event=window.event;
  var parent=this.treenode;
  if(event.button<=1){
	if(parent.Expanded==true) parent.Collapse(false);
    else if(parent.Expanded==false) parent.Expand(false);
	if(event.button==0){
	  if(parent.TreeView.Selected){
		var text=parent.TreeView.Selected.Text;
		var caption=text.innerHTML;
		text.innerHTML='';
		text.innerHTML=caption;
      }
	}
  }
  event.cancelBubble=true;
}
function TreeNode_onclick(event)
{
  if(!event)event=window.event;
  this.treenode.Focus();
  event.cancelBubble=true;
}
function TreeNode_Focus()
{
  if(this.TreeView.PopupMenu)this.TreeView.PopupMenu.Hide();
  var treeview=this.TreeView;
  treeview.Selected=this.treenode;
}
function TreeNode_Drawplus()
{
  if(this.Items.Item.length>0)this.nodediv.style.visibility='visible';
  else this.nodediv.style.visibility='hidden';
}
function TreeNode_onpropertychange(sender)
{
  var n;
  if(isIE) {
	  n=event.propertyName;
	  sender=this;
  }
  if(isMoz)
	  n='Expanded';
  var treeview=sender.TreeView;
  switch(n){
    case 'Expanded':
	  if(sender.OldExpanded==sender.Expanded)return;
  	  sender.OldExpanded=sender.Expanded;
	  if(sender.Expanded==true){
        if(treeview)if(treeview.OnExpand)treeview.OnExpand(treeview,sender);
		if(sender.Items.Item.length>0){
		  sender.childtable.style.display='';
		  if(!sender.Image.src){
			  if(sender.SelectImage)
				sender.Image.src=sender.SelectImage;
			  else
				sender.Image.src=treeview.SelectImage;
		  }
		  var lastnode=sender.Items.Item[sender.Items.Item.length-1];
		  lastnode.style.backgroundRepeat='no-repeat';
		  lastnode.style.backgroundImage='url('+jcl_ResourceURL+'treeview/treedownshortline.gif)';
		}
		sender.nodediv.src=jcl_ResourceURL+'treeview/treenodeminus.gif';
		if(treeview)if(treeview.OnExpanded)treeview.OnExpanded(treeview,sender);
		if(sender.Recurse){
			for(var i=0;i<sender.Items.Item.length;i++){
			  sender.Items.Item[i].Expanded = true;
		    }
		}
  	  }
	  else if(sender.Expanded==false){
		if(sender.Items.Item.length>0){
		  sender.childtable.style.display='none';
		}
		sender.nodediv.src=jcl_ResourceURL+'treeview/treenodeplus.gif';
        if(!sender.Image.src){
		  if(sender.DefaultImage)
			sender.Image.src=sender.DefaultImage;
		  else
			sender.Image.src=treeview.Image;
		}
		if(treeview)if(treeview.OnCollapsed)treeview.OnCollapsed(treeview,sender);
  	    if(sender.Recurse){
			for(var i=0;i<sender.Items.Item.length;i++){
			  sender.Items.Item[i].Expanded=false;
			}
		}
	  }
    break;
  }
}
function TreeNode_Expand(Recurse)//boolean
{
  this.Recurse=Recurse;
  this.Expanded=true;
}
function TreeNode_Collapse(Recurse)//boolean
{
  this.Recurse=Recurse;
  this.Expanded=false;
}