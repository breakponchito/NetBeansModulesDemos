����   4 U
      +org/openide/awt/SplittedPanel$EmptySplitter <init> (I)V
  	 
   javax/swing/JComponent ()V  org/openide/awt/SplittedPanel
      org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle;	     accessibleContext 'Ljavax/accessibility/AccessibleContext;	     width I
     getAccessibleContext )()Ljavax/accessibility/AccessibleContext; ! ACS_SplittedPanel_EmptySplitter
 # $ % & ' java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;
 ) * + , - %javax/accessibility/AccessibleContext setAccessibleName (Ljava/lang/String;)V /  ACSD_SplittedPanel_EmptySplitter 1 java/awt/Dimension
 0 3  4 (II)V 6 -org/openide/awt/SplittedPanel$EmptySplitter$1
 5 8  9 0(Lorg/openide/awt/SplittedPanel$EmptySplitter;)V ; javax/accessibility/Accessible serialVersionUID J ConstantValue��@/� Code LineNumberTable LocalVariableTable this -Lorg/openide/awt/SplittedPanel$EmptySplitter; bundle Ljava/util/ResourceBundle; MethodParameters getPreferredSize ()Ljava/awt/Dimension; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable 
SourceFile SplittedPanel.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses EmptySplitter !    :   < =  >    ?                A   4     *� �    B   
   h i C        D E       A   �     /*� � M*� *� *� , � "� (*� ,.� "� (�    B      k l 
n o q !r .s C        / D E     /    
 % F G  H        I J  A   :     � 0Y*� *� � 2�    B      w C        D E   K     L       A   S     *� � *� 5Y*� 7� *� �    B      | } � C        D E   M     K     L    N    O P     Q     R   S       T 	 5      