����   4
      java/lang/Object <init> ()V  org/openide/util/ChangeSupport
  
   (Ljava/lang/Object;)V	      /org/openide/actions/PasteAction$ActSubMenuModel cs  Lorg/openide/util/ChangeSupport;
     attachListenerToChangesInMap (Lorg/openide/util/Lookup;)V	     result  Lorg/openide/util/Lookup$Result;
       org/openide/windows/TopComponent getRegistry -()Lorg/openide/windows/TopComponent$Registry; ! " # $ % )org/openide/windows/TopComponent$Registry getActivated $()Lorg/openide/windows/TopComponent;
  ' ( ) getActionMap ()Ljavax/swing/ActionMap;
 + , - . / org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; 1 2 3 4 5 java/util/Collection iterator ()Ljava/util/Iterator; 7 8 9 : ; java/util/Iterator hasNext ()Z 7 = > ? next ()Ljava/lang/Object; A javax/swing/ActionMap
 C D E F G org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; ! I J K addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 M N O P Q org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; S org/openide/util/LookupListener
 C U V W create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;	  Y Z [ 
weakLookup !Lorg/openide/util/LookupListener;
 + ] ^ _ addLookupListener $(Lorg/openide/util/LookupListener;)V
  a b c checkStateChanged (Z)V
  e f ) map
 h i j k l org/openide/actions/PasteAction 
access$000 -(Ljavax/swing/ActionMap;)Ljavax/swing/Action;
 n o p q r "org/openide/util/SharedClassObject 
findObject 7(Ljava/lang/Class;)Lorg/openide/util/SharedClassObject;
 h t u v getPasteTypes ,()[Lorg/openide/util/datatransfer/PasteType; x 	delegates z { | } ~ javax/swing/Action getValue &(Ljava/lang/String;)Ljava/lang/Object; � [Ljava/lang/Object;
  � � � getPasteTypesOrActions *([Ljavax/swing/Action;)[Ljava/lang/Object; z � � ; 	isEnabled
  � � � isEnabledImpl ([Ljava/lang/Object;)Z � 'org/openide/util/datatransfer/PasteType
 � � � � getName ()Ljava/lang/String; � Name � java/lang/String
 � � � � 
getHelpCtx ()Lorg/openide/util/HelpCtx; � helpID � org/openide/util/HelpCtx
 � �  � (Ljava/lang/String;)V
  � � � performActionAt  (ILjava/awt/event/ActionEvent;)V � (org/openide/actions/PasteAction$ActionPT
 � � � � � java/awt/event/ActionEvent getActionCommand
 � �  � >(Lorg/openide/util/datatransfer/PasteType;Ljava/lang/String;)V
 � �  � ((Ljava/lang/Object;ILjava/lang/String;)V z � � � actionPerformed (Ljava/awt/event/ActionEvent;)V
  � � � addChangeListener %(Ljavax/swing/event/ChangeListener;)V
  � � � removeChangeListener	  � � � pasteTypeWeakL #Ljava/beans/PropertyChangeListener; z � � K removePropertyChangeListener z I	  � � � actionWeakL	  � � � enabled Z
  � �  
fireChange � $org/openide/awt/Actions$SubMenuModel � !java/beans/PropertyChangeListener 	Signature 9Lorg/openide/util/Lookup$Result<Ljavax/swing/ActionMap;>; Code LineNumberTable LocalVariableTable this 1Lorg/openide/actions/PasteAction$ActSubMenuModel; lookup Lorg/openide/util/Lookup; MethodParameters tc "Lorg/openide/windows/TopComponent; am Ljavax/swing/ActionMap; StackMapTable a !Lorg/openide/actions/PasteAction; arr actionToWorkWith [Ljavax/swing/Action; x Ljavax/swing/Action; obj Ljava/lang/Object; pasteTypesOrActions getCount ()I getLabel (I)Ljava/lang/String; index I (I)Lorg/openide/util/HelpCtx; getMenuShortcut (I)Ljava/awt/MenuShortcut; (I)V t )Lorg/openide/util/datatransfer/PasteType; ev Ljava/awt/event/ActionEvent; action � listener "Ljavax/swing/event/ChangeListener; fire listen en #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; resultChanged !(Lorg/openide/util/LookupEvent;)V Lorg/openide/util/LookupEvent; 
SourceFile PasteAction.java InnerClasses ActSubMenuModel Result Registry ActionPT org/openide/awt/Actions SubMenuModel      � R �           �    �  � �    � �    � �    Z [        �   V     *� *� Y*� 	� *+� �    �      L : M N �        � �      � �  �    �    f )  �   �     @*� � � �   L+� +� &�� %*� � *� 0 L+� 6 � +� < � @M,��    �   "   T U W X Z [ <\ >` �       	 � �  <  � �    @ � �   �    �  7�      �   �     B+� � *� � B� H � )*+@� L� *R**� � T� R� X*� *� X� \*� `�    �      j k m  n 1o <r As �       B � �     B � �  �    % �    �    � �  �       ^*� d� gM,� /h� m� hN+� +-S-� � -� s:� �� �+� +,S,w� y N-� � -� �� Y,S�    �   >   � � � � � � +� 0� 3� 8� <� @� I� P� U� �   >   # � �  +  � �    ^ � �     ^ � �   V � �  I  � �  �     �  z hC � 	 � �   �    �    � �  �   �     0+� 	*� �L+�� +2� z� +2� z� � �+�� � �    �      � � 
� � %� �       0 � �     0 � �  �    
@ �    �    � ;  �   0     *� ��    �      � �        � �    � �  �   1     *� ���    �      � �        � �    � �  �   �     2*� �M,�� �,2� �� ,2� �� ��,2� z�� y � ��    �      � � � � � !� �        2 � �     2 � �   , � �  �   	 �   �    �    � �  �   �     D*� �M,�� �,2� �� ,2� �� ��,2� z�� y N-� �� � �Y-� �� ���    �   & 	  � � � � � !� /� 6� B� �   *  /  � �    D � �     D � �   > � �  �    �  �    �    �    � �  �   6     �    �      � �        � �      � �  �    �    � �  �   ?     *� ��    �   
   � � �        � �      � �  �    �    � �  �  B     ]� zN*-� �:�� �2� �� #2� �:� �Y,� � ,� �� �W�2� z:� �Y��� �� � �    �   .   � � � � � � '� =� >� G� \� �   H  '  � �  G  � �    ] � �     ] � �    ] � �   X � �   Q � �  �   Q �  � �     � �  �  ' ' ��    � �  �  ' ' � ��  �   	 �   �   ! � �  �   A     	*� +� ��    �   
   � � �       	 � �     	 � �  �    �   ! � �  �   A     	*� +� ��    �   
     �       	 � �     	 � �  �    �    b c  �  V     �� zM*,� �N:-�� 4-2� z� +-2� z:*� �� � **� B� �*� �� � ,2� &,2*� Ź � **,2� B� �,2*� Ź � *-� �6*� Ƞ �*� �� �*� � ̱    �   R        % 0 : E M Y d p  w" �# �& �) �* �- �. �   >    � � �     � � �   � � �   � � �   � � �  w   �  �    � E �  z*� 
 �    �    F  �   >     *� `�    �   
   1 2 �        � �       �        �   >     *� `�    �   
   5 6 �        � �      �  �    �      	   *   h
 
 + M	 ! 	 � h  �	