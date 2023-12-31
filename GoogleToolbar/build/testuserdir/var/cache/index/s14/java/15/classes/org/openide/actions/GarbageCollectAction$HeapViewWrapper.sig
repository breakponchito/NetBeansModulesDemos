����   4 `
      javax/swing/JComponent <init> ()V  org/openide/actions/HeapView
  
      8org/openide/actions/GarbageCollectAction$HeapViewWrapper add *(Ljava/awt/Component;)Ljava/awt/Component;
     	setLayout (Ljava/awt/LayoutManager;)V
     calcPreferredSize ()Ljava/awt/Dimension;
     	getParent ()Ljava/awt/Container;
      ! java/awt/Container 	getHeight ()I	 # $ % & ' java/awt/Dimension height I
  ) * + getHeapView  ()Lorg/openide/actions/HeapView;
  - .  heapViewPreferredSize	 # 0 1 ' width
  3 4 ! getWidth
  
 7 8 9 : ; (org/openide/actions/GarbageCollectAction 
access$000 ()Z
  = > ? 	setBounds (IIII)V
  A B C getComponent (I)Ljava/awt/Component; Code LineNumberTable LocalVariableTable this :Lorg/openide/actions/GarbageCollectAction$HeapViewWrapper; isOpaque #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getMinimumSize getPreferredSize getMaximumSize pref Ljava/awt/Dimension; parent Ljava/awt/Container; StackMapTable layout w h heapView Lorg/openide/actions/HeapView; Ljava/lang/SuppressWarnings; value deprecation 
SourceFile GarbageCollectAction.java InnerClasses HeapViewWrapper 0            D   L     *� *� Y� 	� 
W*� �    E       Z  [  \  ] F        G H    I ;  D   ,     �    E       a F        G H   J     K    L   D   /     *� �    E       f F        G H   J     K    M   D   /     *� �    E       k F        G H   J     K    N   D   ~     *� L*� M,� ,� � +,� � "+�    E       p  q 
 r  s  u F         G H     O P  
  Q R  S    �  #  J     K       D   _     *� (� ,L+Y� "`� "+Y� /`� /+�    E       y  z  {  | F        G H     O P   T   D   �     .*� 2<*� 5=*� (N� 6� -� <� -dd� <�    E       �  � 
 �  �  �   � - � F   *    . G H    ) U '  
 $ V '    W X  S    �    J     Y  Z[ s [ K    * +  D   3     	*� @� �    E       � F       	 G H    \    ] ^   
   7 _ 