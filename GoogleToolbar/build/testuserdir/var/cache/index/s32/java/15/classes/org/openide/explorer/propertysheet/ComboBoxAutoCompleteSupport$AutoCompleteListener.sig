����   4 �
      java/lang/Object <init> ()V	  	 
   Sorg/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport$AutoCompleteListener combo Ljavax/swing/JComboBox;
     matchSelection $(Ljavax/swing/event/DocumentEvent;)V
      >org/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport isIgnoreSelectionEvents (Ljavax/swing/JComboBox;)Z
     setIgnoreSelectionEvents (Ljavax/swing/JComboBox;Z)V
       javax/swing/JComboBox isDisplayable ()Z " # $ % & javax/swing/event/DocumentEvent getDocument ()Ljavax/swing/text/Document; ( ) * + , javax/swing/text/Document 	getLength ()I ( . / 0 getText (II)Ljava/lang/String; 2 %javax/swing/text/BadLocationException
  4 5 6 getSelectedItem ()Ljava/lang/Object;
  8 9 : toString ()Ljava/lang/String;
 < = > ? @ java/lang/String equals (Ljava/lang/Object;)Z
  B C   isPopupVisible
  E F  	showPopup
  H I J 
access$000 ,(Ljavax/swing/JComboBox;)Ljavax/swing/JList;
  L M N 	findMatch ,(Ljavax/swing/JComboBox;Ljava/lang/String;)I
 P Q R S T javax/swing/JList setSelectedIndex (I)V
 P V W X getCellBounds (II)Ljava/awt/Rectangle;
 P Z [ \ scrollRectToVisible (Ljava/awt/Rectangle;)V
 P ^ _  clearSelection a java/awt/Rectangle
 ` c  d (II)V f "javax/swing/event/DocumentListener (Ljavax/swing/JComboBox;)V Code LineNumberTable LocalVariableTable this ULorg/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport$AutoCompleteListener; MethodParameters insertUpdate e !Ljavax/swing/event/DocumentEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; removeUpdate changedUpdate 
editorText Ljava/lang/String; ex 'Ljavax/swing/text/BadLocationException; rect Ljava/awt/Rectangle; list Ljavax/swing/JList; 
matchIndex I StackMapTable � java/lang/Throwable 
SourceFile  ComboBoxAutoCompleteSupport.java InnerClasses AutoCompleteListener      e          g  h   F     
*� *+� �    i       J  K 	 L j       
 k l     
    m        n   h   >     *+� �    i   
    P  Q j        k l      o p  m    o   q     r    s   h   >     *+� �    i   
    U  V j        k l      o p  m    o   q     r    t   h   >     *+� �    i   
    Z  [ j        k l      o p  m    o   q     r       h  D     �*� � � �*� � *� � � *� � �+� ! +� ! � ' � - M� N*� � �*� � 3� *� � 3� 7,� ;� *� � �*� � A� 
*� � D*� � GN-� *� � �*� ,� K6� "-� O-� U:� 	-� Y� -� ]-� `Y� b� Y*� � � :*� � ��  & > A 1   �   & B �   K g �   p � �   � � �   � � �    i   � "   ] 
 ^  `  a  � % b & e > i A f B � J h K k g � o l p n z o � r � s � � � t � v � x � y � z � { � | � } � ~ �  � � � � � � � � � � j   R  >  u v  B 	 w x  �  y z  K � u v  � M { |  � 5 } ~    � k l     � o p     # Z 1� 	 <$�  P� *� J � m    o    �    � �   
    � 
