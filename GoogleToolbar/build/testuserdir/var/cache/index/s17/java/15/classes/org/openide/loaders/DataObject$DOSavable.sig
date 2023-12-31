����   4 r
      (org/netbeans/spi/actions/AbstractSavable <init> ()V	  	 
   (org/openide/loaders/DataObject$DOSavable obj  Lorg/openide/loaders/DataObject;
      org/openide/loaders/DataObject getNodeDelegate ()Lorg/openide/nodes/Node;
      org/openide/nodes/Node getDisplayName ()Ljava/lang/String;  org/openide/cookies/SaveCookie
     	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;    !  save
 # $ % & ' java/lang/Object equals (Ljava/lang/Object;)Z
 # ) * + hashCode ()I
  - .  
unregister
  0 1  register
  3 4 5 icon ()Ljavax/swing/Icon; 7 8 9 : ; javax/swing/Icon 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V 7 = > + getIconWidth 7 @ A + getIconHeight C java/beans/BeanInfo
  E F G getIcon (I)Ljava/awt/Image;
 I J K L M org/openide/util/ImageUtilities 
image2Icon $(Ljava/awt/Image;)Ljavax/swing/Icon; #(Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/loaders/DataObject$DOSavable; MethodParameters findDisplayName #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
handleSave sc  Lorg/openide/cookies/SaveCookie; StackMapTable 
Exceptions ^ java/io/IOException dos other Ljava/lang/Object; remove add c Ljava/awt/Component; g Ljava/awt/Graphics; x I y 
SourceFile DataObject.java InnerClasses 	DOSavable p org/openide/nodes/Node$Cookie Cookie 0    7          N  O   F     
*� *+� �    P      � � 	� Q       
 R S     
    T        U   O   5     *� � � �    P      � Q        R S   V     W    X   O   f     *� � � L+� 	+�  �    P      � � � � Q        R S     Y Z  [    �   \     ] V     W    & '  O   m     +� � +� M*� ,� � "��    P      � � � � Q        _ S     R S      ` a  [     T    `   V     W    * +  O   2     *� � (�    P      � Q        R S   V     W    b   O   3     *� ,�    P   
   � � Q        R S    c   O   3     *� /�    P   
   � � Q        R S    : ;  O   e     *� 2+,� 6 �    P   
   � � Q   4     R S      d e     f g     h i     j i  T    d   f   h   j   V     W    > +  O   4     
*� 2� < �    P      � Q       
 R S   V     W    A +  O   4     
*� 2� ? �    P      � Q       
 R S   V     W    4 5  O   9     *� � � D� H�    P      � Q        R S    k    l m       n  o  q	