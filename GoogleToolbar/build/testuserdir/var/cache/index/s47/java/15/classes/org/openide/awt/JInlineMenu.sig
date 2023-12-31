����   4 k
      javax/swing/JMenuItem <init> ()V  javax/swing/JComponent	 
     org/openide/awt/JInlineMenu items [Ljavax/swing/JComponent;
 
    
setEnabled (Z)V
 
    
setVisible	 
    upToDate Z  java/awt/Insets
     (IIII)V   javax/swing/JSeparator
  
 
 # $  
alignItems
 
 & ' ( getIcon ()Ljavax/swing/Icon;
  &	 
 + , - 
BLANK_ICON Ljavax/swing/Icon;
  / 0 1 setIcon (Ljavax/swing/Icon;)V 3 'org/openide/resources/actions/empty.gif
 5 6 7 8 9 org/openide/util/ImageUtilities loadImageIcon ,(Ljava/lang/String;Z)Ljavax/swing/ImageIcon; ; "org/openide/awt/DynamicMenuContent serialVersionUID J ConstantValue��J��� 
addedItems Ljava/util/List; Code LineNumberTable LocalVariableTable this Lorg/openide/awt/JInlineMenu; 	getInsets ()Ljava/awt/Insets; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setMenuItems ([Ljavax/swing/JMenuItem;)V i I newItems [Ljavax/swing/JMenuItem; local StackMapTable  Q MethodParameters shouldAlign curItem Ljavax/swing/JMenuItem; 	findIndex ((Ljava/lang/Object;[Ljava/lang/Object;)I of Ljava/lang/Object; arr [Ljava/lang/Object; 
menuLength synchMenuPresenters 4([Ljavax/swing/JComponent;)[Ljavax/swing/JComponent; getMenuPresenters ()[Ljavax/swing/JComponent; <clinit> 
SourceFile JInlineMenu.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; ! 
   :   < =  >    ?  , -               A B        C   Z     *� *� � 	*� *� *� �    D       G  <  H  I  J  K E        F G    H I  C   6     � Y� �    D       Q E        F G   J     K    L M  C   �     9+�� M>+�� ,+2� 	+2� 
� Y� !S����*,� 	*� *� "�    D   "    `  b  c $ b * f / g 4 i 8 k E   *   " N O    9 F G     9 P Q   3 R   S   9 �  T�   
 U T  T�   
 U T  T �  V    P   $   C  5     *� %� � <� 4=*� 	�� )*� 	2� � *� 	2� � )� <� 	����� �M>*� 	�� -*� 	2� � *� 	2� M,� )� 
,� *� .���б    D   J    t  v  w  x ( y 7 z 9 | < w B � F � G � I � T � ` � j � q � x � ~ � E   4   / N O  K 3 N O     F G    r W   I 6 X Y  S    	@� (� �  ,�  
 Z [  C   �     +�=>� *+2� ������    D       �  � 
 �  �  �  � E   *    N O     \ ]      ^ _    ` O  S    � �  V   	 \   ^    a b  C   9     *� 	�    D       � E        F G         V        c d  C   /     *� 	�    D       � E        F G    e   C   "      
2� 4� *�    D       3  f    g h     i     j  