����   4 N	      .org/openide/text/DocumentOpenClose$DocumentRef this$0 $Lorg/openide/text/DocumentOpenClose;
  	 
   org/openide/util/Utilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
      java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V  TIMER
      java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	       java/util/logging/Level FINE Ljava/util/logging/Level; " TextDocument
  $ % & log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	 ( ) * + , "org/openide/text/DocumentOpenClose lock Ljava/lang/Object;	 ( . / 0 docRef 0Lorg/openide/text/DocumentOpenClose$DocumentRef;
 ( 2 3 4 closeImplLA %(Ljavax/swing/text/StyledDocument;Z)V 6 java/lang/Runnable H(Lorg/openide/text/DocumentOpenClose;Ljavax/swing/text/StyledDocument;)V Code LineNumberTable LocalVariableTable this doc !Ljavax/swing/text/StyledDocument; MethodParameters run ()V StackMapTable C java/lang/Object E java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	Signature TLjava/lang/ref/WeakReference<Ljavax/swing/text/StyledDocument;>;Ljava/lang/Runnable; 
SourceFile DocumentOpenClose.java InnerClasses DocumentRef 0    5         7  8   \     *+� *,� � � � !,� #�    9        	 
 :        ; 0      < =  >   	  <    ? @  8   �     )*� � 'YL�**� � -� *� � 1+ç M+�,��  
   #   # & #    9       
   ( :       ) ; 0   A    �  BD D�  F     G    H    I J    K L   
   ( M 