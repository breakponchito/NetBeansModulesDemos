����   4 �	      1org/openide/text/CloneableEditorSupport$1Selector this$0 )Lorg/openide/text/CloneableEditorSupport;	   	 
 val$e .Lorg/openide/text/CloneableEditorSupport$Pane;	     val$pos Lorg/openide/text/PositionRef;	     
val$column I
      java/lang/Object <init> ()V	     documentLocked Z	     ! " org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
  $ % & postReadRequest (Ljava/lang/Runnable;)V
 ( ) * + , org/openide/util/Task removeTaskListener "(Lorg/openide/util/TaskListener;)V . / 0 1 2 ,org/openide/text/CloneableEditorSupport$Pane getEditorPane ()Ljavax/swing/JEditorPane;
 4 5 6 7 8 'org/openide/text/CloneableEditorSupport getDocument #()Ljavax/swing/text/StyledDocument; : ; < = & javax/swing/text/StyledDocument render
 ? @ A B C javax/swing/JEditorPane getCaret ()Ljavax/swing/text/Caret;
 ? E 7 F ()Ljavax/swing/text/Document;	 4 H I J ERR Ljava/util/logging/Logger;	 L M N O P java/util/logging/Level FINE Ljava/util/logging/Level;
 R S T U V java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z X java/lang/StringBuilder
 W  [ paneDoc=
 W ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 W a ^ b -(Ljava/lang/Object;)Ljava/lang/StringBuilder; d 	
 !=
doc=
 W f g h toString ()Ljava/lang/String;
 R j k l fine (Ljava/lang/String;)V
 n o p q r org/openide/text/NbDocument findLineRootElement =(Ljavax/swing/text/StyledDocument;)Ljavax/swing/text/Element;
 t u v w x org/openide/text/PositionRef 	getOffset ()I z { | } ~ javax/swing/text/Element getElementIndex (I)I z � � � 
getElement (I)Ljavax/swing/text/Element; z � � x getStartOffset
 � � � � � java/lang/Math max (II)I z � � x getEndOffset � � � � � javax/swing/text/Caret setDot (I)V
 ? � � � modelToView (I)Ljava/awt/Rectangle;	 � � � �  java/awt/Rectangle height
 ? � � � scrollRectToVisible (Ljava/awt/Rectangle;)V � %javax/swing/text/BadLocationException	 L � � P WARNING � $Can't scroll to text: pos.getOffset=
 W � ^ � (I)Ljava/lang/StringBuilder; � 	, column= � 	, offset= � , doc.getLength= : � � x 	getLength
 R � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � org/openide/util/TaskListener � java/lang/Runnable y(Lorg/openide/text/CloneableEditorSupport;Lorg/openide/text/CloneableEditorSupport$Pane;Lorg/openide/text/PositionRef;I)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/text/CloneableEditorSupport$1Selector; MethodParameters 	Signature taskFinished (Lorg/openide/util/Task;)V t2 Lorg/openide/util/Task; run r Ljava/awt/Rectangle; ex 'Ljavax/swing/text/BadLocationException; caret Ljavax/swing/text/Caret; offset paneDoc Ljavax/swing/text/Document; el Ljavax/swing/text/Element; ePane Ljavax/swing/JEditorPane; doc !Ljavax/swing/text/StyledDocument; StackMapTable � javax/swing/text/Document 
SourceFile CloneableEditorSupport.java EnclosingMethod � � 
openAtImpl P(Lorg/openide/text/PositionRef;IZ)Lorg/openide/text/CloneableEditorSupport$Pane; InnerClasses Selector Pane      � �       	 
                   �  �   W     *+� *,� *-� *� *� *� �    �   
   � � �        � �         �    � 	   �      � �  �   I     � *� #+*� '�    �      � � � �        � �      � �  �    �    �   �  �    I*� � - L+� �*� � 3M,� �*� � *� ,*� 9 �+� >N-� �+� D:� :� >,� 8� G� K� Q� &� G� WY� YZ� \� `c� \,� `� e� i� :M,� m:*� � s� y �  :� � *� � �`6� � � � � � � d� �6-� � +� �:� Y� �h� �+� �� M:� G� �� WY� Y�� \*� � s� ��� \*� � ��� \� ��� \,� � � �� e� ��  � � � �  �   � !  � 
� � � � � � #� (� 2� 7� ;� <� B� P� \� � �� �� �� �� �� �� �� �� �� �� �� �� �8�E�H� �   \ 	 �  � �   H � �  7 � �  � � �   B � �  � � � �   I � �   
? � �  2 � �  �   L 
�  ?�  :� 	 �� B  �� O   ? : � � z  %B �� I   ? :    �    � �    4 � �        �   . 4 �	