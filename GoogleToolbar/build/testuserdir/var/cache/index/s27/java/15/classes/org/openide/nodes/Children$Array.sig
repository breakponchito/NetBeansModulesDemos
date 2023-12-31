����   4 �	       org/openide/nodes/Children$Array COLLECTION_LOCK Ljava/lang/Object;
   	 
 <init> ()V	     nodes Ljava/util/Collection;
   	  (Z)V
    org/openide/nodes/Children
     createNodesEntry $()Lorg/openide/nodes/Children$Entry;	     
nodesEntry "Lorg/openide/nodes/Children$Entry;	      lazySupport Z
  " #  getNodesEntry
 % & ' ( ) java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
 + , - . / org/openide/nodes/EntrySupport 
setEntries (Ljava/util/Collection;Z)V
  1 2 3 clone ()Ljava/lang/Object;	  5 6 7 PR #Lorg/openide/util/Mutex$Privileged;
 9 : ; < 
 !org/openide/util/Mutex$Privileged enterReadAccess
  > ? @ initCollection ()Ljava/util/Collection; B C D E 
 java/util/Collection clear B G H I iterator ()Ljava/util/Iterator; K L M N O java/util/Iterator hasNext ()Z K Q R 3 next T org/openide/nodes/Node
 S V W X 	cloneNode ()Lorg/openide/nodes/Node; B Z [ \ add (Ljava/lang/Object;)Z
 9 ^ _ 
 exitReadAccess a $java/lang/CloneNotSupportedException c java/lang/InternalError
 b  f java/util/ArrayList
 e 
  i j O isInitialized
  l m n entrySupport "()Lorg/openide/nodes/EntrySupport;
 + p q r refreshEntry %(Lorg/openide/nodes/Children$Entry;)V
 + t u v getNodes (Z)[Lorg/openide/nodes/Node;
 S x y z assignTo  (Lorg/openide/nodes/Children;I)V
  | } 
 checkSupport	   � � MUTEX Lorg/openide/util/Mutex; � "org/openide/nodes/Children$Array$1
 � � 	 � %(Lorg/openide/nodes/Children$Array;)V
 � � � � � org/openide/util/Mutex postWriteRequest (Ljava/lang/Runnable;)V � #org/openide/nodes/Children$Array$AE
 � �
  � � @ getCollection
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; B � � � addAll (Ljava/util/Collection;)Z
  � � 
 refresh B � � � size ()I B � � � 	removeAll � java/lang/Object
 �  � java/lang/Cloneable 	Signature 0Ljava/util/Collection<Lorg/openide/nodes/Node;>; (Ljava/util/Collection;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/nodes/Children$Array; c LocalVariableTypeTable MethodParameters 3(Ljava/util/Collection<Lorg/openide/nodes/Node;>;)V lazy StackMapTable postInitializeEntrySupport #(Lorg/openide/nodes/EntrySupport;)V es  Lorg/openide/nodes/EntrySupport; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; n Lorg/openide/nodes/Node; ar e &Ljava/lang/CloneNotSupportedException; � java/lang/Throwable 2()Ljava/util/Collection<Lorg/openide/nodes/Node;>; refreshImpl ([Lorg/openide/nodes/Node;)Z arr [Lorg/openide/nodes/Node; remove i I 
collection same � 
access$100 <clinit> 
SourceFile Children.java InnerClasses Array �  org/openide/nodes/Children$Entry Entry 
Privileged AE !    �            �    �        	 �  �   X     
*� *+� �    �      � � 	� �       
 � �     
 �   �       
 � �  �    �   �    �  	 
  �   4     *� �    �   
   � � �        � �     	   �   e     *� � **� � �    �      � � 	� � �        � �      �    �    �      �    �     � �  �   �     2*� � !*� !� **� � +*� !� $� *� *� !� *� �    �      � � � � %� ,� 1� �       2 � �     2 � �  �     �    �   �     �    2 3  �  1     s*� 0� L� 4� 8*� � B++� =� +� � A *� � F M,� J � ,� P � SN+� -� U� Y W��߲ 4� ]� :� 4� ]�+�L� bY� d�   T ]   ] _ ]     i j `  �   >   � � � � � &� C� Q� T� Z� ]� e� h� j� k� �   *  C  � �   b � �  k  � �    s � �   �     � 0  K� #H �
�     ` �     �    ? @  �   2     � eY� g�    �      � �        � �   �    �  � 
  �   �     L*� h� *� k*� !� o*� k� sW� 0*� � )*� � F L+� J � +� P � SM,*� w���    �   "   � � � � %� B� H� K� �     B  � �    L � �   �    �  K�   � 
  �   ^     *� {*� � �� ~� �Y*� �� ��    �      � � � � � �        � �   �      #   �   /     *� �    �      � �        � �        �   3     	� �Y*� ��    �       �       	 � �    � @  �   �     $� YL�*� � **� =� +ç M+�,�*� �             �           �       $ � �   �    �  �D ��  �    �  [ �  �   �     *� YM�*� �+� �� � � ,ì,ç N,�-�*� ��             "     �          $ (  �       * � �     * � �  �    �  �D ��  �    �  �     �    � �  �  |  	   �� YM�*� �N6-� � +�� <66-� F :� J � $� P � S:+�2� 	6� ���� -� A � -+� �� � � ,ì,ç 
:,��*� ��   p v   q s v   v z v    �   J   ) * , - . / 0 =1 I2 L3 O5 R7 W8 `: m< q? }A �C �   >  =  � �   3 � �   f �    c �      � � �     � � �  �      f � �  �   ) � '   � � B K  '� � D ��  �    �  �     �   � 3  �         � �    �      s  � 
  �   #      � �Y� �� �    �      	  �    � �   *    � 	 �  � 9 � �  �       �  � 