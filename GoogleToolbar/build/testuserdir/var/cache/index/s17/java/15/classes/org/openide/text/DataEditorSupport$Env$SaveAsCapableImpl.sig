����   4 3	      8org/openide/text/DataEditorSupport$Env$SaveAsCapableImpl this$0 (Lorg/openide/text/DataEditorSupport$Env;
  	 
   java/lang/Object <init> ()V
      &org/openide/text/DataEditorSupport$Env 
access$501 T(Lorg/openide/text/DataEditorSupport$Env;)Lorg/openide/windows/CloneableOpenSupport;  "org/openide/text/DataEditorSupport
     saveAs 9(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V  !org/openide/loaders/SaveAsCapable +(Lorg/openide/text/DataEditorSupport$Env;)V Code LineNumberTable LocalVariableTable this :Lorg/openide/text/DataEditorSupport$Env$SaveAsCapableImpl; MethodParameters folder $Lorg/openide/filesystems/FileObject; fileName Ljava/lang/String; cos *Lorg/openide/windows/CloneableOpenSupport; StackMapTable * (org/openide/windows/CloneableOpenSupport 
Exceptions - java/io/IOException 
SourceFile DataEditorSupport.java InnerClasses Env SaveAsCapableImpl                    4     
*+� *� �          A        
      !            {     *� � N-� � -� +,� �          C D E G    *             " #     $ %    & '  (    �  ) +     , !   	 "   $    .    / 0       1	   2 