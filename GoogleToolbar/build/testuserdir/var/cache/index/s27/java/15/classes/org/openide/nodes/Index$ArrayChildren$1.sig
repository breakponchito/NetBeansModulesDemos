����   4 7	      'org/openide/nodes/Index$ArrayChildren$1 this$0 'Lorg/openide/nodes/Index$ArrayChildren;
  	 
   org/openide/nodes/Index$Support <init> ()V
      %org/openide/nodes/Index$ArrayChildren getNodes ()[Lorg/openide/nodes/Node;
     getNodesCount ()I
     reorder ([I)V  javax/swing/event/ChangeEvent
     (Ljava/lang/Object;)V
  ! " # fireChangeEvent "(Ljavax/swing/event/ChangeEvent;)V *(Lorg/openide/nodes/Index$ArrayChildren;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/nodes/Index$ArrayChildren$1; MethodParameters perm [I 
SourceFile 
Index.java EnclosingMethod  1 (Ljava/util/List;)V InnerClasses 4 org/openide/nodes/Index ArrayChildren Support                $  %   >     
*+� *� �    &      4 '       
 ( )     
    *    �     %   2     *� � �    &      6 '        ( )       %   2     *� � �    &      : '        ( )       %   T     *� +� *� Y*� � �  �    &      > ? @ '        ( )      + ,  *    +    -    . /     0 2      3 5 	         3 6	