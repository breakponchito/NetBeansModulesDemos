����   4 :
      java/lang/Object <init> ()V	  	 
   Aorg/netbeans/api/progress/ProgressHandleFactory$UIHandleExtractor uiih 4Lorg/netbeans/modules/progress/spi/UIInternalHandle;
      2org/netbeans/modules/progress/spi/UIInternalHandle extractComponent ()Ljavax/swing/JComponent;
     extractMainLabel ()Ljavax/swing/JLabel;
     extractDetailLabel  'java/lang/UnsupportedOperationException  Never called.
      (Ljava/lang/String;)V " ;org/netbeans/modules/progress/spi/ExtractedProgressUIWorker 7(Lorg/netbeans/modules/progress/spi/UIInternalHandle;)V Code LineNumberTable LocalVariableTable this CLorg/netbeans/api/progress/ProgressHandleFactory$UIHandleExtractor; MethodParameters getProgressComponent #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getMainLabelComponent getDetailLabelComponent processProgressEvent 4(Lorg/netbeans/modules/progress/spi/ProgressEvent;)V event 1Lorg/netbeans/modules/progress/spi/ProgressEvent; processSelectedProgressEvent 
SourceFile ProgressHandleFactory.java InnerClasses 8 /org/netbeans/api/progress/ProgressHandleFactory UIHandleExtractor      !          #  $   F     
*� *+� �    %      - . 	/ &       
 ' (     
    )        *   $   2     *� � �    %      3 &        ' (   +     ,    -   $   2     *� � �    %      8 &        ' (   +     ,    .   $   2     *� � �    %      = &        ' (   +     ,    / 0  $   >     
� Y� �    %      B &       
 ' (     
 1 2  )    1   +     ,    3 0  $   >     
� Y� �    %      G &       
 ' (     
 1 2  )    1   +     ,    4    5 6   
   7 9 
