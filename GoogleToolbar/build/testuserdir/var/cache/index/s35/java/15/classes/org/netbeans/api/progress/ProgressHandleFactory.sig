����   4 �
      java/lang/Object <init> ()V  javax/swing/Action
 
     /org/netbeans/api/progress/ProgressHandleFactory createHandle R(Ljava/lang/String;Ljavax/swing/Action;)Lorg/netbeans/api/progress/ProgressHandle;
 
    p(Ljava/lang/String;Lorg/openide/util/Cancellable;Ljavax/swing/Action;)Lorg/netbeans/api/progress/ProgressHandle;
    (org/netbeans/api/progress/ProgressHandle  2org/netbeans/modules/progress/spi/UIInternalHandle
     H(Ljava/lang/String;Lorg/openide/util/Cancellable;ZLjavax/swing/Action;)V
     createProgressHandle ,()Lorg/netbeans/api/progress/ProgressHandle;
 
    ! 	ihextract i(Lorg/netbeans/api/progress/ProgressHandle;)Lorg/netbeans/modules/progress/spi/ExtractedProgressUIWorker; # $ % & ' ;org/netbeans/modules/progress/spi/ExtractedProgressUIWorker getProgressComponent ()Ljavax/swing/JComponent; # ) * + getMainLabelComponent ()Ljavax/swing/JLabel; # - . + getDetailLabelComponent
 
 0 1  createSystemHandle
  0
  4 5 6 getInternalHandle 4()Lorg/netbeans/modules/progress/spi/InternalHandle; 8 Aorg/netbeans/api/progress/ProgressHandleFactory$UIHandleExtractor
 7 :  ; 7(Lorg/netbeans/modules/progress/spi/UIInternalHandle;)V
 = > ? @ A org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; C :org/netbeans/modules/progress/spi/ProgressUIWorkerProvider
 = E F G lookup %(Ljava/lang/Class;)Ljava/lang/Object;	 
 I J K TRIVIAL_PROVIDER <Lorg/netbeans/modules/progress/spi/ProgressUIWorkerProvider; B M N O extractProgressWorker q(Lorg/netbeans/modules/progress/spi/InternalHandle;)Lorg/netbeans/modules/progress/spi/ExtractedProgressUIWorker; Q @org/netbeans/api/progress/ProgressHandleFactory$ForeignExtractor
 P S  T r(Lorg/netbeans/modules/progress/spi/InternalHandle;Lorg/netbeans/modules/progress/spi/ExtractedProgressUIWorker;)V V <org/netbeans/progress/module/TrivialProgressUIWorkerProvider
 U  Code LineNumberTable LocalVariableTable this 1Lorg/netbeans/api/progress/ProgressHandleFactory; >(Ljava/lang/String;)Lorg/netbeans/api/progress/ProgressHandle; displayName Ljava/lang/String; MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; \(Ljava/lang/String;Lorg/openide/util/Cancellable;)Lorg/netbeans/api/progress/ProgressHandle; allowToCancel Lorg/openide/util/Cancellable; 
linkOutput Ljavax/swing/Action; createUIHandle createProgressComponent D(Lorg/netbeans/api/progress/ProgressHandle;)Ljavax/swing/JComponent; handle *Lorg/netbeans/api/progress/ProgressHandle; createMainLabelComponent @(Lorg/netbeans/api/progress/ProgressHandle;)Ljavax/swing/JLabel; createDetailLabelComponent createSystemUIHandle prov worker =Lorg/netbeans/modules/progress/spi/ExtractedProgressUIWorker; h ih 2Lorg/netbeans/modules/progress/spi/InternalHandle; StackMapTable z 0org/netbeans/modules/progress/spi/InternalHandle <clinit> 
SourceFile ProgressHandleFactory.java InnerClasses UIHandleExtractor ForeignExtractor 1 
     
 J K        X   3     *� �    Y   
    /  0 Z        [ \   	  ]  X   3     	*� � 	�    Y       : Z       	 ^ _   `    ^   a     b     c   	  d  X   ;     *+� �    Y       H Z        ^ _      e f  `   	 ^   e   a     b     c   	    X   ;     *+� �    Y       V Z        ^ _      g h  `   	 ^   g   a     b     c   	    X   E     *+,� �    Y       i Z         ^ _      e f     g h  `    ^   e   g   a     b     c   	 i   X   M     � Y*+,� � �    Y       z Z         ^ _      e f     g h  `    ^   e   g   	 j k  X   4     
*� � " �    Y       � Z       
 l m   `    l   	 n o  X   4     
*� � ( �    Y       � Z       
 l m   `    l   	 p o  X   4     
*� � , �    Y       � Z       
 l m   `    l   	 1 ]  X   1     *� /�    Y       � Z        ^ _   `    ^   a     b     c   	 1 d  X   ;     *+� /�    Y       � Z        ^ _      e f  `   	 ^   e   a     b     c   	 1   X   E     *+,� 2�    Y       � Z         ^ _      e f     g h  `    ^   e   g   a     b     c   	 q   X   M     � Y*+,� � �    Y       � Z         ^ _      e f     g h  `    ^   e   g   
   !  X   �     D*� 3L+� � � 7Y+� � 9�� <B� D� BM,� � HM,+� L N-� � PY+-� R��    Y   * 
   �  �  �  � $ � ( � , � 4 � 8 � B � Z   *  $   r K  4  s t    D u m    ? v w  x    �  y�  B�  # `    u    {   X   #      � UY� W� H�    Y       �  |    } ~     7 
  
 P 
 � 
