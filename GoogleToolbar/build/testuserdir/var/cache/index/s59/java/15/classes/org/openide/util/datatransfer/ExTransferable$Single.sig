����   4 6	      3org/openide/util/datatransfer/ExTransferable$Single flavor "Ljava/awt/datatransfer/DataFlavor;
  	 
   java/lang/Object <init> ()V   java/awt/datatransfer/DataFlavor
     equals %(Ljava/awt/datatransfer/DataFlavor;)Z  0java/awt/datatransfer/UnsupportedFlavorException
     %(Ljava/awt/datatransfer/DataFlavor;)V
     getData ()Ljava/lang/Object;  "java/awt/datatransfer/Transferable Code LineNumberTable LocalVariableTable this 5Lorg/openide/util/datatransfer/ExTransferable$Single; MethodParameters getTransferDataFlavors %()[Ljava/awt/datatransfer/DataFlavor; isDataFlavorSupported getTransferData 6(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object; StackMapTable 
Exceptions , java/io/IOException 
access$000 Y(Lorg/openide/util/datatransfer/ExTransferable$Single;)Ljava/awt/datatransfer/DataFlavor; x0 
SourceFile ExTransferable.java InnerClasses 4 ,org/openide/util/datatransfer/ExTransferable Single!                   F     
*� *+� �           �  � 	 �         
 ! "     
    #        $ %     6     � Y*� S�           �          ! "    &      =     	*� +� �           �         	 ! "     	    #        ' (     ^     *� +� � � Y+� �*� �           �  �  �          ! "         )     *      + #          *     +  - .     /     *� �           �          / "    0    1 2   
   3 5	