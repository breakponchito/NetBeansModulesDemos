����   4 o	      )org/openide/text/DataEditorSupport$Env$ME this$0 (Lorg/openide/text/DataEditorSupport$Env;  java/lang/StringBuilder
  
   <init> ()V  The file is too big. 
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     (J)Ljava/lang/StringBuilder;   bytes.
     toString ()Ljava/lang/String;
       &org/openide/util/UserQuestionException (Ljava/lang/String;)V	  " # $ size J & java/lang/Object
 ( ) * + , &org/openide/text/DataEditorSupport$Env 
access$000 N(Lorg/openide/text/DataEditorSupport$Env;)Lorg/openide/filesystems/FileObject;
 . / 0 1  "org/openide/filesystems/FileObject getPath
 . 3 4  
getNameExt 6 java/lang/Long
 5 8  9 (J)V                  @    A org/openide/loaders/DataObject C MSG_ObjectIsTooBig
 E F G H I org/openide/util/NbBundle 
getMessage J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 ( K L M 
access$400 ()Ljava/util/Set; O P Q R S java/util/Set add (Ljava/lang/Object;)Z
 ( U V  
access$600 serialVersionUID ConstantValue        ,(Lorg/openide/text/DataEditorSupport$Env;J)V Code LineNumberTable LocalVariableTable this +Lorg/openide/text/DataEditorSupport$Env$ME; MethodParameters getLocalizedMessage arr [Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	confirmed 
SourceFile DataEditorSupport.java InnerClasses l "org/openide/text/DataEditorSupport Env ME         W $  X    Y  # $          [  \   q     '*+� *� Y� 	�  � � � � * � !�    ]      V W !X &Y ^        ' _ `     '      ' # $  a   	 � #    b   \   � 	    o� %Y*� � '� -SY*� � '� 2SY� 5Y*� !� 7SY� 5Y*� ! :m
a� 7SY� 5Y*� ! <m� 7SY� 5Y*� ! >m� 7SL@B+� D�    ]      ] ^ _ fe ^       o _ `   f 	 c d  e     f    g   \   F     � J*� � '� N W� T�    ]      i j k ^        _ `    h    i j     ( k m	  ( n  