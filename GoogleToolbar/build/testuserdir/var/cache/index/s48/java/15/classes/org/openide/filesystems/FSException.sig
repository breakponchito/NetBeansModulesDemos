����   4 .
      java/io/IOException <init> (Ljava/lang/String;)V
  	 
   org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;  java/lang/StringBuilder
     ()V
     
getMessage ()Ljava/lang/String;
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;   
     toString   #org/openide/filesystems/FSException Code LineNumberTable LocalVariableTable this %Lorg/openide/filesystems/FSException; message Ljava/lang/String; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getLocalizedMessage 
SourceFile FSException.java 0            !   H     *+� *+� W�    "       "  #  $ #        $ %      & '  (    &       !   A     � Y� *� � � � �    "       ( #        $ %   )     *    +   !   /     *� �    "       , #        $ %   )     *    ,    -