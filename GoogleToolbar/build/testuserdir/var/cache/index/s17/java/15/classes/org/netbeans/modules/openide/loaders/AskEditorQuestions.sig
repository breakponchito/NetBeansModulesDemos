����   4 �
      java/lang/Object <init> ()V  java/io/IOException 
 java/lang/StringBuilder
 	   File is read-only: 
 	    append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 	    -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 	    toString ()Ljava/lang/String;
     (Ljava/lang/String;)V  7org/netbeans/modules/openide/loaders/AskEditorQuestions  MSG_FileReadOnlySaving
 ! " # $  "org/openide/filesystems/FileObject 
getNameExt
 & ' ( ) * org/openide/util/NbBundle 
getMessage J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 , - . / 0 0org/netbeans/modules/openide/loaders/UIException annotateUser a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Date;)V
 2 3 4 5 6 org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer; 8 $org/openide/NotifyDescriptor$Message : MSG_FileReadOnlyChanging < org/openide/NotifyDescriptor
 7 >  ? (Ljava/lang/Object;I)V
 2 A B C notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object; E ASK_OnSaving
 & G ) H 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; J yes
 L M N O P java/lang/String equals (Ljava/lang/Object;)Z R no T )org/openide/NotifyDescriptor$Confirmation
 S >	 ; W X Y 	OK_OPTION Ljava/lang/Object;
  M \ ASK_OnClosing ^ MSG_FileReadOnlyClosing
 S `  a (Ljava/lang/Object;II)V Code LineNumberTable LocalVariableTable this 9Lorg/netbeans/modules/openide/loaders/AskEditorQuestions; throwableIsReadOnly ;(Lorg/openide/filesystems/FileObject;)Ljava/io/IOException; fo $Lorg/openide/filesystems/FileObject; e Ljava/io/IOException; MethodParameters notifyChangedToReadOnly fileName Ljava/lang/String; askUserQuestionExceptionOnSave (Ljava/lang/String;)Z localizedMessage ask nd Lorg/openide/NotifyDescriptor; res StackMapTable askFileReadOnlyOnClose result 
SourceFile AskEditorQuestions.java InnerClasses Message Confirmation 1            b   3     *� �    c   
       d        e f   	 g h  b   r     6� Y� 	Y� � *� � � L+� Y*�  S� %� ++�    c          ! 4 " d       6 i j     k l  m    i   	 n   b   U 	    � 1� 7Y9� Y*S� %� =� @W�    c       '  (  '  , d        o p   m    o   	 q r  b   �     >D� FLI+� K� �Q+� K� �� SY*� UM� 1,� @N� V-� Z� ��    c   * 
   /  0  1  3  4  6 ( 7 0 8 : 9 < ; d   *    > s p    6 t p  (  u v  0  w Y  x    �  L
�  ;  m    s   	 y r  b   � 	    J[� FLI+� K� �Q+� K� �� 1� SY]� Y*S� %� _� @M,� V� � �    c   & 	   @  A  B  D  E  G 1 H 9 G = L d        J o p    B t p  =  z Y  x    �  L
� ) @ m    o    {    | }     7 ; ~ 	 S ;  	