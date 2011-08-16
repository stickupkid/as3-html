package org.osflash.html
{
	import org.osflash.html.element.HTMLDocument;
	import org.osflash.html.elements.HTMLBodyNode;
	import org.osflash.html.elements.HTMLDivNode;
	import org.osflash.html.elements.HTMLHeadNode;
	import org.osflash.html.elements.HTMLStyleNode;
	import org.osflash.html.elements.HTMLTitleNode;
	import org.osflash.logger.logs.info;

	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	[SWF(backgroundColor="#333333", frameRate="31", width="480", height="480")]
	public class CreateHTMLTest extends Sprite
	{

		public function CreateHTMLTest()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			const html : HTMLDocument = new HTMLDocument();
			
			const head : HTMLHeadNode = new HTMLHeadNode();
			head.add(new HTMLTitleNode('HTML Test'));
			head.add(new HTMLStyleNode());
			html.add(head);
			
			const body : HTMLBodyNode = new HTMLBodyNode();
			const div : HTMLDivNode = new HTMLDivNode();
			div.classes.add('wrapper').add('slapper');
			
			body.add(div);
			html.add(body);
			
			info(html.write());
		}

	}
}