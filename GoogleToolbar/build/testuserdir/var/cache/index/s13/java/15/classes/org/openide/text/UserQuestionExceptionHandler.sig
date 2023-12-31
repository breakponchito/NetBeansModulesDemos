ÊțșŸ   4 
      java/lang/Object <init> ()V	  	 
   -org/openide/text/UserQuestionExceptionHandler ces )Lorg/openide/text/CloneableEditorSupport;	     uqe (Lorg/openide/util/UserQuestionException;	      org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
     
readAccess (Ljava/lang/Runnable;)V
     handleUserQuestionException ()Z
    !  handleStart # )org/openide/NotifyDescriptor$Confirmation
 % & ' ( ) &org/openide/util/UserQuestionException getLocalizedMessage ()Ljava/lang/String; + org/openide/NotifyDescriptor
 " -  . (Ljava/lang/Object;I)V	 * 0 1 2 
YES_OPTION Ljava/lang/Object;	 * 4 5 2 	NO_OPTION
 * 7 8 9 
setOptions ([Ljava/lang/Object;)V
 ; < = > ? org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
 ; A B C notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;	 * E F 2 	OK_OPTION
  H I J equals (Ljava/lang/Object;)Z
 % L M  	confirmed
  O P Q openDocument #()Ljavax/swing/text/StyledDocument;	  S T U doc !Ljavax/swing/text/StyledDocument;
  W X Y opened $(Ljavax/swing/text/StyledDocument;)V
  [ \  	handleEnd ^ java/io/IOException
  ` a b handleIOException (Ljava/io/IOException;)V d java/lang/RuntimeException
  f g h handleRuntimeException (Ljava/lang/RuntimeException;)V
  j k  openRefused
 m O n 'org/openide/text/CloneableEditorSupport
 p q r s t org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V v java/lang/Runnable T(Lorg/openide/text/CloneableEditorSupport;Lorg/openide/util/UserQuestionException;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/text/UserQuestionExceptionHandler; MethodParameters runInEDT run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ex ex1 Ljava/io/IOException; Ljava/lang/RuntimeException; nd Lorg/openide/NotifyDescriptor; res StackMapTable  java/lang/Throwable 
Exceptions openDoc getDocument 
SourceFile !UserQuestionExceptionHandler.java InnerClasses Confirmation      u             T U       w  x   Y     *· *+” *,” ±    y       *  + 	 ,  - z         { |               }   	         ~   x   6     Č *¶ ±    y   
    0  1 z        { |       x   4     *¶ W±    y   
    5  6 z        { |                x  ă     *¶ » "Y*Ž ¶ $· ,L+œ YČ /SYČ 3S¶ 6ž :+¶ @MČ D,¶ G P*Ž ¶ K*” **¶ N” R**Ž R¶ V>*¶ ZŹN*-” § /N*-¶ _6*¶ ZŹN*-¶ e6*¶ ZŹ*¶ i>*¶ ZŹ§ÿq:*¶ Zż  : X ^ % : X g ] : X w c  X    ^ p    w                y        <  ?  @ ( A 0 B : D A E F F N G V H X Y \ H ^ J _ K d R g L h M m N p Y t N w O x P } Q  Y  Q  T  U  Y  U  W  Y  Z z   >  _     h     x          0 c  2     { |      & ÿ Y   *   %H ]O cù B   P Q  x   2     *Ž ¶ l°    y       ^ z        { |        ]  !   x   +      ±    y       c z        { |    \   x   +      ±    y       g z        { |    X Y  x   5      ±    y       k z        { |       U  }        k   x   +      ±    y       o z        { |    a b  x   =     +ž o±    y   
    s  t z        { |         }        g h  x   =     +ž o±    y   
    x  y z        { |         }         Q  x   /     *Ž R°    y       | z        { |            
  " *  	