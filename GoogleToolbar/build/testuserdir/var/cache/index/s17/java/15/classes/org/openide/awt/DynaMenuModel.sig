����   4]
      java/lang/Object <init> ()V	  	 
   org/openide/awt/DynaMenuModel isWithIcons Z  java/util/HashMap
  	     actionToMenuMap Ljava/util/HashMap;      java/util/List iterator ()Ljava/util/Iterator;  java/util/ArrayList     size ()I
  !  " (I)V	  $ % & 	menuItems Ljava/util/List;
  ( )  clear + , - . / java/util/Iterator hasNext ()Z + 1 2 3 next ()Ljava/lang/Object; 5 javax/swing/Action 7 8 9 : ; java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; = "org/openide/filesystems/FileObject
 ? @ A B C "org/openide/awt/AcceleratorBinding setAccelerator ;(Ljavax/swing/Action;Lorg/openide/filesystems/FileObject;)V E 'org/openide/util/actions/Presenter$Menu D G H I getMenuPresenter ()Ljavax/swing/JMenuItem; K "org/openide/awt/DynamicMenuContent  M N O add (Ljava/lang/Object;)Z J Q R S getMenuPresenters ()[Ljavax/swing/JComponent;
  U V W convertArray 4([Ljavax/swing/JComponent;)[Ljavax/swing/JComponent;
  Y Z [ put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 ] ^ _ ` a java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; c javax/swing/JComponent
  e f g 	checkIcon (Ljava/lang/Object;Z)Z i javax/swing/JMenuItem k javax/swing/JSeparator m  org/openide/awt/Actions$MenuItem
 l o  p (Ljavax/swing/Action;Z)V
  r s t alignVertically "(Ljava/util/List;)Ljava/util/List;
 v w x y  javax/swing/JMenu 	removeAll
  { | } createSeparator ()Ljavax/swing/JSeparator;
 v  N � *(Ljava/awt/Component;)Ljava/awt/Component;
 b � � � 
setVisible (Z)V � /org/openide/awt/DynaMenuModel$InvisibleMenuItem
 h � � � getIcon ()Ljavax/swing/Icon;	  � � � 
BLANK_ICON Ljavax/swing/Icon; � � � � O javax/swing/Icon equals
  � � � entrySet ()Ljava/util/Set; �  � java/util/Set � java/util/Map$Entry � � � 3 getKey � � � 3 getValue � [Ljavax/swing/JComponent;
 v � � � getPopupMenu ()Ljavax/swing/JPopupMenu;
 � � � � � javax/swing/JPopupMenu getComponents ()[Ljava/awt/Component;
  � � � findFirstItemIndex 0(Ljavax/swing/JComponent;[Ljava/awt/Component;)I
  � � W unconvertArray J � � W synchMenuPresenters
  � � � compareEqualArrays 5([Ljavax/swing/JComponent;[Ljavax/swing/JComponent;)Z
 � � � � remove (Ljava/awt/Component;)V  � � O
 � � N � +(Ljava/awt/Component;I)Ljava/awt/Component;
 � � � � � java/util/Collections singletonList $(Ljava/lang/Object;)Ljava/util/List; � � � ; setValue
  � � � checkSeparators 0([Ljava/awt/Component;Ljavax/swing/JPopupMenu;)V
 � � � � / org/openide/util/Utilities 	isWindows
 � � �  
revalidate
 � � � � / java/awt/Component 	isVisible
 � � � "
 j �
 �  � Nb.MenuBar.VerticalAlign
 � � � � O javax/swing/UIManager 
getBoolean
 h � � � setIcon (Ljavax/swing/Icon;)V
 v 
 v � �  addSeparator
 � � � � getComponent (I)Ljava/awt/Component; � javax/swing/ImageIcon � org/openide/loaders/empty.gif
 � � � �  org/openide/util/ImageUtilities 	loadImage $(Ljava/lang/String;)Ljava/awt/Image;
 �  (Ljava/awt/Image;)V 	Signature *Ljava/util/List<Ljavax/swing/JComponent;>; RLjava/util/HashMap<Lorg/openide/awt/DynamicMenuContent;[Ljavax/swing/JComponent;>; Code LineNumberTable LocalVariableTable this Lorg/openide/awt/DynaMenuModel; loadSubmenu 6(Ljava/util/List;Ljavax/swing/JMenu;ZLjava/util/Map;)V file $Lorg/openide/filesystems/FileObject; comp Ljavax/swing/JComponent; mn $Lorg/openide/awt/DynamicMenuContent; itms itx Ljava/util/Iterator; a Ljavax/swing/Action; item "Lorg/openide/awt/Actions$MenuItem; obj Ljava/lang/Object; isSeparator iter 
cInstances m Ljavax/swing/JMenu; cookiesToFiles Ljava/util/Map; curIcon it curItem wasSeparator LocalVariableTypeTable .Ljava/util/Iterator<Ljavax/swing/JComponent;>; $Ljava/util/List<Ljava/lang/Object;>; GLjava/util/Map<Ljava/lang/Object;Lorg/openide/filesystems/FileObject;>; StackMapTable MethodParameters �(Ljava/util/List<Ljava/lang/Object;>;Ljavax/swing/JMenu;ZLjava/util/Map<Ljava/lang/Object;Lorg/openide/filesystems/FileObject;>;)V isWithIconsAlready checkSubmenu (Ljavax/swing/JMenu;)V i I one thisOneHasIcon pres old oldIndex menuones [Ljava/awt/Component; 	menuIndex newones entry Ljava/util/Map$Entry; menu oldisWithIcons changed hasAnyIcons TLjava/util/Map$Entry<Lorg/openide/awt/DynamicMenuContent;[Ljavax/swing/JComponent;>;: newOne Ljavax/swing/JSeparator; Ljava/awt/Component; parent Ljavax/swing/JPopupMenu; arr toRet first two result Ljavax/swing/JMenuItem; V(Ljava/util/List<Ljavax/swing/JComponent;>;)Ljava/util/List<Ljavax/swing/JComponent;>; <clinit> 
SourceFile DynaMenuModel.java InnerClassesV "org/openide/util/actions/Presenter MenuY org/openide/awt/Actions MenuItem InvisibleMenuItem Entry         � �    % &                        K     *� *� *� Y� � �          7  5 	 8  9	       
      j    6:+�  :*� Y+�  �  � #*� � '� * �v� 0 :� 4�  � 6 � <:		� � 4	� >� D� � D� F :� J� u� *� #� L W6� J:	*	� P � T:
*� 	
� XW
� \�  :� * ��f� 0 � b:*� #� L W***� � d� ���� h� 6� *� #� L W6***� � d� *� #� h� L W� |� j� *� #�  � � 6� ^� 4� V� *� #� L W6� 4:	� lY	� n:
**
*� � d� *� 
� bY
S� XW*� #
� L W���*� � ***� #� q� #� ,� u:6	*� #�  :

� * � F
� 0 � b:� � z:,� ~W� j6� 	� 	� �� �� 6	����      � >   =  >  ?  @  A & B 0 C 9 D A E O F T G ^ J f L r N z O  P � Q � S � T � U � V � W � X � Y � [ � \ � a � b � c d g h' i/ jE kM lR m] n` pg qs s� t� u� w� y� z� }� ~� �� �� �� �� �� �� �� �� � � � � � �	   �  O  	 �   � X 	 � K � 
 � 3 g 9 	s - 
 9g �   � M 
  
     &    !    �    "#   �   $ �  % � \& � Y'  	(     � M) 
  *   "+ ,   E � & � +� 7 � + J � +� 2@� ?�  b +� � � -         �  "     .  f g    �     -� �+� h� !+� h� �� � �+� h� �� � � ��          �  �  �  � ) � + �	        -
     -    -/  ,    $-   	  /   01   �    �*� =>*� � �� � :� * �� 0 � �:� � � J:� � � �:6+� �� �:	�� *2	� �� 6
**� �� � � T:*� �� �
� 	6
� 76�� ,2� +� �2� �*� #2� � W����6�� ]2:+� �
`� �W>*� #� L W*� d6� *� � *� Ʒ qW� *� � *� ����� � W���6+� �� �:6�� &2� *2� d6� � 	����+� �� �� *� � *� *� � ***� #� q� #� � ә 
+� �� ر      � .   �  �  � + � 7 � C � F � O � e � x � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �! �' �1 �4 �7 �@ �K �S �` �e �h �n �w �� �� �� �� �� �� �	   �  � 123  � M4  � '5   � b23  7 �6  C �7 �  F �83  O �9: 	 e �;3 
 x �< �  +=> C +23   �
    �?!  �@   �A  7 wB  @ n9: (     +=C ,   o �  +� L 
  v + � J �D  @� * �� *� � � J b� � � 	   v +  � � D$� -   ?    � �   �     g=>*�� _*2:� O� j6� 8� �6� � � #+� � z:� � � �+� �W� �� =�����      B    �  � 
 �  �  �  �   � ' � 5 � : � ? � M � U � ] � ` � f �	   R  ? EF  ' . �    E    Q&G   b23    g9:     gHI   e'  ,   p � � , D � � �   D � � �  D � � j  j�   D � � j  j� 
� 
� -   	9  H    V W    �     C+� +�� � bY� �Y� �S�+�� bM>+�� +2� ,� zS� 	,+2S����,�      & 	   � 	 �  �  � & � , � 5 ; � A	   *    !23    C
     CJ �   %K � ,    	�  �� -   J    � W    [     +�� +2� �� � b�+�          	 	       
     J � ,    -   J    � �    �     >,�� +,2� ������             	   *   23    
     L     %: ,   
 � � -   	L   %    � �    �     $+�,�� �>+�� +2,2� ������           	    "!	   *   23    $
     $4 �    $M � ,    	� � -   	4  M    s t   A     �� � +�� Y+�  �  MN+�  :� * � U� 0 � b:� h� 5� hN*� � -� -� �� -� �� � *� � -� -� �,� L W���,�      :   ) * 
+ , - 8. @/ F0 X1 b2 m3 r6 {7 ~8	   4  8 C    �
     � % &   hN &   f&O (       � %   hN ,    
�   h +� ? b� -    %     P 
 | }    J     � vY� �K*� �*� �� �� j�         E F G	      ?!   Q     (      � �Y�� ��� ��          1 R   ST   "  DUW	 lXZ 	 � [  � 7\	