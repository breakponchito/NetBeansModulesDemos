����   4 <	      )org/openide/text/CloneableEditorSupport$4 this$0 )Lorg/openide/text/CloneableEditorSupport;	   	 
 val$onSaveTasksStarted [Z
      java/lang/Object <init> ()V
      'org/openide/text/CloneableEditorSupport getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager;   org/openide/text/UndoRedoManager
     
access$100 M(Lorg/openide/text/CloneableEditorSupport;)Lorg/openide/awt/UndoRedo$Manager;
     startOnSaveTasks ! java/lang/Runnable .(Lorg/openide/text/CloneableEditorSupport;[Z)V Code LineNumberTable LocalVariableTable this +Lorg/openide/text/CloneableEditorSupport$4; MethodParameters 	Signature run urm "Lorg/openide/awt/UndoRedo$Manager; StackMapTable /  org/openide/awt/UndoRedo$Manager #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile CloneableEditorSupport.java EnclosingMethod 6 7 saveDocumentImpl %(Ljavax/swing/text/StyledDocument;Z)V InnerClasses : org/openide/awt/UndoRedo Manager         	 
           "  #   C     *+� *,� *� �    $      � %        & '         (   	 � 	 )      *   #   v     $*� � L+� � *� � � � *� T�    $      � � � � #� %       $ & '     + ,  -    � # . 0     1    2    3 4     5 8            . 9 ; 	