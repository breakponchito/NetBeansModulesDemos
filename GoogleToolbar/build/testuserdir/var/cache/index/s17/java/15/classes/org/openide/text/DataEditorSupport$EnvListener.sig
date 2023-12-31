Êþº¾   4 ³
      )org/openide/filesystems/FileChangeAdapter <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      .org/openide/text/DataEditorSupport$EnvListener env Ljava/lang/ref/Reference;
     addFileChangeListener '(Lorg/openide/filesystems/FileObject;)V
      "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;
       "org/openide/filesystems/FileSystem /(Lorg/openide/filesystems/FileChangeListener;)V " 1org/openide/filesystems/FileStateInvalidException	 $ % & ' ( "org/openide/text/DataEditorSupport ERR Ljava/util/logging/Logger;	 * + , - . java/util/logging/Level INFO Ljava/util/logging/Level; 0 java/lang/StringBuilder
 /  3 cannot add listener to 
 / 5 6 7 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 / 9 6 : -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 / < = > toString ()Ljava/lang/String;
 @ A B C D java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  F G   removeFileChangeListener I cannot remove listener from 
 K L M N O java/lang/ref/Reference get ()Ljava/lang/Object; Q &org/openide/text/DataEditorSupport$Env
 S T U V W !org/openide/filesystems/FileEvent getFile &()Lorg/openide/filesystems/FileObject;
 P Y Z  updateDocumentProperty
 P \ ] ^ 
access$000 N(Lorg/openide/text/DataEditorSupport$Env;)Lorg/openide/filesystems/FileObject;
  ` G 
 P b c d fileRemoved (Z)V
 f g h i j +org/openide/text/DataEditorSupport$SaveImpl 
access$700 /()Lorg/openide/text/DataEditorSupport$SaveImpl;
 S l m n 	firedFrom 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)Z
  p q r 	isVirtual ()Z
  F
  
 P v w x fileChanged &(Lorg/openide/filesystems/FileEvent;)V
 P z {  fileRenamed
 } T ~ *org/openide/filesystems/FileAttributeEvent  #DataEditorSupport.read-only.refresh
 }   > getName
      java/lang/String equals (Ljava/lang/Object;)Z
 P    
access$800 +(Lorg/openide/text/DataEditorSupport$Env;)V 	Signature CLjava/lang/ref/Reference<Lorg/openide/text/DataEditorSupport$Env;>; O(Lorg/openide/filesystems/FileObject;Lorg/openide/text/DataEditorSupport$Env;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/text/DataEditorSupport$EnvListener; listen $Lorg/openide/filesystems/FileObject; (Lorg/openide/text/DataEditorSupport$Env; MethodParameters ex 3Lorg/openide/filesystems/FileStateInvalidException; fo StackMapTable fileDeleted fe #Lorg/openide/filesystems/FileEvent; myEnv #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ,(Lorg/openide/filesystems/FileRenameEvent;)V )Lorg/openide/filesystems/FileRenameEvent; fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V fae ,Lorg/openide/filesystems/FileAttributeEvent; 
SourceFile DataEditorSupport.java InnerClasses EnvListener Env SaveImpl ± /org/openide/filesystems/FileSystem$AtomicAction AtomicAction 0                       `     *· *» Y,· 	µ *+· ±          x y z {                             	                   *+¶ *¶ § !M² #² )» /Y· 12¶ 4+¶ 8¶ ;,¶ ?±      !            )              *       *        K !         G           *+¶ *¶ E§ !M² #² )» /Y· 1H¶ 4+¶ 8¶ ;,¶ ?±      !            )              *       *        K !          x     É     A*´ ¶ JÀ PM+¶ RN,Æ ,¶ X,Æ 
,¸ [Ç 	*-· _±,¸ [-¦ *-· _,¶ a*-· ±       2        # ( ) 1 6 ; @¡    *    A       A      6 ¡    1        ý  P 
        ¢     £    w x     ã     ^+¸ e¶ k ±*´ ¶ JÀ PM,Æ 
,¸ [Ç *+¶ R· _±,¸ [+¶ R¥ ±+¶ R¶ o +¶ R*¶ s,¶ a+¶ R*¶ t§ ,+¶ u±       :   ¨ 
© ¬ ­ !° )± *´ 5µ 6¹ @» H¾ M¿ XÁ ]Ã         ^       ^      H ¡       ü  P!        ¢     £    { ¤     t     *´ ¶ JÀ PM,Æ ,¶ X,¶ y±          Ç È É Ê Ì                  ¥    ¡       ü  P        ¢     £    ¦ §          ,*´ ¶ JÀ PM,Æ ,¸ [+¶ |¥ ±+¶ ¶  ,¸ ±          Ð Ñ Ò Ö '× +Ù         ,       , ¨ ©   ! ¡      
 ü  P      ¨   ¢     £    ª    « ¬   "   $ ­  P $ ®	 f $ ¯ 
 °  ²	