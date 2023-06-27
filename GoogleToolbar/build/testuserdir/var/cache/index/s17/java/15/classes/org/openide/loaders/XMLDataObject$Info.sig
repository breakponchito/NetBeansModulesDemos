����   4 �
      java/lang/Object <init> ()V  java/util/ArrayList
  	      &org/openide/loaders/XMLDataObject$Info 
processors Ljava/util/List;	     iconBase Ljava/lang/String;
        java/util/List iterator ()Ljava/util/Iterator;       java/util/Iterator hasNext ()Z  " # $ next ()Ljava/lang/Object; & java/lang/Class  ( ) * add (Ljava/lang/Object;)Z , +org/openide/loaders/XMLDataObject$Processor
 % . / 0 isAssignableFrom (Ljava/lang/Class;)Z
 % 2 3 4 getConstructors "()[Ljava/lang/reflect/Constructor;
 6 7 8 9 : java/lang/reflect/Constructor getParameterTypes ()[Ljava/lang/Class; < org/openide/loaders/DataObject > !org/openide/loaders/XMLDataObject @ "java/lang/IllegalArgumentException
 ?   C D * remove F java/io/IOException H Not supported anymore
 E J  K (Ljava/lang/String;)V
 M N O P * java/lang/String equals  N S java/lang/Cloneable 	Signature &Ljava/util/List<Ljava/lang/Class<*>;>; Code LineNumberTable LocalVariableTable this (Lorg/openide/loaders/XMLDataObject$Info; clone proc Ljava/lang/Class; ii LocalVariableTypeTable Ljava/lang/Class<*>; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; addProcessorClass (Ljava/lang/Class;)V params [Ljava/lang/Class; i I arr  [Ljava/lang/reflect/Constructor; [Ljava/lang/Class<*>; k g MethodParameters (Ljava/lang/Class<*>;)V removeProcessorClass (Ljava/lang/Class<*>;)Z processorClasses ,()Ljava/util/Iterator<Ljava/lang/Class<*>;>; setIconBase base getIconBase ()Ljava/lang/String; write (Ljava/io/Writer;)V writer Ljava/io/Writer; 
Exceptions obj Ljava/lang/Object; 
SourceFile XMLDataObject.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses Info 	Processor 1    R       T    U       	     V   K     *� *� Y� 	� 
*� �    W      - . / 0 X        Y Z    [ $  V   �     =� Y� L*� 
�  M,�  � ,� ! � %N+� 
-� ' W���+*� � +�    W      4 5 %6 07 38 ;9 X      %  \ ]    = Y Z    5 ^ Z  _     %  \ `  a    �   �   b     c   ! d e  V       Z++� -� H+� 1M>,�� /,2� 5:�� 2;� 2=� M� 	����,� � ?Y� A�*� 
+� ' W�    W   6   E 	F G H I %J 7N 9O <G BT FV NZ Y[ X   4    f g   2 h i   @ j k    Z Y Z     Z \ ]  _       f l    Z \ `  a    �  m� & n� � �  o    \   T    p  q 0  V   Q     *� 
+� B �    W      a X        Y Z      \ ]  _        \ `  o    \   T    r  s   V   4     
*� 
�  �    W      e X       
 Y Z   T    t  u K  V   >     *+� �    W   
   j k X        Y Z      v   o    v    w x  V   /     *� �    W      o X        Y Z    y z  V   >     
� EYG� I�    W      t X       
 Y Z     
 { |  }     E o    {    P *  V   �     J+� �+� � �+� M*� � *� ,� � L� ,� *� � *� 
,� 
� Q � � �    W      x y { } <~ I} X        J Y Z     J ~    6 h Z  a    �  
@ o    ~    �    � �     �     �   �      = �  + = �	