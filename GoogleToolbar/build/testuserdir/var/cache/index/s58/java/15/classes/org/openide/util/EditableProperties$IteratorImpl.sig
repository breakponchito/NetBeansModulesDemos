����   4 �	      0org/openide/util/EditableProperties$IteratorImpl this$0 %Lorg/openide/util/EditableProperties;
  	 
   java/lang/Object <init> ()V
      #org/openide/util/EditableProperties 
access$100 R(Lorg/openide/util/EditableProperties;)Lorg/openide/util/EditableProperties$State;	      )org/openide/util/EditableProperties$State items Ljava/util/LinkedList;
      java/util/LinkedList listIterator ()Ljava/util/ListIterator;	    ! " delegate Ljava/util/ListIterator;
  $ % & findNext ,()Lorg/openide/util/EditableProperties$Item; (  java/util/NoSuchElementException
 ' 	 + , - . / java/util/ListIterator next ()Ljava/lang/Object; 1 0org/openide/util/EditableProperties$MapEntryImpl
 0 3  4 R(Lorg/openide/util/EditableProperties;Lorg/openide/util/EditableProperties$Item;)V + 6 7 / previous 9 java/lang/IllegalStateException
 8 	 + < = > 	nextIndex ()I
  @ A B 
access$200 ((Lorg/openide/util/EditableProperties;)V
  D E F remove (I)Ljava/lang/Object; H (org/openide/util/EditableProperties$Item	  J K L $assertionsDisabled Z
 G N O P getKey ()Ljava/lang/String;
 R S T U V java/lang/String equals (Ljava/lang/Object;)Z X java/lang/AssertionError
 W 		  [ \ ] 	itemIndex Ljava/util/Map; _ ` a E b java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object;
  d  e (I)Ljava/util/ListIterator; + g h i hasNext ()Z
 G k l P getValue
  n . o ()Ljava/util/Map$Entry;
 q r s t i java/lang/Class desiredAssertionStatus v java/util/Iterator 	Signature DLjava/util/ListIterator<Lorg/openide/util/EditableProperties$Item;>; Code LineNumberTable LocalVariableTable this 2Lorg/openide/util/EditableProperties$IteratorImpl; MethodParameters StackMapTable item *Lorg/openide/util/EditableProperties$Item; =()Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>; index I removed #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> cLjava/lang/Object;Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>; 
SourceFile EditableProperties.java InnerClasses IteratorImpl State Item MapEntryImpl � java/util/Map$Entry Entry      u   ! "  w    x K L          B  y   J     *+� *� *+� � � � �    z      N 	O P {        | }   ~      h i  y   B     *� #� � �    z      S {        | }       @  . o  y   z     (*� #L+� � 'Y� )�*� � * W� 0Y*� +� 2�    z      W X 	Y [ \ {       ( | }    # � �      �  G w    �  E   y       �*� � 5 W*� #L+� � 8Y� :�*� � ; =*� � ?*� � � � C� GN� I� -� M+� M� Q� � WY� Y�*� � � Z+� M� ^ W**� � � � c� �    z   .   a 
b c d f %g ,h >i Zj nk �l {   *    � | }    r � �  % \ � �  > C � �      �  G� > G �     �    % &  y   �     8*� � f � -*� � * � GL+� M� +� j� *� � 5 W+�����    z      o p q 's 1t 3v 6w {       � �    8 | }        2A . /  y   /     *� m�    z      J {        | }    �   y   4      � p� � � I�    z      J     @  w    � �    � �   *    �    � 
 G  � 
 0  �  � _ �	