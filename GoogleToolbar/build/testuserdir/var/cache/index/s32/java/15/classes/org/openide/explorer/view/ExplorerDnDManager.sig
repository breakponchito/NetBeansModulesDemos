����   4 L
      java/lang/Object <init> ()V	  	 
   ,org/openide/explorer/view/ExplorerDnDManager isDnDActive Z	     nodeAllowed I	     maybeExternalDnD	     defaultDnDManager .Lorg/openide/explorer/view/ExplorerDnDManager;
  	     draggedNodes [Lorg/openide/nodes/Node;	      draggedTransForCut $Ljava/awt/datatransfer/Transferable;	  " #   draggedTransForCopy % java/awt/dnd/DnDConstants
  ' ( ) getNodeAllowedActions ()I Code LineNumberTable LocalVariableTable this 
getDefault 0()Lorg/openide/explorer/view/ExplorerDnDManager; StackMapTable setDraggedNodes ([Lorg/openide/nodes/Node;)V n MethodParameters getDraggedNodes ()[Lorg/openide/nodes/Node; setDraggedTransferable ((Ljava/awt/datatransfer/Transferable;Z)V trans isCut getDraggedTransferable '(Z)Ljava/awt/datatransfer/Transferable; setNodeAllowedActions (I)V actions setDnDActive (Z)V state ()Z getAdjustedDropAction (II)I action allowed possibleAction setMaybeExternalDragAndDrop 
SourceFile ExplorerDnDManager.java 0      
                 #                         *   N     *� *� *� *� �    +       0  + 	 ,  -  1 ,        -    ( . /  *   =      � � � Y� � � �    +       5  6  9 0       1 2  *   >     *+� �    +   
    =  > ,        -       3   4    3     5 6  *   /     *� �    +       A ,        -      7 8  *   f     � *+� � *+� !�    +       E  F  H  J ,         -       9       :   0     4   	 9   :     ; <  *   S     � *� �*� !�    +       M  N 	 R ,        -       :   0    	 4    :     = >  *   >     *� �    +   
    V  W ,        -       ?   4    ?    ( )  *   P     *� � *� � �*� �    +       Z  [  ] ,        -    0       @ A  *   >     *� �    +   
    a  b ,        -       B   4    B      C  *   J     *� � 
*� � � �    +       e ,        -    0    @   D E  *   �     >~� >*� &~� *� &>�    +       i  k  l 
 o  p  s ,   *     -       F      G     H   0    � 
 4   	 F   G     I A  *   >     *� �    +   
    w  x ,        -          4        J    K