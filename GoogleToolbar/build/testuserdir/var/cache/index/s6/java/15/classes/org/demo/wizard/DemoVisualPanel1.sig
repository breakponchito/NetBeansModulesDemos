����   4 �
       org/demo/wizard/DemoVisualPanel1 nameFieldActionPerformed (Ljava/awt/event/ActionEvent;)V
  	 
   javax/swing/JPanel <init> ()V
     initComponents  Name and Address	     	nameField Ljavax/swing/JTextField;	     addressField  javax/swing/JLabel
  		     jLabel1 Ljavax/swing/JLabel; ! javax/swing/JTextField
   		  $ %  jLabel2 ' DemoVisualPanel1.jLabel1.text
 ) * + , - org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 / 0 1 2 3 org/openide/awt/Mnemonics setLocalizedText )(Ljavax/swing/JLabel;Ljava/lang/String;)V 5 DemoVisualPanel1.nameField.text
   7 8 9 setText (Ljava/lang/String;)V 
   < = 9 setName ? "org/demo/wizard/DemoVisualPanel1$1
 > A  B %(Lorg/demo/wizard/DemoVisualPanel1;)V
   D E F addActionListener "(Ljava/awt/event/ActionListener;)V H DemoVisualPanel1.jLabel2.text J "DemoVisualPanel1.addressField.text  M javax/swing/GroupLayout
 L O  P (Ljava/awt/Container;)V
  R S T 	setLayout (Ljava/awt/LayoutManager;)V	 V W X Y Z !javax/swing/GroupLayout$Alignment LEADING #Ljavax/swing/GroupLayout$Alignment;
 L \ ] ^ createParallelGroup L(Ljavax/swing/GroupLayout$Alignment;)Ljavax/swing/GroupLayout$ParallelGroup;
 L ` a b createSequentialGroup +()Ljavax/swing/GroupLayout$SequentialGroup;
 d e f g h 'javax/swing/GroupLayout$SequentialGroup addGap .(III)Ljavax/swing/GroupLayout$SequentialGroup;	 V j k Z TRAILING
 m n o p q %javax/swing/GroupLayout$ParallelGroup addComponent =(Ljava/awt/Component;)Ljavax/swing/GroupLayout$ParallelGroup;
 d s t u addGroup J(Ljavax/swing/GroupLayout$Group;)Ljavax/swing/GroupLayout$SequentialGroup;
 L w ] x M(Ljavax/swing/GroupLayout$Alignment;Z)Ljavax/swing/GroupLayout$ParallelGroup; z java/lang/Short
 m | p } @(Ljava/awt/Component;III)Ljavax/swing/GroupLayout$ParallelGroup;
 d  � � addContainerGap -(II)Ljavax/swing/GroupLayout$SequentialGroup;
 m � t � H(Ljavax/swing/GroupLayout$Group;)Ljavax/swing/GroupLayout$ParallelGroup;
 L � � � setHorizontalGroup "(Ljavax/swing/GroupLayout$Group;)V
 d � � b	 V � � Z BASELINE	 � � � � � *javax/swing/LayoutStyle$ComponentPlacement RELATED ,Ljavax/swing/LayoutStyle$ComponentPlacement;
 d � � � addPreferredGap W(Ljavax/swing/LayoutStyle$ComponentPlacement;)Ljavax/swing/GroupLayout$SequentialGroup;
 L � � � setVerticalGroup Code LineNumberTable LocalVariableTable this "Lorg/demo/wizard/DemoVisualPanel1; getName ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getNamedField ()Ljavax/swing/JTextField; getAddressField layout Ljavax/swing/GroupLayout; evt Ljava/awt/event/ActionEvent; MethodParameters 
access$000 A(Lorg/demo/wizard/DemoVisualPanel1;Ljava/awt/event/ActionEvent;)V x0 x1 
SourceFile DemoVisualPanel1.java InnerClasses 	Alignment ParallelGroup SequentialGroup � javax/swing/GroupLayout$Group Group � javax/swing/LayoutStyle ComponentPlacement 1                 %              �   ;     	*� *� �    �            �       	 � �    � �  �   -     �    �        �        � �   �     �    � �  �   /     *� �    �        �        � �    � �  �   /     *� �    �        �        � �       �  ?    W*� Y� � *�  Y� "� *� Y� � #*�  Y� "� *� &� (� .*� 4� (� 6*� :� ;*� � >Y*� @� C*� #G� (� .*� I� (� 6*� K� ;� LY*� NL*+� Q++� U� [+� _� c+� i� [*� #� l*� � l� r� c+� U� v*� � l*�  ��� {� r ��� ~� �� �++� U� [+� _� �+� �� [*� � l*� ��� {� r� �� �+� �� [*� #� l*� ��� {� r ��� ~� �� ��    �   � .   (  )  * ! + , - : / H 0 Q 1 ` 7 n 9 | : � < � = � > � ? � @ � A � B � C � D � B � E � F � G � H � F � I � @ � > � K � L M N O P Q! O' R. S5 TA UD SM VP MS KV X �      W � �   � � � �      �   5      �    �       \ �        � �      � �  �    �   � �  �   :     *+� �    �       
 �        � �      � �   �    � �   2  >       V L �@ m L �  d L �  � L � � � �@