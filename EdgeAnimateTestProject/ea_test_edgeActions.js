/***********************
* Adobe Edge Animate Composition Actions
*
* Edit this file with caution, being careful to preserve 
* function signatures and comments starting with 'Edge' to maintain the 
* ability to interact with these actions from within Adobe Edge Animate
*
***********************/
(function($, Edge, compId){
var Composition = Edge.Composition, Symbol = Edge.Symbol; // aliases for commonly used Edge classes

   //Edge symbol: 'stage'
   (function(symbolName) {
      
      
      

      

   })("stage");
   //Edge symbol end:'stage'

   //=========================================================
   
   //Edge symbol: 'CircleButton'
   (function(symbolName) {   
   
      Symbol.bindTriggerAction(compId, symbolName, "Default Timeline", 2115, function(sym, e) {
         // insert code here
         // Replay from the beginning, regardless of current playing state 
         	sym.play(0);

      });
      //Edge binding end

      Symbol.bindElementAction(compId, symbolName, "${Group}", "touchstart", function(sym, e) {
         // insert code to be run when a user touches the object (for touch devices only)
         sym.stop();
         

      });
      //Edge binding end

   })("CircleButton");
   //Edge symbol end:'CircleButton'

})(window.jQuery || AdobeEdge.$, AdobeEdge, "EDGE-274302398");