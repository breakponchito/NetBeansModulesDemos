����   4 G
      !javax/swing/text/DefaultEditorKit <init> ()V  6org/openide/text/CloneableEditorSupport$PlainEditorKit
    !javax/swing/text/WrappedPlainView
 
    (Ljavax/swing/text/Element;)V
     install (Ljavax/swing/JEditorPane;)V  java/awt/Font  
Monospaced
      javax/swing/JEditorPane getFont ()Ljava/awt/Font;
      getSize ()I
  "  # (Ljava/lang/String;II)V
  % & ' setFont (Ljava/awt/Font;)V ) javax/swing/text/ViewFactory serialVersionUID J ConstantValue��!��(� Code LineNumberTable LocalVariableTable this 8Lorg/openide/text/CloneableEditorSupport$PlainEditorKit; clone ()Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getViewFactory  ()Ljavax/swing/text/ViewFactory; create 3(Ljavax/swing/text/Element;)Ljavax/swing/text/View; elem Ljavax/swing/text/Element; MethodParameters pane Ljavax/swing/JEditorPane; 
SourceFile CloneableEditorSupport.java InnerClasses E 'org/openide/text/CloneableEditorSupport PlainEditorKit 0    (   * +  ,    -       /   3     *� �    0   
   h i 1        2 3    4 5  /   2     � Y� 	�    0      o 1        2 3   6     7    8 9  /   ,     *�    0      v 1        2 3   6     7    : ;  /   =     	� 
Y+� �    0      | 1       	 2 3     	 < =  >    <       /   Y     *+� +� Y+� � `� !� $�    0      � � � 1        2 3      ? @  >    ?   6     7    A    B C   
   D F 