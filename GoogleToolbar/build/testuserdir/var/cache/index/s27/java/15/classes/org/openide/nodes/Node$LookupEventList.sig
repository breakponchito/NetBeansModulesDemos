����   4 �	      &org/openide/nodes/Node$LookupEventList this$0 Lorg/openide/nodes/Node;
  	 
   #javax/swing/event/EventListenerList <init> ()V	     lookup Lorg/openide/util/Lookup;
      org/openide/nodes/Node 
access$100 ()Ljava/lang/Object;	     result  Lorg/openide/util/Lookup$Result;
     
access$200 $()Lorg/openide/util/Lookup$Template;
   ! "  # org/openide/util/Lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;	  % & ' $assertionsDisabled Z ) java/lang/AssertionError + java/lang/StringBuilder
 * 	 . Null lookup result from 
 * 0 1 2 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 * 4 1 5 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 7  in 
 * 9 : ; toString ()Ljava/lang/String;
 ( =  > (Ljava/lang/Object;)V
 @ A B C D org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
 @ F G H allItems ()Ljava/util/Collection; J org/openide/nodes/FilterNode
 I L M N getOriginal ()Lorg/openide/nodes/Node;	 P Q R S T org/openide/nodes/NodeLookup NO_COOKIE_CHANGE Ljava/lang/ThreadLocal;
 V W X Y  java/lang/ThreadLocal get
  [ \  fireCookieChange
 ^ _ ` a b java/lang/Class desiredAssertionStatus ()Z d org/openide/util/LookupListener 	Signature ALorg/openide/util/Lookup$Result<Lorg/openide/nodes/Node$Cookie;>; 4(Lorg/openide/nodes/Node;Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/nodes/Node$LookupEventList; l MethodParameters init (Z)Lorg/openide/util/Lookup; doInit StackMapTable t java/lang/Object v java/lang/Throwable resultChanged !(Lorg/openide/util/LookupEvent;)V f Lorg/openide/nodes/FilterNode; ev Lorg/openide/util/LookupEvent; <clinit> 
SourceFile 	Node.java InnerClasses LookupEventList Result �  org/openide/util/Lookup$Template Template � org/openide/nodes/Node$Cookie Cookie 0    c           e    f & '          g  h   K     *+� *� *,� �    i       	 	 j        k l      m   n   	  m    o p  h       =� YN�� Y*� � R**� � � � � $� 4*� � -� (Y� *Y� ,-� /*� � 36� /*� � 3� 8� <�*� *� ?=-ç 
:-��� *� � EW*� �   d g   g k g    i   .       ! X ` b n r z j         k l      o '   } q '  r    � X s	D u�  n    o    w x  h   �     (*� � I� *� � IM,� K� O� U� �*� � Z�    i       
  # &  * '+ j        y z    ( k l     ( { |  r      n    {    }   h   4      � ]� � � $�    i       r    @  ~     �   "    �  @   �	 �   �  �  �	