����   4S
      java/lang/Object <init> ()V  javax/swing/JButton
    java/awt/Dimension
 
    (II)V
     setPreferredSize (Ljava/awt/Dimension;)V
     setContentAreaFilled (Z)V
     setFocusable
      javax/swing/BorderFactory createEmptyBorder ()Ljavax/swing/border/Border;
  ! " # 	setBorder (Ljavax/swing/border/Border;)V
  % &  setBorderPainted
  ( )  setRolloverEnabled
 + , - . / "org/openide/awt/CloseButtonFactory getCloseTabImage ()Ljavax/swing/Icon;
  1 2 3 setIcon (Ljavax/swing/Icon;)V
 + 5 6 / getCloseTabRolloverImage
  8 9 3 setRolloverIcon
 + ; < / getCloseTabPressedImage
  > ? 3 setPressedIcon
 + A B / getBigCloseTabImage
 + D E / getBigCloseTabRolloverImage
 + G H / getBigCloseTabPressedImage
 + J K L isWindowsLaF ()Z
 + N O L isWindowsVista
 + Q R L 
isWindows7
 + T U L isWindowsXPLaF
 + W X L 
isWindows8
 + Z [ L isWindows10
 + ] ^ L isWindows11 ` os.name
 b c d e f java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String; h Vista
 j k l m n java/lang/String indexOf (Ljava/lang/String;)I p Windows NT (unknown)
 j r s t equals (Ljava/lang/Object;)Z v 6.0 x 
os.version z 
Windows 10 | 10.0 ~ 
Windows 11 � 	Windows 8 � 6.2 � 	Windows 7 � 6.1
 � � � � � java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit; � win.xpstyle.themeActive
 � � � � getDesktopProperty &(Ljava/lang/String;)Ljava/lang/Object; � java/lang/Boolean
 � � � L booleanValue
 � � � � � javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
 � � � � � javax/swing/LookAndFeel getID ()Ljava/lang/String; � Windows
 j � � � endsWith (Ljava/lang/String;)Z � Aqua � GTK	 + � � � closeTabImage Ljavax/swing/Icon; � nb.close.tab.icon.enabled.icon
 � � � � getIcon &(Ljava/lang/Object;)Ljavax/swing/Icon; � nb.close.tab.icon.enabled.name
 � � � � 	getString &(Ljava/lang/Object;)Ljava/lang/String;
 � � � � � org/openide/util/ImageUtilities loadImageIcon ,(Ljava/lang/String;Z)Ljavax/swing/ImageIcon;
 + � � L isWindows8OrAboveLaF	 � � � � � )org/openide/awt/Windows8VectorCloseButton DEFAULT
 + � � L isWindowsVistaLaF � 1org/openide/awt/resources/vista_close_enabled.png � .org/openide/awt/resources/xp_close_enabled.png � /org/openide/awt/resources/win_close_enabled.png
 + � � L 	isAquaLaF	 � � � %org/openide/awt/AquaVectorCloseButton
 + � � L isGTKLaF � /org/openide/awt/resources/gtk_close_enabled.png � 1org/openide/awt/resources/metal_close_enabled.png	 + � � � closeTabPressedImage � nb.close.tab.icon.pressed.icon � nb.close.tab.icon.pressed.name	 � � � � PRESSED � 1org/openide/awt/resources/vista_close_pressed.png � .org/openide/awt/resources/xp_close_pressed.png � /org/openide/awt/resources/win_close_pressed.png	 � � � /org/openide/awt/resources/gtk_close_pressed.png � 1org/openide/awt/resources/metal_close_pressed.png	 + � � � closeTabMouseOverImage � nb.close.tab.icon.rollover.icon � nb.close.tab.icon.rollover.name � 2org/openide/awt/resources/vista_close_rollover.png /org/openide/awt/resources/xp_close_rollover.png 0org/openide/awt/resources/win_close_rollover.png	 � � ROLLOVER 0org/openide/awt/resources/gtk_close_rollover.png
 2org/openide/awt/resources/metal_close_rollover.png	 + � bigCloseTabImage !nb.bigclose.tab.icon.enabled.icon !nb.bigclose.tab.icon.enabled.name 4org/openide/awt/resources/vista_bigclose_enabled.png 1org/openide/awt/resources/xp_bigclose_enabled.png 2org/openide/awt/resources/win_bigclose_enabled.png 2org/openide/awt/resources/gtk_bigclose_enabled.png 4org/openide/awt/resources/metal_bigclose_enabled.png	 + � bigCloseTabPressedImage  !nb.bigclose.tab.icon.pressed.icon" !nb.bigclose.tab.icon.pressed.name$ 4org/openide/awt/resources/vista_bigclose_pressed.png& 1org/openide/awt/resources/xp_bigclose_pressed.png( 2org/openide/awt/resources/win_bigclose_pressed.png* 2org/openide/awt/resources/gtk_bigclose_pressed.png, 4org/openide/awt/resources/metal_bigclose_pressed.png	 +./ � bigCloseTabMouseOverImage1 "nb.bigclose.tab.icon.rollover.icon3 "nb.bigclose.tab.icon.rollover.name5 5org/openide/awt/resources/vista_bigclose_rollover.png7 2org/openide/awt/resources/xp_bigclose_rollover.png9 3org/openide/awt/resources/win_bigclose_rollover.png; 3org/openide/awt/resources/gtk_bigclose_rollover.png= 5org/openide/awt/resources/metal_bigclose_rollover.png Code LineNumberTable LocalVariableTable this $Lorg/openide/awt/CloseButtonFactory; createCloseButton ()Ljavax/swing/JButton; closeButton Ljavax/swing/JButton; size I createBigCloseButton StackMapTable osName Ljava/lang/String; isXP Ljava/lang/Boolean; lfID path 
SourceFile CloseButtonFactory.java 1 +     
 � �   
 � �   
 � �   
 �   
 �   
/ �       >   3     *� �   ?   
    -  .@       AB   	CD >   �     J� Y� 	K<*� 
Y� � *� *� *� �  *� $*� '*� *� 0*� 4� 7*� :� =*�   ?   2    6  7  8  9  : " ; ) < . = 3 > : ? A @ H A@      BEF    ?GH  	ID >   �     J� Y� 	K<*� 
Y� � *� *� *� �  *� $*� '*� @� 0*� C� 7*� F� =*�   ?   2    J  K  L  M  N " O ) P . Q 3 R : S A T H U@      BEF    ?GH  
 � L >   B      � I� � M� 	� P� � S� � �   ?       YJ    	@ 
 � L >   H      $� I� � V� � Y� 	� \� � S� � �   ?       ]J    	@ 
 O L >   r     +_� aK*g� i� *o� q� uw� a� q� � �   ?       a  b  c * b@      %KL  J    � % j@ 
 [ L >   r     +_� aK*y� i� *o� q� {w� a� q� � �   ?       g  h  i * h@      %KL  J    � % j@ 
 ^ L >   S     _� aK*}� i� � �   ?   
    m  n@      KL  J   
 �  j@ 
 X L >   r     +_� aK*� i� *o� q� �w� a� q� � �   ?       r  s  t * s@      %KL  J    � % j@ 
 R L >   r     +_� aK*�� i� *o� q� �w� a� q� � �   ?       x  y  z * y@      %KL  J    � % j@ 
 U L >   i     &� ��� �� �K� I� *� � *� �� � �   ?       ~    �@      MN  J    �  �
@ 
 K L >   <     � �� �K*�� ��   ?   
    �  �@      OL   
 � L >   $      �� �� �� q�   ?       � 
 � L >   $      �� �� �� q�   ?       � 
 . / >  .     �� �� �� �� �� �� �� �K*� *� �� �� �� r� ę � ǳ �� c� ̙ �� �� �� Q� S� �� �� �� ?� I� �� �� �� -� ՙ � س �� � ۙ �� �� �� �� �� �� ��   ?   V    �  �  �  �  � ! � ) � 0 � 6 � ? � E � Q � W � c � i � u � { � � � � � � � � �@      PL  J    	 
 < / >  .     �� � � �� �� � � �K*� *� �� �� � r� ę � � � c� ̙ �� �� � Q� S� �� �� � ?� I� �� �� � -� ՙ � � � � ۙ �� �� � �� �� � �   ?   V    �  �  �  �  � ! � ) � 0 � 6 � ? � E � Q � W � c � i � u � { � � � � � � � � �@      PL  J    	 
 6 / >  2     �� �� �� �� �� �� �� �K*� *� �� �� �� v� ę � � �� g� ̙ �� �� �� U� S�  � �� �� B� I� � �� �� /� ՙ �� ��  � ۙ � �� �� 	� �� �� ��   ?   V    �  �  �  �  � ! � ) � 0 � 6 � ? � E � Q � W � d � j � w � } � � � � � � � � �@      PL  J    		 
 B / >  5     ��� � ���� � �K*� *� ���� w� ę � ǳ� h� ̙ � ��� U� S� � ��� B� I� � ��� /� ՙ � س�  � ۙ � ��� � ����   ?   V    �  �  �  �  � # � + � 2 � 8 � A � G � T � Z � g � m � z � � � �  � � �@      PL  J    		 
 H / >  5     ��� � ���� !� �K*� *� ���� w� ę � �� h� ̙ #� ��� U� S� %� ��� B� I� '� ��� /� ՙ � ��  � ۙ )� ��� +� ����   ?   V   
     # + 2 8 A G T Z g m z � � � �! �$@      PL  J    		 
 E / >  5     ��-� 0� ��-�-� 2� �K*� *� ��-�-� w� ę � �-� h� ̙ 4� ��-� U� S� 6� ��-� B� I� 8� ��-� /� ՙ ��-�  � ۙ :� ��-� <� ��-�-�   ?   V   ( ) + , - #. +1 22 83 A4 G5 T6 Z7 g8 m9 z: �; �< �= �? �B@      PL  J    		 Q   R