����   4 )
      java/lang/Object <init> ()V   java/awt/datatransfer/DataFlavor 
 0java/awt/datatransfer/UnsupportedFlavorException
 	    %(Ljava/awt/datatransfer/DataFlavor;)V  2org/openide/util/datatransfer/ExTransferable$Empty  "java/awt/datatransfer/Transferable Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/datatransfer/ExTransferable$Empty; getTransferDataFlavors %()[Ljava/awt/datatransfer/DataFlavor; isDataFlavorSupported %(Ljava/awt/datatransfer/DataFlavor;)Z flavor "Ljava/awt/datatransfer/DataFlavor; MethodParameters getTransferData 6(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object; 
Exceptions " java/io/IOException 
SourceFile ExTransferable.java InnerClasses ' ,org/openide/util/datatransfer/ExTransferable Empty                  3     *� �       
   � �                    /     � �          �                    6     �          �                                 =     	� 	Y+� �          �        	       	          	 !         #    $ %   
   & ( 
