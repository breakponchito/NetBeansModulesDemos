����   4 I	      )org/openide/text/CloneableEditorSupport$2 this$0 )Lorg/openide/text/CloneableEditorSupport;	   	 
 	val$myDoc !Ljavax/swing/text/StyledDocument;	     val$externalMod J
      &org/openide/util/UserQuestionException <init> (Ljava/lang/String;)V  'org/openide/text/CloneableEditorSupport  FMT_External_change_write  javax/swing/text/Document  title     ! " javax/swing/text/StyledDocument getProperty &(Ljava/lang/Object;)Ljava/lang/Object;
 $ % & ' ( org/openide/util/NbBundle 
getMessage I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
  * + , setLastSaveTime (J)V
  . / 0 saveDocument ()V `(Lorg/openide/text/CloneableEditorSupport;Ljava/lang/String;Ljavax/swing/text/StyledDocument;J)V Code LineNumberTable LocalVariableTable this +Lorg/openide/text/CloneableEditorSupport$2; s Ljava/lang/String; MethodParameters getLocalizedMessage ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	confirmed 
Exceptions A java/io/IOException 
SourceFile CloneableEditorSupport.java EnclosingMethod F G saveDocumentImpl %(Ljavax/swing/text/StyledDocument;Z)V InnerClasses        	 
               1  2   T     *+� *-� *� *,� �    3      ~ 4         5 6            7 8  9    � 7   	   : ;  2   E     *� �  � #�    3      � 
� � 4        5 6   <     =    > 0  2   E     *� *� � )*� � -�    3      � � � 4        5 6   ?     @ <     =    B    C D     E H   
        