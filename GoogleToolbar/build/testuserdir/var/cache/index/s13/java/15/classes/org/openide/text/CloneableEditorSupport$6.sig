����   4 \	      )org/openide/text/CloneableEditorSupport$6 this$0 )Lorg/openide/text/CloneableEditorSupport;	   	 
 val$ex (Lorg/openide/util/UserQuestionException;
      java/lang/Object <init> ()V  )org/openide/NotifyDescriptor$Confirmation
      &org/openide/util/UserQuestionException getLocalizedMessage ()Ljava/lang/String;  org/openide/NotifyDescriptor
     (Ljava/lang/Object;I)V
    ! " # org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
  % & ' notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;	  ) * + 	OK_OPTION Ljava/lang/Object;
  - . / equals (Ljava/lang/Object;)Z
  1 2  	confirmed 4 java/io/IOException
 6 7 8 9 : org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
 < = > ? @ 'org/openide/text/CloneableEditorSupport 
access$302 -(Lorg/openide/text/CloneableEditorSupport;Z)Z B java/lang/Runnable T(Lorg/openide/text/CloneableEditorSupport;Lorg/openide/util/UserQuestionException;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/text/CloneableEditorSupport$6; MethodParameters 	Signature run ex1 Ljava/io/IOException; nd Lorg/openide/NotifyDescriptor; res StackMapTable S java/lang/Throwable 
SourceFile CloneableEditorSupport.java EnclosingMethod X Y notifyModified ()Z InnerClasses Confirmation      A  	 
           C  D   C     *+� *,� *� �    E       F        G H         I   	 � 	 J      K   D       N� Y*� � � L� +� $M� (,� ,� *� � 0� N-� 5*� YN�*� � ;W-ç 
:-���  " ) , 3 8 C F   F J F    E   .    ! # "% )) ,' -( 1+ 8, A- M. F   *  -  L M    N G H    > N O   6 P +  Q   / � ,      3�        R�   T    U V    < W Z              [ 	