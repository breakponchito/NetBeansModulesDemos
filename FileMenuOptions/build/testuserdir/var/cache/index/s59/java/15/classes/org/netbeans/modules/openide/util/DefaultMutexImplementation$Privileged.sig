����   4 9
      java/lang/Object <init> ()V	  	 
   Gorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged parent >Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;
      java/lang/Thread currentThread ()Ljava/lang/Thread;
      <org/netbeans/modules/openide/util/DefaultMutexImplementation 	readEnter (Ljava/lang/Thread;J)Z
     
writeEnter
     leave (Ljava/lang/Thread;)V Code LineNumberTable LocalVariableTable this ILorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged; 	setParent A(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;)V MethodParameters enterReadAccess tryReadAccess (J)Z timeout J enterWriteAccess tryWriteAccess exitReadAccess exitWriteAccess 
SourceFile DefaultMutexImplementation.java #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value PublicInnerClass InnerClasses 
Privileged !                    /     *� �    !      � "        # $    % &      >     *+� �    !   
   � � "        # $         '        (       ;     *� � 	� W�    !   
   � � "        # $    ) *      @     *� � � �    !      � "        # $      + ,  '    +    -       ;     *� � 	� W�    !   
   � � "        # $    . *      @     *� � � �    !      � "        # $      + ,  '    +    /       9     *� � � �    !   
   � 
� "        # $    0       9     *� � � �    !   
   � 
� "        # $    1    2 3     4  5[ s 6 7   
    8 	