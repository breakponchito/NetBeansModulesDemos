����   4 W
      java/lang/Object <init> ()V	  	 
   @org/netbeans/api/progress/ProgressHandleFactory$ForeignExtractor del =Lorg/netbeans/modules/progress/spi/ExtractedProgressUIWorker;	     ih 2Lorg/netbeans/modules/progress/spi/InternalHandle;
      0org/netbeans/modules/progress/spi/InternalHandle isCustomPlaced ()Z
      5org/netbeans/progress/module/UIInternalHandleAccessor instance 9()Lorg/netbeans/progress/module/UIInternalHandleAccessor;
      markCustomPlaced 5(Lorg/netbeans/modules/progress/spi/InternalHandle;)V " 1org/netbeans/modules/progress/spi/SwingController
 ! $  % 7(Lorg/netbeans/modules/progress/spi/ProgressUIWorker;)V
  ' ( ) setController c(Lorg/netbeans/modules/progress/spi/InternalHandle;Lorg/netbeans/modules/progress/spi/Controller;)V
  + ,  customPlaced . / 0 1 2 ;org/netbeans/modules/progress/spi/ExtractedProgressUIWorker getProgressComponent ()Ljavax/swing/JComponent; . 4 5 6 getMainLabelComponent ()Ljavax/swing/JLabel; . 8 9 6 getDetailLabelComponent . ; < = processProgressEvent 4(Lorg/netbeans/modules/progress/spi/ProgressEvent;)V . ? @ = processSelectedProgressEvent r(Lorg/netbeans/modules/progress/spi/InternalHandle;Lorg/netbeans/modules/progress/spi/ExtractedProgressUIWorker;)V Code LineNumberTable LocalVariableTable this BLorg/netbeans/api/progress/ProgressHandleFactory$ForeignExtractor; MethodParameters wasCustomPlaced Z acc 7Lorg/netbeans/progress/module/UIInternalHandleAccessor; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; event 1Lorg/netbeans/modules/progress/spi/ProgressEvent; 
SourceFile ProgressHandleFactory.java InnerClasses U /org/netbeans/api/progress/ProgressHandleFactory ForeignExtractor      .               A  B   Y     *� *,� *+� �    C       �   	  D         E F               G   	         ,   B   �     ,*� � <� M,*� � � ,*� � !Y*� � #� &�    C          	 + D        , E F    $ H I     J K  L   	 � +   1 2  B   <     *� **� � - �    C   
     D        E F   M     N    5 6  B   <     *� **� � 3 �    C   
     D        E F   M     N    9 6  B   <     *� **� � 7 �    C   
     D        E F   M     N    < =  B   C     *� +� : �    C   
   ! 
" D        E F      O P  G    O   M     N    @ =  B   C     *� +� > �    C   
   & 
' D        E F      O P  G    O   M     N    Q    R S   
   T V 
