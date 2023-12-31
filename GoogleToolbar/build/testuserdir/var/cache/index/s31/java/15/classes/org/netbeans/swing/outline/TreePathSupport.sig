����   4 �
      java/lang/Object <init> ()V  java/util/ArrayList
  	      *org/netbeans/swing/outline/TreePathSupport 
eListeners Ljava/util/List;	     weListeners	     layout &Ljavax/swing/tree/AbstractLayoutCache;	     $assertionsDisabled Z
       javax/swing/SwingUtilities isEventDispatchThread ()Z " java/lang/AssertionError
 ! 
 % & ' ( ) $javax/swing/tree/AbstractLayoutCache 
isExpanded (Ljavax/swing/tree/TreePath;)Z
 + , - . / javax/swing/tree/TreePath getParentPath ()Ljavax/swing/tree/TreePath;
  1 2 3 
expandPath (Ljavax/swing/tree/TreePath;)V 5 $javax/swing/event/TreeExpansionEvent
 4 7  8 0(Ljava/lang/Object;Ljavax/swing/tree/TreePath;)V
  : ; < fireTreeWillExpand *(Ljavax/swing/event/TreeExpansionEvent;Z)V
 % > ? @ setExpandedState (Ljavax/swing/tree/TreePath;Z)V
  B C < fireTreeExpansion E $javax/swing/tree/ExpandVetoException
  G H I fireTreeExpansionVetoed O(Ljavax/swing/event/TreeExpansionEvent;Ljavax/swing/tree/ExpandVetoException;)V K L M N O java/util/List size ()I Q 'javax/swing/event/TreeExpansionListener K S T U toArray (([Ljava/lang/Object;)[Ljava/lang/Object; W *[Ljavax/swing/event/TreeExpansionListener; P Y Z [ treeExpanded )(Ljavax/swing/event/TreeExpansionEvent;)V P ] ^ [ treeCollapsed ` (javax/swing/event/TreeWillExpandListener b +[Ljavax/swing/event/TreeWillExpandListener; _ d e [ treeWillExpand _ g h [ treeWillCollapse j 4org/netbeans/swing/outline/ExtTreeWillExpandListener i l m I treeExpansionVetoed
 % o p   isRootVisible
  &
 % s t u getVisiblePathsFrom 4(Ljavax/swing/tree/TreePath;)Ljava/util/Enumeration; w x y z   java/util/Enumeration hasMoreElements w | } ~ nextElement ()Ljava/lang/Object;
 + � � ) isDescendant K � � � add (Ljava/lang/Object;)Z � [Ljavax/swing/tree/TreePath; K � � � remove
 � � � � /  javax/swing/event/TreeModelEvent getTreePath
 % � � � getModel ()Ljavax/swing/tree/TreeModel; � � � � ~ javax/swing/tree/TreeModel getRoot
 + �  � (Ljava/lang/Object;)V
  � � � getExpandedDescendants 9(Ljavax/swing/tree/TreePath;)[Ljavax/swing/tree/TreePath;
 % � � � treeStructureChanged %(Ljavax/swing/event/TreeModelEvent;)V
 � � � �   java/lang/Class desiredAssertionStatus 	Signature ;Ljava/util/List<Ljavax/swing/event/TreeExpansionListener;>; <Ljava/util/List<Ljavax/swing/event/TreeWillExpandListener;>; R(Lorg/netbeans/swing/outline/OutlineModel;Ljavax/swing/tree/AbstractLayoutCache;)V Code LineNumberTable LocalVariableTable this ,Lorg/netbeans/swing/outline/TreePathSupport; mdl )Lorg/netbeans/swing/outline/OutlineModel; MethodParameters clear eve &Ljavax/swing/tree/ExpandVetoException; path Ljavax/swing/tree/TreePath; 
parentPath e &Ljavax/swing/event/TreeExpansionEvent; StackMapTable collapsePath 
removePath i I expanded 	listeners � java/lang/Throwable 
Exceptions ex hasBeenExpanded nodeExpanded 	isVisible results tpe Ljava/util/Enumeration; parent result LocalVariableTypeTable -Ljava/util/List<Ljavax/swing/tree/TreePath;>; 4Ljava/util/Enumeration<Ljavax/swing/tree/TreePath;>; addTreeExpansionListener ,(Ljavax/swing/event/TreeExpansionListener;)V l )Ljavax/swing/event/TreeExpansionListener; removeTreeExpansionListener addTreeWillExpandListener -(Ljavax/swing/event/TreeWillExpandListener;)V *Ljavax/swing/event/TreeWillExpandListener; removeTreeWillExpandListener root Ljava/lang/Object; tp event "Ljavax/swing/event/TreeModelEvent; model Ljavax/swing/tree/TreeModel; expandedDescendants <clinit> 
SourceFile TreePathSupport.java 1          �    �     �    �             �  �   n      *� *� Y� 	� 
*� Y� 	� *,� �    �       @  ;  <  A  B �          � �       � �         �   	 �       �   �   +      �    �       H �        � �    2 3  �       Z� � � � � !Y� #�*� +� $� �+� *M,� *,� 0� 4Y*+� 6N*-� 9*� +� =*-� A� :*-� F�  8 M P D  �   :    Q  R  T   V % W ) X . Z 8 \ > ] G ^ M a P _ R ` Y b �   4  R  � �    Z � �     Z � �  % 5 � �  8 " � �  �   ! �  +� !   + + 4  D �    �    � 3  �   �     J� � � � � !Y� #�*� +� $� �� 4Y*+� 6M*,� 9*� +� =*,� A� 
N*,-� F�  * ? B D  �   .    k  l  n   p * r 0 s 9 t ? w B u C v I x �   *  C  � �    J � �     J � �  *   � �  �    � !   + 4  D �    �    � 3  �   5      �    �        �        � �      � �  �    �    C <  �  "     b*� 
� J >� P:*Y:�*� 
� R � V:ç :��6�� &� 2+� X � 2+� \ ���ر   ( +   + 0 +    �   .    � 
 �  �  � % � 3 � > � B � P � [ � a � �   >  6 + � �    b � �     b � �    b �   
 X N �   R � W  �   & � +   4 V   �� � 
�  �   	 �   �    ; <  �  "     b*� � J >� _:*Y:�*� � R � a:ç :��6�� &� 2+� c � 2+� f ���ر   ( +   + 0 +    �   .    � 
 �  �  � % � 3 � > � B � P � [ � a � �   >  6 + � �    b � �     b � �    b �   
 X N �   R � b  �   & � +   4 a   �� � 
�  �     D �   	 �   �    H I  �       _*� � J >� _:*Y:�*� � R � a:ç :��6�� #2� i� 2� i+,� k ���۱   ( +   + 0 +    �   * 
   � 
 �  �  � % � 3 � > � I � X � ^ � �   >  6 ( � �    _ � �     _ � �    _ � �  
 U N �   O � b  �   ' � +   4 D a   �� � !�  �   	 �   �    � )  �   m     )� � � � � !Y� #�+� *� +� $� � �    �   
    �  � �       ) � �     ) � �  �    @ �    �    ( )  �   �     M� � � � � !Y� #�+� �*� � n� +� *� �*� +� $=� �+� *N-� 	*-� q��    �   2    �  �  �  � + � - � 6 � : � < � A � E � K � �   *    M � �     M � �  6  �   A  � �  �    � �  + �    �    � )  �   z     +� +� *M,� 	*,� q���    �       �  � 	 �  �  �  � �      	  � �     � �      � �  �    �  +�  �    �    � �  �  �     �� � � � � !Y� #�� +M*+� q� m:*� +� r:� [� v � @� { � +N-+���*� -� $���+-� ���� � Y� 	:-� � W���� ,� R � �M,�    �   F    �  �  � ! � $ � . � 3 � = � H � R � Z � ` e n z  � �   >  H 2 � �  $ g �   . ] � �    � � �     � � �   t � �  �     $ g � �  . ] � �  �   M �    + �  K w  � :   + � + K w  �    + �  K w  �  �    �   ! � �  �   D     *� 
+� � W�    �   
     �        � �      � �  �    �   ! � �  �   D     *� 
+� � W�    �   
     �        � �      � �  �    �   ! � �  �   D     *� +� � W�    �   
   % & �        � �      � �  �    �   ! � �  �   D     *� +� � W�    �   
   - . �        � �      � �  �    �     � �  �  '  	   f+� �M*� � �N,� -� -� � :� � +Y� �M*,� �:*� +� �:�66� 2:*� � =����    �   2   9 : ; < = "> ,B 3D ;F UG _F eI �   H    � �  U 
 � �    f � �     f � �   a � �   Y � �  3 3 � �  �   ) � , + ��    � + � � �  �  �    �    �   �   4      � �� � � �    �       9 �    @  �    �