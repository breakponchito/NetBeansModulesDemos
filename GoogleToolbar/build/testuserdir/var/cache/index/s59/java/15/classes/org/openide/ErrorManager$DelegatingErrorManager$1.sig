����   4 :	      1org/openide/ErrorManager$DelegatingErrorManager$1 this$0 1Lorg/openide/ErrorManager$DelegatingErrorManager;	   	 
 val$localizedMessage Ljava/lang/String;
      java/util/ResourceBundle <init> ()V  msg
      java/lang/String equals (Ljava/lang/Object;)Z
      org/openide/util/Enumerations 	singleton +(Ljava/lang/Object;)Ljava/util/Enumeration; F(Lorg/openide/ErrorManager$DelegatingErrorManager;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/ErrorManager$DelegatingErrorManager$1; MethodParameters handleGetObject &(Ljava/lang/String;)Ljava/lang/Object; key StackMapTable getKeys ()Ljava/util/Enumeration; 	Signature -()Ljava/util/Enumeration<Ljava/lang/String;>; 
SourceFile ErrorManager.java EnclosingMethod 2 /org/openide/ErrorManager$DelegatingErrorManager 4 5 annotate v(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Date;)Ljava/lang/Throwable; InnerClasses 8 org/openide/ErrorManager DelegatingErrorManager        	 
                 C     *+� *,� *� �    !      b "        # $         %   	 � 	  & '      U     +� � *� ��    !      d 	e g "        # $      ( 
  )     %    (    * +      0     � �    !      l "        # $   ,    -  .    / 0    1 3 6     1 7 9 
       