����   4 B
      java/lang/Object <init> ()V	  	 
   )org/openide/nodes/FilterNode$FilterHandle original Lorg/openide/nodes/Node$Handle;  org/openide/nodes/FilterNode      org/openide/nodes/Node$Handle getNode ()Lorg/openide/nodes/Node;
     (Lorg/openide/nodes/Node;)V  java/lang/StringBuilder
    FilterHandle[
      append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  "  # -(Ljava/lang/Object;)Ljava/lang/StringBuilder; % ]
  ' ( ) toString ()Ljava/lang/String; serialVersionUID J ConstantValuen	#�J�a "(Lorg/openide/nodes/Node$Handle;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/nodes/FilterNode$FilterHandle; MethodParameters 
Exceptions 8 java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FilterNode.java InnerClasses FilterHandle @ org/openide/nodes/Node Handle 0       * +  ,    -         /  0   F     
*� *+� �    1      � � 	� 2       
 3 4     
    5           0   ;     � Y*� �  � �    1      � 2        3 4   6     7  ( )  0   F     � Y� � *� � !$� � &�    1      � 2        3 4   9     :    ;    < =       >   ? A	