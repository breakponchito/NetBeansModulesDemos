����   4 p
      java/lang/Object <init> ()V	  	 
   *org/openide/explorer/view/NodePopupFactory showQuickFilter Z
      org/openide/nodes/NodeOp findActions 0([Lorg/openide/nodes/Node;)[Ljavax/swing/Action;
      org/openide/util/Utilities actionsToPopup C([Ljavax/swing/Action;Ljava/awt/Component;)Ljavax/swing/JPopupMenu;   org/netbeans/swing/etable/ETable
     
getValueAt (II)Ljava/lang/Object;
    ! " transformValue &(Ljava/lang/Object;)Ljava/lang/Object; $ LBL_QuickFilter
 & ' ( ) * org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
  , - . getQuickFilterPopup >(ILjava/lang/Object;Ljava/lang/String;)Ljavax/swing/JMenuItem;
 0 1 2 3 4 javax/swing/JPopupMenu add 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
  6 7 8 getQuickFilterColumn ()I
  : ; < addNoFilterItem =(Lorg/netbeans/swing/etable/ETable;Ljavax/swing/JPopupMenu;)V > javax/swing/JMenu
 = @  A (Ljava/lang/String;)V
  C D E getQuickFilterFormatStrings ()[Ljava/lang/String;
  G H I getQuickFilterNoFilterItem +(Ljava/lang/String;)Ljavax/swing/JMenuItem;
 = 1 Code LineNumberTable LocalVariableTable this ,Lorg/openide/explorer/view/NodePopupFactory; createPopupMenu I(II[Lorg/openide/nodes/Node;Ljava/awt/Component;)Ljavax/swing/JPopupMenu; val Ljava/lang/Object; s Ljava/lang/String; et "Lorg/netbeans/swing/etable/ETable; row I column selectedNodes [Lorg/openide/nodes/Node; 	component Ljava/awt/Component; actions [Ljavax/swing/Action; res Ljavax/swing/JPopupMenu; StackMapTable ` MethodParameters menu Ljavax/swing/JMenu; noFilterItem Ljavax/swing/JMenuItem; popup setShowQuickFilter (Z)V show 
SourceFile NodePopupFactory.java !                K   <     
*� *� �    L       +  ( 	 , M       
 N O    P Q  K  :  
   o-� :� :*� � Y� � Q� M� :� 1� :� :#� %:		� +� /W� � 5� *� 9�    L   6    7  8  9  : " ; ) < - = 6 > ? ? H @ X A d B l F M   f 
 6 " R S  H  T U 	 ) C V W    o N O     o X Y    o Z Y    o [ \    o ] ^   i _ `   ` a b  c    � [ d 0 �  e    X   Z   [   ]     ; <  K   �     >*� � 9+� 5� 1#� %N� =Y-� ?:++� B2� F:� JW,� /W�    L       J  K  L ! M . N 6 O = Q M   >   & T U  !  f g  .  h i    > N O     > V W    > j b  c    = e   	 V   j    k l  K   >     *� �    L   
    W  X M        N O      m   e    m    n    o