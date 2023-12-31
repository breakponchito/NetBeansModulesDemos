����   4  java/awt/dnd/DnDConstants  "org/openide/loaders/LoaderTransfer
    	 
 java/lang/Object <init> ()V  $org/openide/loaders/LoaderTransfer$1
     createDndFlavor %(I)Ljava/awt/datatransfer/DataFlavor;
   	  E(Ljava/awt/datatransfer/DataFlavor;Lorg/openide/loaders/DataObject;)V      "java/awt/datatransfer/Transferable getTransferDataFlavors %()[Ljava/awt/datatransfer/DataFlavor;  x-java-openide-dataobjectdnd  application  mask
 ! " # $ %  java/awt/datatransfer/DataFlavor 
getSubType ()Ljava/lang/String;
 ' ( ) * + java/lang/String equals (Ljava/lang/Object;)Z
 ! - . % getPrimaryType
 ! 0 1 2 getParameter &(Ljava/lang/String;)Ljava/lang/String;
 4 5 6 7 8 java/lang/Integer valueOf '(Ljava/lang/String;)Ljava/lang/Integer;
 4 : ; < intValue ()I  > ? @ getTransferData 6(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object; B org/openide/loaders/DataObject
 A D E F isValid ()Z H java/lang/NumberFormatException
  J K L maybeReportException (Ljava/lang/Exception;)V N java/lang/ClassCastException P java/io/IOException	 A R S T LOG Ljava/util/logging/Logger; V java/lang/StringBuilder
 U  Y 3Object in clipboard refers to a non existing file. 
 U [ \ ] append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 O _ ` % toString
 U _
 c d e f g java/util/logging/Logger fine (Ljava/lang/String;)V i 0java/awt/datatransfer/UnsupportedFlavorException	 k l m n o ,org/openide/util/datatransfer/ExTransferable multiFlavor "Ljava/awt/datatransfer/DataFlavor;  q r s isDataFlavorSupported %(Ljava/awt/datatransfer/DataFlavor;)Z u 1org/openide/util/datatransfer/MultiTransferObject t w x < getCount z java/util/ArrayList
 y | 	 } (I)V t  � � getTransferableAt '(I)Ljava/awt/datatransfer/Transferable;
  � � � getDataObject G(Ljava/awt/datatransfer/Transferable;I)Lorg/openide/loaders/DataObject;
 y � � + contains
 y � � + add
 y � � F isEmpty
 y � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � ![Lorg/openide/loaders/DataObject;	  � � � dndMimeType Ljava/text/MessageFormat;
 4 |
 � � � � � java/text/MessageFormat format &(Ljava/lang/Object;)Ljava/lang/String;
 � � � � � java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
 ! � 	 � >(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V �  java/lang/ClassNotFoundException � java/lang/AssertionError
 � � 	 � (Ljava/lang/Object;)V
 � � � % getName
 c � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 c � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � Vapplication/x-java-openide-dataobjectdnd;class=org.openide.loaders.DataObject;mask={0}
 � � 	 g DND_NONE I ConstantValue     DND_COPY    DND_MOVE    DND_COPY_OR_MOVE    DND_LINK@    DND_REFERENCE CLIPBOARD_COPY CLIPBOARD_CUT    COPY MOVE    Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/LoaderTransfer; transferable X(Lorg/openide/loaders/DataObject;I)Lorg/openide/util/datatransfer/ExTransferable$Single; d  Lorg/openide/loaders/DataObject; actions MethodParameters o m nfe !Ljava/lang/NumberFormatException; cce Ljava/lang/ClassCastException; ioe Ljava/io/IOException; ufe 2Ljava/awt/datatransfer/UnsupportedFlavorException; df i t $Ljava/awt/datatransfer/Transferable; action flavors #[Ljava/awt/datatransfer/DataFlavor; len subtype Ljava/lang/String; primary StackMapTable � getDataObjects H(Ljava/awt/datatransfer/Transferable;I)[Lorg/openide/loaders/DataObject; mto 3Lorg/openide/util/datatransfer/MultiTransferObject; count datas Ljava/util/ArrayList; ok Z LocalVariableTypeTable 7Ljava/util/ArrayList<Lorg/openide/loaders/DataObject;>; ex "Ljava/lang/ClassNotFoundException; e Ljava/lang/Exception; <clinit> 
SourceFile LoaderTransfer.java InnerClasses 3org/openide/util/datatransfer/ExTransferable$Single Single!       � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    � 
 � �     	 
  �   /     *� �    �       , �        � �   	 � �  �   A     � Y� *� �    �       \ �        � �      � �  �   	 �  �   	 � �  �  �     �*�  M,� �,�>:::6� �,2:�  � &� �� ,� &� s� /� 3� 96		~� *� = � A:

� C� 
��� @:		� I� 6:		� I� ,:	� Q� UY� WX� Z	� ^� Z� a� b� 
:		� I���g�  E r x G s t x G E r � M s t � M E r � O s t � O E r � h s t � h  �   � "   l  m  n  p  r  s  t  v % w + y - z : { E ~ T  [ � h � p � s � u � x � z �  � � � � � � � � � � � � � � � � � � � � � � v � � �   �  h  � � 
 T ! � � 	 z  � � 	 �  � � 	 �  � � 	 �  � � 	 + � � o   � � �    � � �     � � �   � � �   � � �   � � �   � � �   �  �  �   D 
�  ��    � ' ' '  � S ! A� B GI MI Oa h� �  �   	 �   �   	 � �  �  5     �*� j� p � {*� j� = � tM,� v >� yY� {:66� 4,� ~ � �:� 	6� � �� � �W����� � �� � A� �� ��� *� �M,� � AY,S�� M,� I� M,� I� M,� I�    � � M � � � M   � � O � � � O   � � h � � � h  �   n    �  �  �   � * � - � 6 � D � I � L � O � Y � a � g � � � � � � � � � � � � � � � � � � � � � � � � � � � �   z  D  � �  0 7 � �   h � �    a � �  * W �   - T  �  � �  �  � �  �  � �  �  � �    � � �     � � �      * W �  �   < � 0   t y  �  A� � �     B MG OG h �   	 �   �   
    �   } 	    -� !Y� �� Y� 4Y� �S� �A� �� ��L� �Y+� ��    " # �  �       � # � $ � �     $ 	    - � �   �    c � �    �   
 K L  �   ?     � �� �� �*� ��    �   
    �  � �          �      	 
  �   %      � �Y�� ó ��    �       P 
               k	