����   4 �
       org/demo/wizard/DemoVisualPanel2 jTextField1ActionPerformed (Ljava/awt/event/ActionEvent;)V
  	 
   javax/swing/JPanel <init> ()V
     initComponents  Musician Details  javax/swing/JLabel
  		     jLabel1 Ljavax/swing/JLabel;	     jLabel2  javax/swing/JTextField
  		    ! " jTextField1 Ljavax/swing/JTextField;	  $ % " jTextField2 ' DemoVisualPanel2.jLabel1.text
 ) * + , - org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 / 0 1 2 3 org/openide/awt/Mnemonics setLocalizedText )(Ljavax/swing/JLabel;Ljava/lang/String;)V 5 DemoVisualPanel2.jLabel2.text 7 !DemoVisualPanel2.composition.text
  9 : ; setText (Ljava/lang/String;)V = composition
  ? @ ; setName B "org/demo/wizard/DemoVisualPanel2$1
 A D  E %(Lorg/demo/wizard/DemoVisualPanel2;)V
  G H I addActionListener "(Ljava/awt/event/ActionListener;)V K DemoVisualPanel2.musician.text M musician O javax/swing/GroupLayout
 N Q  R (Ljava/awt/Container;)V
  T U V 	setLayout (Ljava/awt/LayoutManager;)V	 X Y Z [ \ !javax/swing/GroupLayout$Alignment LEADING #Ljavax/swing/GroupLayout$Alignment;
 N ^ _ ` createParallelGroup L(Ljavax/swing/GroupLayout$Alignment;)Ljavax/swing/GroupLayout$ParallelGroup;
 N b c d createSequentialGroup +()Ljavax/swing/GroupLayout$SequentialGroup;
 f g h i d 'javax/swing/GroupLayout$SequentialGroup addContainerGap
 f k l m addComponent ?(Ljava/awt/Component;)Ljavax/swing/GroupLayout$SequentialGroup;	 o p q r s *javax/swing/LayoutStyle$ComponentPlacement 	UNRELATED ,Ljavax/swing/LayoutStyle$ComponentPlacement;
 f u v w addPreferredGap W(Ljavax/swing/LayoutStyle$ComponentPlacement;)Ljavax/swing/GroupLayout$SequentialGroup;
 f y l z B(Ljava/awt/Component;III)Ljavax/swing/GroupLayout$SequentialGroup;
 | } ~  � %javax/swing/GroupLayout$ParallelGroup addGroup H(Ljavax/swing/GroupLayout$Group;)Ljavax/swing/GroupLayout$ParallelGroup;	 X � � \ TRAILING
 | �  � k(Ljavax/swing/GroupLayout$Alignment;Ljavax/swing/GroupLayout$Group;)Ljavax/swing/GroupLayout$ParallelGroup;
 f �  � J(Ljavax/swing/GroupLayout$Group;)Ljavax/swing/GroupLayout$SequentialGroup; � java/lang/Short
 f � i � -(II)Ljavax/swing/GroupLayout$SequentialGroup;
 N � � � setHorizontalGroup "(Ljavax/swing/GroupLayout$Group;)V	 X � � \ BASELINE
 | � l � =(Ljava/awt/Component;)Ljavax/swing/GroupLayout$ParallelGroup;
 | � l � @(Ljava/awt/Component;III)Ljavax/swing/GroupLayout$ParallelGroup;
 f � � � addGap .(III)Ljavax/swing/GroupLayout$SequentialGroup;
 N � � � setVerticalGroup Code LineNumberTable LocalVariableTable this "Lorg/demo/wizard/DemoVisualPanel2; getName ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; layout Ljavax/swing/GroupLayout; evt Ljava/awt/event/ActionEvent; MethodParameters 
access$000 A(Lorg/demo/wizard/DemoVisualPanel2;Ljava/awt/event/ActionEvent;)V x0 x1 
SourceFile DemoVisualPanel2.java InnerClasses 	Alignment ParallelGroup SequentialGroup � javax/swing/LayoutStyle ComponentPlacement � javax/swing/GroupLayout$Group Group 1                 ! "    % "        �   ;     	*� *� �    �            �       	 � �    � �  �   -     �    �        �        � �   �     �       �  T 
   `*� Y� � *� Y� � *� Y� � *� Y� � #*� &� (� .*� 4� (� .*� 6� (� 8*� <� >*� � AY*� C� F*� #J� (� 8*� #L� >� NY*� PL*+� S++� W� ]+� a� e+� W� ]+� a*� � j� n� t*� ��� x� {� �+� a*� � j� n� t*� #��� x� �� � ��� �� {� �++� W� ]+� a� e+� �� ]*� � �*� ��� �� �� �+� �� ]*� � �*� #��� �� � ��� �� {� ��    �   � 1        ! ! " , $ : & H ( V ) _ * n 0 | 1 � 3 � 4 � 5 � 6 � 7 � 8 � 9 � : � ; � < � = � : � > � ? � @ � A � > � 9 � B � 7 � 5 � D E F
 G H I$ J' H0 K7 L> MJ NM LV OY F\ D_ Q �      ` � �   � � � �      �   5      �    �       U �        � �      � �  �    �   � �  �   :     *+� �    �       	 �        � �      � �   �    � �   2  A       X N �@ | N �  f N �  o � �@ � N �