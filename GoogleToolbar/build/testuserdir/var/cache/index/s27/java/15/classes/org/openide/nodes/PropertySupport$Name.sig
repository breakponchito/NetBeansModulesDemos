����   4 T  !org/openide/nodes/PropertySupport  CTL_StandardName
    	 
 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;  CTL_StandardHint
      &org/openide/nodes/PropertySupport$Name <init> ?(Lorg/openide/nodes/Node;Ljava/lang/String;Ljava/lang/String;)V  org/openide/nodes/Node  name  java/lang/String
     	canRename ()Z
     L(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V	  ! " # node Lorg/openide/nodes/Node;
  % & ' getName ()Ljava/lang/String;
  ) * + setName (Ljava/lang/String;)V
  - . / firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  1 2 + setValue
  4 5 ' getValue (Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/nodes/PropertySupport$Name; MethodParameters propName Ljava/lang/String; hint 
Exceptions B  java/lang/IllegalAccessException D "java/lang/IllegalArgumentException F +java/lang/reflect/InvocationTargetException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; val oldName Ljava/lang/Object; (Ljava/lang/Object;)V ()Ljava/lang/Object; 	Signature 7Lorg/openide/nodes/PropertySupport<Ljava/lang/String;>; 
SourceFile PropertySupport.java InnerClasses Name 1       " #      6  7   T     *+� � � �    8          9        : ;      " #  <    "      7   e     *,-+� � *+�  �    8      $ % & 9   *     : ;      " #     = >     ? >  <    "  =  ?   5 '  7   2     *�  � $�    8      - 9        : ;   @     A C E G     H    2 +  7   f     *�  � $M*�  +� (*�  ,+� ,�    8      6 7 8 9 9         : ;      I >    J K  @     A C E <    I   G     H  A 2 L  7   3     	*+� � 0�    8       9       	 : ;   @     A C E <    I  G     H  A 5 M  7   /     *� 3�    8       9        : ;   @     A E G     H    N    O P    Q R   
    S 