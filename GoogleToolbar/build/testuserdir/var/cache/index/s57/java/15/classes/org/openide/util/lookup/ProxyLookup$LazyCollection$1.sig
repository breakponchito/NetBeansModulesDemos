����   4 ^	      4org/openide/util/lookup/ProxyLookup$LazyCollection$1 this$0 4Lorg/openide/util/lookup/ProxyLookup$LazyCollection;
  	 
   java/lang/Object <init> ()V	     indx [I	     current Ljava/util/Iterator;      java/util/Iterator hasNext ()Z
       2org/openide/util/lookup/ProxyLookup$LazyCollection 
access$800 W(Lorg/openide/util/lookup/ProxyLookup$LazyCollection;)[Lorg/openide/util/Lookup$Result;
  " # $ 
access$900 N(Lorg/openide/util/lookup/ProxyLookup$LazyCollection;[I)Ljava/util/Collection; & ' ( ) * java/util/Collection iterator ()Ljava/util/Iterator;	  , - . $assertionsDisabled Z 0 java/lang/AssertionError
 / 	
    4 5 6 next ()Ljava/lang/Object; 8  java/util/NoSuchElementException
 7 	 ; 'java/lang/UnsupportedOperationException
 : 	 > #org/openide/util/lookup/ProxyLookup
 @ A B C  java/lang/Class desiredAssertionStatus 7(Lorg/openide/util/lookup/ProxyLookup$LazyCollection;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/util/lookup/ProxyLookup$LazyCollection$1; MethodParameters newIt Ljava/util/Collection; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; remove <clinit> 
SourceFile ProxyLookup.java EnclosingMethod V * lazyIterator InnerClasses LazyCollection Z org/openide/util/Lookup$Result \ org/openide/util/Lookup Result                  - .           D  E   M     *+� *� *�
YO� �    F   
    	 G        H I         J    �     E   �     l*� � *� �  � �*� .*� � �� �*� *� � !L+� *+� % � � '� +� *� .*� � �� � /Y� 1�*� ���    F   * 
     & (" 4# 8$ E& d' i) G     4 5 K L    l H I   M     �  &�  N     O    5 6  E   T     *� 2� *� � 3 �� 7Y� 9�    F      . / 1 G        H I   M     N     O    P   E   2     � :Y� <�    F      7 G        H I   N     O    Q   E   4      =� ?� � � +�    F       M    @  R    S T     U W      = X 
        Y [ ]	