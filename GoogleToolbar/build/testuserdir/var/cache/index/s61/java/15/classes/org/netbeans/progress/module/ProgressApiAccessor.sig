����   4 E
      java/lang/Object <init> ()V	  	 
   0org/netbeans/progress/module/ProgressApiAccessor $assertionsDisabled Z  java/lang/AssertionError
  	     INSTANCE 2Lorg/netbeans/progress/module/ProgressApiAccessor;  (org/netbeans/api/progress/ProgressHandle
      java/lang/Class getName ()Ljava/lang/String;
     getClassLoader ()Ljava/lang/ClassLoader;
  ! " # forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; %  java/lang/ClassNotFoundException
 ' ( ) * + org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  - . / desiredAssertionStatus ()Z Code LineNumberTable LocalVariableTable this setInstance 5(Lorg/netbeans/progress/module/ProgressApiAccessor;)V inst StackMapTable MethodParameters getInstance 4()Lorg/netbeans/progress/module/ProgressApiAccessor; ex "Ljava/lang/ClassNotFoundException; getInternalHandle ^(Lorg/netbeans/api/progress/ProgressHandle;)Lorg/netbeans/modules/progress/spi/InternalHandle; h create ^(Lorg/netbeans/modules/progress/spi/InternalHandle;)Lorg/netbeans/api/progress/ProgressHandle; <clinit> 
SourceFile ProgressApiAccessor.java!      J              0   /     *� �    1        2        3    	 4 5  0   R     � � *� � Y� �*� �    1       !  "  # 2        6    7     8    6   ) 9 :  0   �     5� � .� � �  W� � � � � Y� �� K*� &� �   ) , $  1       &  (  ) ) , , * - + 1 . 2     -  ; <   7    )B $ = >  8    ?   @ A  8    ?    B   0   4      � ,� � � �    1        7    @  C    D