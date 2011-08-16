package org.osflash.html.element
{
	import org.osflash.dom.dom_namespace;
	import org.osflash.dom.element.IDOMElement;
	import org.osflash.html.errors.HTMLError;
	/**
	 * @author Simon Richardson - me@simonrichardson.info
	 */
	public class HTMLNodeContainer extends HTMLNode
	{
		
		use namespace dom_namespace;

		public function HTMLNodeContainer(type : HTMLNodeType)
		{
			super(type);
		}
		
		/**
		 * @inheritDoc
		 */	
		override public function write() : XML
		{
			const xml : XML = super.write();
			
			const total : int = numChildren;
			for(var i : int = 0; i<total; i++)
			{
				const child : IDOMElement = children[i];
				if(child is HTMLNode)
				{
					const htmlChild : HTMLNode = HTMLNode(child);
					xml.appendChild(htmlChild.write());
				}
				else throw new HTMLError('Node is not of type HTMLNode');
			}
			
			return xml;
		}
	}
}