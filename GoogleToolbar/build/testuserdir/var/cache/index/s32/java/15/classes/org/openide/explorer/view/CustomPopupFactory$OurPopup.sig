����   4 ?
      javax/swing/Popup <init> ()V	  	 
   5org/openide/explorer/view/CustomPopupFactory$OurPopup owner Ljava/awt/Component;	     contents	     x I	     y	     canReuse Z
     	configure -(Ljava/awt/Component;Ljava/awt/Component;II)V
    !  prepareResources
  # $  doShow
  & '  doHide
  ) *  dispose Code LineNumberTable LocalVariableTable this 7Lorg/openide/explorer/view/CustomPopupFactory$OurPopup; MethodParameters 	isShowing ()Z show #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; hide clear isInUse 
SourceFile CustomPopupFactory.java InnerClasses = ,org/openide/explorer/view/CustomPopupFactory OurPopup                                     +   �     '*� *� *� *� *� *� *+,� �    ,   "    S  O 	 P  Q  R  u  T & U -   4    ' . /     '      '      '      '    0                    +   x     *+� *,� *� *� �    ,       X  Y 
 Z  [  \ -   4     . /                           0                !    $    1 2   '     3   +   ;     	*� *� "�    ,       e  f  g -       	 . /   4     5    6   +   3     *� %�    ,   
    k  l -        . /   4     5     *   +   O     *� *� *� *� �    ,       o  p 
 q  r  s -        . /    7   +   <     
*� *� (�    ,       w  x 	 y -       
 . /     8 2  +   /     *� �    ,       | -        . /    9    : ;   
   < >
