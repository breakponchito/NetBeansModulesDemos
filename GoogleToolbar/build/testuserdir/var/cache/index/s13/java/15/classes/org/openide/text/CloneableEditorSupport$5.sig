����   4 9	      )org/openide/text/CloneableEditorSupport$5 this$0 )Lorg/openide/text/CloneableEditorSupport;
  	 
   java/lang/Object <init> ()V
      'org/openide/text/CloneableEditorSupport getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager;   org/openide/text/UndoRedoManager
     isAtSavepoint ()Z
     callNotifyUnmodified  java/lang/Runnable ,(Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/text/CloneableEditorSupport$5; MethodParameters run urm "Lorg/openide/awt/UndoRedo$Manager; unmodify Z StackMapTable ,  org/openide/awt/UndoRedo$Manager #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile CloneableEditorSupport.java EnclosingMethod 3 4 saveDocumentImpl %(Ljavax/swing/text/StyledDocument;Z)V InnerClasses 7 org/openide/awt/UndoRedo Manager                     >     
*+� *� �           � !       
 " #     
    $    �  %      �     .*� � L=+� � +� � � 
=� =� 
*� � �        & 	  � � 
� � �  � " & - !        . " #    & & '  
 $ ( )  *    �   +
 -     .    /    0 1     2 5            + 6 8 	