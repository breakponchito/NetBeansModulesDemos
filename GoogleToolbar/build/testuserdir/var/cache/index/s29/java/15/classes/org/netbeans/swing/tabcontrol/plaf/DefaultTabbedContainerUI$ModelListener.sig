����   4	      Iorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$ModelListener this$0 =Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI;
  	 
   java/lang/Object <init> ()V  8org/netbeans/swing/tabcontrol/event/ComplexListDataEvent
     	getIndex0 ()I
     isUserObjectChanged ()Z	      ;org/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI contentDisplayer Ljavax/swing/JComponent;
     ! " javax/swing/JComponent getComponent (I)Ljava/awt/Component;	  $ % & tabDisplayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
 ( ) * + , *org/netbeans/swing/tabcontrol/TabDisplayer getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel; . / 0 1 2 *org/netbeans/swing/tabcontrol/TabDataModel getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;
  4 5 6 toComp =(Lorg/netbeans/swing/tabcontrol/TabData;)Ljava/awt/Component;
  8 9 : remove (Ljava/awt/Component;)V
  < = > access$1700 n(Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI;)Lorg/netbeans/swing/tabcontrol/TabbedContainer;
 @ A B C  -org/netbeans/swing/tabcontrol/TabbedContainer getContentPolicy
  E F > access$1800
 @ H I J getSelectionModel $()Ljavax/swing/SingleSelectionModel; L M N O   javax/swing/SingleSelectionModel getSelectedIndex
  Q R S add +(Ljava/awt/Component;I)Ljava/awt/Component;
  U V  isTextChanged
  X Y Z maybeMakeSelectedTabVisible =(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent;)V
  \ ] > access$1900
 @ _ `  	isShowing
  b c > access$2000
 @ e f  getWidth
 ( h i  getType
 ( H
  l m  	getIndex1
 ( o p q makeTabVisible (I)V
  s t > access$2100
 v  w javax/swing/event/ListDataEvent
 v l
  z { > access$2200
 @ ) ~  
  � R � )(Ljava/awt/Component;Ljava/lang/Object;)V
  � � � getAffectedItems *()[Lorg/netbeans/swing/tabcontrol/TabData;
  � � > access$2300
  � � � 
getIndices ()[I
  � � > access$2400 � <org/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent
 � � � � getDiff 1()Lorg/netbeans/swing/tabcontrol/event/ArrayDiff;
 � � � � � -org/netbeans/swing/tabcontrol/event/ArrayDiff getDeletedIndices ()Ljava/util/Set;
 � � � � getAddedIndices
 � � � � 
getOldData
 � � � � 
getNewData � java/util/HashSet
 � 	
  � � > access$2500 � � � R � java/util/Set (Ljava/lang/Object;)Z
  � � � getTreeLock ()Ljava/lang/Object; � � �  isEmpty � � � � iterator ()Ljava/util/Iterator; � � � �  java/util/Iterator hasNext � � � � next � java/lang/Integer
 � � �  intValue � � � � contains
  � � > access$2600
  � � � isAncestorOf (Ljava/awt/Component;)Z
  � �  
revalidate
  � �  repaint � ;org/netbeans/swing/tabcontrol/event/ComplexListDataListener @(Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI;)V Code LineNumberTable LocalVariableTable this KLorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$ModelListener; MethodParameters contentsChanged $(Ljavax/swing/event/ListDataEvent;)V comp Ljava/awt/Component; nue Z clde :Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent; index I e !Ljavax/swing/event/ListDataEvent; StackMapTable � java/awt/Component idx intervalAdded i curC intervalRemoved curComp removedTabs ([Lorg/netbeans/swing/tabcontrol/TabData; � indicesAdded indices [I � indicesRemoved indicesChanged Ljava/lang/Integer; del 'Lorg/netbeans/swing/tabcontrol/TabData; Ljava/util/Iterator; dif /Lorg/netbeans/swing/tabcontrol/event/ArrayDiff; deleted Ljava/util/Set; added old 
components changed LocalVariableTypeTable %Ljava/util/Set<Ljava/awt/Component;>; java/lang/Throwable 
SourceFile DefaultTabbedContainerUI.java InnerClasses ModelListener !    �         �  �   B     
*+� *� �    �   
   6 	7 �       
 � �     
    �    �  � �  �  ]     �+� � �+� M,� >,� � u� p*� � � :*� *� � #� '� - � 3:*� � � 7*� � ;� ?� *� � D� G� K � � 6� *� � � PW,� T� *,� W�    �   >   ? @ A B C *E CF OH SI bL wN |O �R �S �V �   H  * ` � �  C G � �  w  R �   � � �   � � �    � � �     � � �  �   " � p   v  � �  @� �  �    �    Y Z  �   �     Z*� � [� ^� *� � a� d
� �*� � #� g� 1*� � #� j� K =+� +� k� +� � *� � #� n�    �   "   ` c e +f ;i Gj Nk Yn �      ;  � �    Z � �     Z � �  �     ; �    �    � �  �   �     I*� � r� ?� =M+� u>+� x� .*� *� � y� |� - � 3M*� � ,}� ���б    �      r s t u 5v Bt Hy �   *   3 � �   8 � �    I � �     I � �  �    �  �� 2 �    �    � �  �   �     4+� M,� �N6-�� "*� -2� 3:*� � � 7���ݱ    �      } ~ 
� � !� -� 3� �   >  !  � �   & � �    4 � �     4 � �   / � �  
 * � �  �    �    v  �   � % �    �    � Z  �   �     NM*� � �� ?� @+� �N6-�� 1*� *� � �� |-.� - � 3M*� � ,}� ���α    �   "   � � � � � :� G� M� �   4   5 � �   8 � �    N � �     N � �   L � �  �    �  � �� 4 �    �    � Z  �   �     4+� �M+� �N6,�� "*� -2� 3:*� � � 7���ݱ    �      � � 
� � !� -� 3� �   >  !  � �   & � �    4 � �     4 � �   / � �  
 * � �  �    �     � �   � % �    �    � Z  �  ?    j+� ��e+� �� �M,� �N,� �:,� �:,� �:� �Y� �:*� � �� ?� (6�� *� 2� 3� � W����6*� � � �Y:	�-� � � W-� � :

� � � E
� � � �:� �2:*� � 3� � � *� � *� � 3� 76���*� � ˶ ?� g� � � ]� � :

� � � J
� � � �:� �2:*� � *� � 3� Κ *� � *� � 3}� 6���	ç :	��� *� � � �*� � � ձ  sEH  HMH    �   � '  � � � � �  � &� /� =� H� \� b� e� s� |� �� �� �� �� �� �� �� �� �� �� �� �����!�'�<�?�B�P�U�_�i� �   �  @ " � �  � 3 � �  � )   � L � 
 8 � �  . R  � Q � 
 Z  U  O   I �  &C � �  /:	  e
 �   j � �    j � �      /:	  �   U � @ 	   � � � � � �  � !� !  �� H� �   �� M� E� �       �    �         
    