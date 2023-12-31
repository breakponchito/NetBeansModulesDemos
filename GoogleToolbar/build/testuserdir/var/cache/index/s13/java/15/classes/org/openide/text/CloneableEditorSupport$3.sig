Êþº¾   4 	      )org/openide/text/CloneableEditorSupport$3 this$0 )Lorg/openide/text/CloneableEditorSupport;	   	 
 val$onSaveTasksStarted [Z	     	val$myDoc !Ljavax/swing/text/StyledDocument;	     val$memoryOutputStream >[Lorg/openide/text/CloneableEditorSupport$1MemoryOutputStream;	     val$log Z	     val$ioException [Ljava/io/IOException;
       java/lang/Object <init> ()V
 " # $ % & 'org/openide/text/CloneableEditorSupport getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager; (  org/openide/text/UndoRedoManager
 ' * +   endOnSaveTasks
 ' - .   markSavepoint 0 1 2 3 4 javax/swing/text/StyledDocument 	getLength ()I 6 ;org/openide/text/CloneableEditorSupport$1MemoryOutputStream
 5 8  9 -(Lorg/openide/text/CloneableEditorSupport;I)V
 " ; < = createEditorKit ()Ljavax/swing/text/EditorKit;
 " ? @ A saveFromKitToStream V(Ljavax/swing/text/StyledDocument;Ljavax/swing/text/EditorKit;Ljava/io/OutputStream;)V
 " C D E updateLineSet (Z)Lorg/openide/text/Line$Set;	 " G H I ERR Ljava/util/logging/Logger; K java/lang/StringBuilder
 J 
 " N O P 
documentID ()Ljava/lang/String;
 J R S T append -(Ljava/lang/String;)Ljava/lang/StringBuilder; V : Saved 
 5 X Y 4 size
 J [ S \ (I)Ljava/lang/StringBuilder; ^  bytes to memory output stream.
 J ` a P toString
 c d e f g java/util/logging/Logger fine (Ljava/lang/String;)V i %javax/swing/text/BadLocationException
 k l m n o org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V q java/io/IOException s java/lang/Runnable ¤(Lorg/openide/text/CloneableEditorSupport;[ZLjavax/swing/text/StyledDocument;[Lorg/openide/text/CloneableEditorSupport$1MemoryOutputStream;Z[Ljava/io/IOException;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/text/CloneableEditorSupport$3; MethodParameters 	Signature run 	urManager "Lorg/openide/text/UndoRedoManager; urm "Lorg/openide/awt/UndoRedo$Manager; byteArrayAllocSize I 	editorKit Ljavax/swing/text/EditorKit; blex 'Ljavax/swing/text/BadLocationException; ex Ljava/io/IOException; StackMapTable   org/openide/awt/UndoRedo$Manager #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile CloneableEditorSupport.java EnclosingMethod   saveDocumentImpl %(Ljavax/swing/text/StyledDocument;Z)V InnerClasses MemoryOutputStream  org/openide/awt/UndoRedo Manager  org/openide/text/Line$Set  org/openide/text/Line Set      r  	 
                           t  u   Z     &*+µ *,µ *-µ *µ *µ *µ *· ±    v      ¤ w       & x y     &    z     	     {       |    u       µ*´ ¶ !L+Á ' +À 'M*´ 3 ,¶ ),¶ ,*´ ¹ / h
l=*´ » 5Y*´ · 7S*´ ¶ :N*´ *´ -*´ 2¶ >*´ ¶ BW*´  3² F» JY· L*´ ¶ M¶ QU¶ Q*´ 2¶ W¶ Z]¶ Q¶ _¶ b§ L+¸ j§ L*´ +S±    ¡ ¤ h   ¡ ¬ p  v   R   ¨ © ª « ¬ !® %² 5³ G´ Oµ a¸ jº q» ¡Â ¤¾ ¥¿ ©Â ¬À ­Á ´Ã w   H    } ~       5 l    O R    ¥     ­       µ x y       ý !  'ú ú {B hG p                   "     "         5         	   	