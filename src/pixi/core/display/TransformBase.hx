package pixi.core.display;

import pixi.core.math.Matrix;

@:native("PIXI.TransformBase")
extern class TransformBase {
	
	/**
	 * Generic class to deal with traditional 2D matrix transforms
	 *
	 * @class
	 * @memberof PIXI
	 */
	public function new();
	
    /**
     * The global matrix transform. It can be swapped temporarily by some functions like getLocalBounds()
     *
     * @member {PIXI.Matrix}
     */
	var worldTransform:Matrix;
	
    /**
     * The local matrix transform
     * 
     * @member {PIXI.Matrix}
     */
	var localTransform:Matrix;
	
	/**
	 * TransformBase does not have decomposition, so this function wont do anything
	 */
	function updateLocalTransform():Void;
	
	/**
	 * Updates the values of the object and applies the parent's transform.
	 * @param  parentTransform {PIXI.TransformBase} The transform of the parent of this object
	 *
	 */
	function updateTransform(parentTransform:TransformBase):Void;
	
	/**
	 * Updates the values of the object and applies the parent's transform.
	 * @param  parentTransform {PIXI.Transform} The transform of the parent of this object
	 *
	 */
	function updateWorldTransform(parentTransform:TransformBase):Void;
}