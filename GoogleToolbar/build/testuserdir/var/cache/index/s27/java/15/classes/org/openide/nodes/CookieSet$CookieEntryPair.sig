����   4 T
      +org/openide/util/lookup/AbstractLookup$Pair <init> ()V	  	 
   +org/openide/nodes/CookieSet$CookieEntryPair entry )Lorg/openide/nodes/CookieSet$CookieEntry;
      'org/openide/nodes/CookieSet$CookieEntry 	getCookie "(Z)Lorg/openide/nodes/Node$Cookie;
     getId ()Ljava/lang/String;
     
access$000 <(Lorg/openide/nodes/CookieSet$CookieEntry;)Ljava/lang/Class;
      java/lang/Class getName
  ! " # isAssignableFrom (Ljava/lang/Class;)Z
 % & ' ( ) java/lang/Object hashCode ()I ,(Lorg/openide/nodes/CookieSet$CookieEntry;)V Code LineNumberTable LocalVariableTable this -Lorg/openide/nodes/CookieSet$CookieEntryPair; e MethodParameters 	creatorOf (Ljava/lang/Object;)Z obj Ljava/lang/Object; StackMapTable getDisplayName getInstance ()Ljava/lang/Object; getType ()Ljava/lang/Class; 
instanceOf c Ljava/lang/Class; k LocalVariableTypeTable Ljava/lang/Class<*>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; equals 
SourceFile CookieSet.java InnerClasses I &org/openide/util/lookup/AbstractLookup Pair L org/openide/nodes/CookieSet CookieEntryPair CookieEntry P org/openide/nodes/Node$Cookie R org/openide/nodes/Node Cookie 0           	   *  +   F     
*� *+� �    ,      � � 	� -       
 . /     
 0   1    0    2 3  +   Q     +*� � � � �    ,      � -        . /      4 5  6    @ 1    4    7   +   /     *� �    ,      � -        . /       +   5     *� � � �    ,      � -        . /    8 9  +   3     	*� � �    ,      � -       	 . /    : ;  +   2     *� � �    ,      � -        . /    < #  +   b     +M,*� � �  �    ,   
   � � -         . /      = >    ? >  @       ? A  1    =    ( )  +   4     
*� � $`�    ,      � -       
 . /   B     C    D 3  +   e     +� � +� � *� � � ��    ,      � � � -        . /      4 5  6    @  1    4   B     C    E    F G   "   H J	  K M   K N 
 O Q S	