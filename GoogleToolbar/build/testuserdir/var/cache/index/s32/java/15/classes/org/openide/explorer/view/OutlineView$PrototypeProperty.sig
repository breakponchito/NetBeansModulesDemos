����   4 N
      7org/openide/explorer/view/OutlineView$PrototypeProperty <init> 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V  java/lang/Object
 
     +org/openide/nodes/PropertySupport$ReadWrite J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V  java/lang/AssertionError
     ()V  org/openide/nodes/Node$Property
     getName ()Ljava/lang/String;
  
      java/lang/String equals (Ljava/lang/Object;)Z
  ! " # hashCode ()I '(Ljava/lang/String;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 9Lorg/openide/explorer/view/OutlineView$PrototypeProperty; name Ljava/lang/String; displayName MethodParameters description getValue ()Ljava/lang/Object; 
Exceptions 3  java/lang/IllegalAccessException 5 +java/lang/reflect/InvocationTargetException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setValue (Ljava/lang/Object;)V val Ljava/lang/Object; = "java/lang/IllegalArgumentException o StackMapTable 	Signature ALorg/openide/nodes/PropertySupport$ReadWrite<Ljava/lang/Object;>; 
SourceFile OutlineView.java InnerClasses F %org/openide/explorer/view/OutlineView PrototypeProperty I !org/openide/nodes/PropertySupport 	ReadWrite L org/openide/nodes/Node Property 0  
         $  %   J     *+,� �    &   
   	� 	� '         ( )      * +     , +  -   	 *   ,        %   V     
*+,-� 	�    &   
   	� 		� '   *    
 ( )     
 * +    
 , +    
 . +  -    *   ,   .    / 0  %   2     � Y� �    &      	� '        ( )   1     2 4 6     7    8 9  %   <     � Y� �    &      	� '        ( )      : ;  1     2 < 4 -    :   6     7       %   e     +� � *� +� � � � � �    &      	� 	� 	� '        ( )      > ;  ?    @ -    >   6     7    " #  %   2     *� �  �    &      	� '        ( )   6     7    @    A B    C D      E G  
 H J	  K M	