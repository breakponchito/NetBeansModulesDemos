����   4 C
      java/lang/Object <init> ()V  Eorg/openide/util/datatransfer/ExTransferable$Multi$TransferObjectImpl
  
   (([Ljava/awt/datatransfer/Transferable;)V	      2org/openide/util/datatransfer/ExTransferable$Multi transferObject 3Lorg/openide/util/datatransfer/MultiTransferObject;	     
flavorList #[Ljava/awt/datatransfer/DataFlavor;	      ,org/openide/util/datatransfer/ExTransferable multiFlavor "Ljava/awt/datatransfer/DataFlavor;
      !  java/awt/datatransfer/DataFlavor equals %(Ljava/awt/datatransfer/DataFlavor;)Z
  # $ ! isDataFlavorSupported & 0java/awt/datatransfer/UnsupportedFlavorException
 % (  ) %(Ljava/awt/datatransfer/DataFlavor;)V + "java/awt/datatransfer/Transferable Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/datatransfer/ExTransferable$Multi; trans %[Ljava/awt/datatransfer/Transferable; MethodParameters getTransferDataFlavors %()[Ljava/awt/datatransfer/DataFlavor; flavor getTransferData 6(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object; StackMapTable 
Exceptions < java/io/IOException <clinit> 
SourceFile ExTransferable.java InnerClasses Multi TransferObjectImpl !    *                 ,   M     *� *� Y+� 	� �    -         .        / 0      1 2  3    1    4 5  ,   .     � �    -      % .        / 0    $ !  ,   <     +� � �    -      - .        / 0      6   3    6    7 8  ,   [     *+� "� � %Y+� '�*� �    -      8 9 < .        / 0      6   9     :     % ; 3    6    =   ,   &      � Y� S� �    -        >    ? @       A 	   B 