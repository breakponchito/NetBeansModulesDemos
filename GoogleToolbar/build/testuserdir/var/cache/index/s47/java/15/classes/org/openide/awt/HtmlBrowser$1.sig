����   4 :	      org/openide/awt/HtmlBrowser$1 this$0 Lorg/openide/awt/HtmlBrowser;
  	 
   java/awt/event/MouseAdapter <init> ()V
      java/awt/event/MouseEvent getClickCount ()I
      org/openide/awt/HtmlBrowser 
access$000 7(Lorg/openide/awt/HtmlBrowser;)Ljavax/swing/JTextField;
      javax/swing/JTextField getSelectedText ()Ljava/lang/String;
    ! " isFocusOwner ()Z
  $ %  	selectAll  (Lorg/openide/awt/HtmlBrowser;)V Code LineNumberTable LocalVariableTable this Lorg/openide/awt/HtmlBrowser$1; MethodParameters mouseClicked (Ljava/awt/event/MouseEvent;)V e Ljava/awt/event/MouseEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile HtmlBrowser.java EnclosingMethod 8  initToolbar InnerClasses                &  '   >     
*+� *� �    (      J )       
 * +     
    ,    �  - .  '   �     /+� � )*� � � � *� � � � �*� � � #�    (      N O P #Q $R .T )       / * +     / / 0  1    # 	 ,    /   2     3    4    5 6     7 9   
        