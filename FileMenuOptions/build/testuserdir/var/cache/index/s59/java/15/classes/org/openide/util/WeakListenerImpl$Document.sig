����   4 D  "javax/swing/event/DocumentListener
      !org/openide/util/WeakListenerImpl <init> -(Ljava/lang/Class;Ljava/util/EventListener;)V
 
     *org/openide/util/WeakListenerImpl$Document docGet G(Ljavax/swing/event/DocumentEvent;)Ljavax/swing/event/DocumentListener;     changedUpdate $(Ljavax/swing/event/DocumentEvent;)V     insertUpdate     removeUpdate  removeDocumentListener
     
access$000 Z(Lorg/openide/util/WeakListenerImpl;)Lorg/openide/util/WeakListenerImpl$ListenerReference;
   ! " # $ 3org/openide/util/WeakListenerImpl$ListenerReference get ()Ljava/lang/Object; & ' ( ) * javax/swing/event/DocumentEvent getDocument ()Ljavax/swing/text/Document;
   , - . requestCleanUp (Ljava/lang/Object;)V '(Ljavax/swing/event/DocumentListener;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/util/WeakListenerImpl$Document; l $Ljavax/swing/event/DocumentListener; MethodParameters ev !Ljavax/swing/event/DocumentEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; removeMethodName ()Ljava/lang/String; 
SourceFile WeakListenerImpl.java InnerClasses Document ListenerReference 0 
          /  0   @     *+� �    1   
    �  � 2        3 4      5 6  7    5      0   j     *+� 	M,� 
,+�  �    1        
  2         3 4      8 9    5 6  :    �   7    8   ;     <       0   j     *+� 	M,� 
,+�  �    1        
  2         3 4      8 9    5 6  :    �   7    8   ;     <       0   j     *+� 	M,� 
,+�  �    1        
  2         3 4      8 9    5 6  :    �   7    8   ;     <    = >  0   -     �    1      $ 2        3 4   ;     <       0   v     *� � � M,� *� +� % � +,�    1      , . / 2 2         3 4      8 9    5 6  :    �   7    8    ?    @ A     
  B     C 