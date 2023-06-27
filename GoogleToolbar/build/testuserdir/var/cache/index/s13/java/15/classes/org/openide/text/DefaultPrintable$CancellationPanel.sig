����   4 u
      javax/swing/JPanel <init> ()V  "java/lang/IllegalArgumentException
    java/text/MessageFormat  !org/openide/text/PrintPreferences  CTL_Print_progress
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 
    (Ljava/lang/String;)V	      3org/openide/text/DefaultPrintable$CancellationPanel format Ljava/text/MessageFormat;   java/lang/Object	  " # $ 	msgParams [Ljava/lang/Object; & java/awt/BorderLayout
 % 
  ) * + 	setLayout (Ljava/awt/LayoutManager;)V - javax/swing/border/EmptyBorder
 , /  0 (IIII)V
  2 3 4 	setBorder (Ljavax/swing/border/Border;)V 6 javax/swing/JLabel
 5 	  9 : ; printProgress Ljavax/swing/JLabel;
 5 = > ? setHorizontalAlignment (I)V
  A B C add *(Ljava/awt/Component;)Ljava/awt/Component; E java/lang/Integer
 D G  ?
 
 I  J &(Ljava/lang/Object;)Ljava/lang/String;
 5 L M  setText
  O P Q getAccessibleContext )()Ljavax/accessibility/AccessibleContext;
 5 S T U getText ()Ljava/lang/String;
 W X Y Z  %javax/accessibility/AccessibleContext setAccessibleDescription serialVersionUID J ConstantValue��;	{C (Ljava/awt/print/PrinterJob;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/text/DefaultPrintable$CancellationPanel; job Ljava/awt/print/PrinterJob; StackMapTable j java/awt/print/PrinterJob MethodParameters 	setPageno pageno I 
SourceFile DefaultPrintable.java InnerClasses s !org/openide/text/DefaultPrintable CancellationPanel 0       [ \  ]    ^  : ;         # $      `  a   �     d*� +� � Y� 	�*� 
Y� � � *� � !*� %Y� '� (*� ,Y� .� 1*� 5Y� 7� 8*� 8� <**� 8� @W�    b   .   � � � � "� *� 5� G� R� Z� c� c       d d e     d f g  h    �    i   k    f    l ?  a   q     1*� !� DY`� FS*� 8*� *� !� H� K*� N*� 8� R� V�    b      �   " 0 c       1 d e     1 m n  k    m    o    p q   
   r t 