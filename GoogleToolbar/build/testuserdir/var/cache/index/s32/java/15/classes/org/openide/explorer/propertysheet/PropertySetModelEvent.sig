����   4 /
      java/util/EventObject <init> (Ljava/lang/Object;)V	  	 
   8org/openide/explorer/propertysheet/PropertySetModelEvent type I	     start	     end	     
reordering Z TYPE_INSERT ConstantValue     TYPE_REMOVE    TYPE_WHOLESALE_CHANGE    Code LineNumberTable LocalVariableTable this :Lorg/openide/explorer/propertysheet/PropertySetModelEvent; source Ljava/lang/Object; MethodParameters (Ljava/lang/Object;IIIZ)V getType ()I getStartRow 	getEndRow isReordering ()Z 
SourceFile PropertySetModelEvent.java                                                                   b     *+� *� *� *� *� �           /  ( 
 )  *  +  0          ! "      # $  %    #     &     �     0*+� *� *� *� *� *� *� *� *� �       * 
   4  ( 
 )  *  +  5  6 # 7 ) 8 / 9     >    0 ! "     0 # $    0      0      0      0    %    #                ' (     /     *� �           D          ! "    ) (     /     *� �           I          ! "    * (     /     *� �           Q          ! "    + ,     /     *� �           U          ! "    -    .