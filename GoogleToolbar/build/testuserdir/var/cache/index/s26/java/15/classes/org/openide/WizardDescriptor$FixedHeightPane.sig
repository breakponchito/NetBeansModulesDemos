����   4 �
      javax/swing/JTextPane <init> ()V
  	 
   ,org/openide/WizardDescriptor$FixedHeightPane setEditable (Z)V  javax/swing/JEditorPane  "JEditorPane.honorDisplayProperties	      java/lang/Boolean TRUE Ljava/lang/Boolean;
     putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V  #javax/swing/text/html/HTMLEditorKit
  
     ! getStyleSheet $()Ljavax/swing/text/html/StyleSheet;
 # $ % & '  javax/swing/text/html/StyleSheet getStyleSheets %()[Ljavax/swing/text/html/StyleSheet;
 #  * javax/swing/JList
 ) 
 ) - . / getFont ()Ljava/awt/Font;
 1 2 3 4 5 java/awt/Font getSize ()I 7 java/lang/StringBuffer 9 body { font-size: 
 6 ;  < (Ljava/lang/String;)V
 6 > ? @ append (I)Ljava/lang/StringBuffer; B ; font-family: 
 6 D ? E ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 1 G H I getName ()Ljava/lang/String; K ; }
 6 M N I toString
 # P Q < addRule
 # S T U addStyleSheet %(Ljavax/swing/text/html/StyleSheet;)V
  W X U setStyleSheet Z java/lang/RuntimeException \ org/openide/WizardDescriptor
 ^ G _ java/lang/Class
 a b c d e java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 g h i j k java/util/logging/Level INFO Ljava/util/logging/Level; m !Error while setting up text pane.
 a o p q log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V s javax/swing/JLabel
 r 
 r -
  w x y setFont (Ljava/awt/Font;)V
  { | } setEditorKit (Ljavax/swing/text/EditorKit;)V
   �  	setOpaque � Nimbus
 � � � � � javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
 � � � � I javax/swing/LookAndFeel getID
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � java/awt/Color
 � �  � (IIII)V
  � � � setBackground (Ljava/awt/Color;)V � .org/openide/WizardDescriptor$FixedHeightPane$1
 � �  � 1(Lorg/openide/WizardDescriptor$FixedHeightPane;)V
  � � � addHyperlinkListener ((Ljavax/swing/event/HyperlinkListener;)V � .org/openide/WizardDescriptor$FixedHeightPane$2
 � �
  � � � addMouseListener !(Ljava/awt/event/MouseListener;)V
  � � � getPreferredSize ()Ljava/awt/Dimension;	  � � � $assertionsDisabled Z � (org/netbeans/modules/dialogs/warning.gif
 � � � � � org/openide/util/ImageUtilities 	loadImage $(Ljava/lang/String;)Ljava/awt/Image;
 � � � � � java/awt/Image 	getHeight !(Ljava/awt/image/ImageObserver;)I � java/lang/AssertionError � Use only 16px icon.
 � �  � (Ljava/lang/Object;)V	 � � � � � java/awt/Dimension height I
 � � � � � java/lang/Math max (II)I
 ^ � � � desiredAssertionStatus ()Z ESTIMATED_HEIGHT ConstantValue    Code LineNumberTable LocalVariableTable ex Ljava/lang/RuntimeException; css2 "Ljavax/swing/text/html/StyleSheet; f Ljava/awt/Font; size this .Lorg/openide/WizardDescriptor$FixedHeightPane; htmlkit %Ljavax/swing/text/html/HTMLEditorKit; css StackMapTable preferredSize Ljava/awt/Dimension; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile WizardDescriptor.java InnerClasses FixedHeightPane 0       � �  �    � � �        �  �     �*� *� *� � � Y� L+� M,� "� i� #Y� (N� )Y� +� ,:� 06-� 6Y8� :� =A� C� F� CJ� C� L� O-,� R+-� V� :[� ]� `� fl� n� *� rY� t� u� v*+� z*� ~�� �� �� �� *� �Y� �� �*� �Y*� �� �*� �Y*� �� ��  A r u Y  �   j   m n 	o p y { &| .} :~ A� R� e� h� m� r� u� w� �� �� �� �� �� �� �� �� �� �   H  w  � �  . [ � �  : O � �  A H � �    � � �    � � �   � � �  �   " � u    # # 1  Y� &  � �  �   �     2*� �L� �� �� �� �� � �Yŷ ǿ++� ʸ е �+�    �      � � #� 0� �       2 � �    - � �  �    � # � �     �    �   �   4      [� ֚ � � ��    �      h �    @  �    � �      [ �  �       �      