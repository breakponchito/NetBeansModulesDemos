����   4 8
      "org/openide/explorer/view/ListView <init> ()V  )org/openide/explorer/view/ListView$NbList
  
   '(Lorg/openide/explorer/view/ListView;)V
      javax/swing/JList 	setOpaque (Z)V  #org/openide/explorer/view/IconPanel
  
     setCellRenderer !(Ljavax/swing/ListCellRenderer;)V
     setLayoutOrientation (I)V
     setVisibleRowCount ! "org/openide/explorer/view/IconView # java/io/Externalizable serialVersionUID J ConstantValue�LA��f�� Code LineNumberTable LocalVariableTable this $Lorg/openide/explorer/view/IconView; 
createList ()Ljavax/swing/JList; tmp Ljavax/swing/JList; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile IconView.java InnerClasses NbList !     "   $ %  &    '      )   3     *� �    *   
    G  H +        , -    . /  )   m     %� Y*� 	L+� +� Y� � +� +� +�    *       N 	 O  P  Q  R # S +       % , -   	  0 1  2     3    4    5 6   
    7 