����   4 L	      Oorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$1ExplorerTransferable this$0 ;Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;
  	 
   java/lang/Object <init> ()V	     delegate $Ljava/awt/datatransfer/Transferable;
      org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;	     lookup Lorg/openide/util/Lookup;       "java/awt/datatransfer/Transferable getTransferDataFlavors %()[Ljava/awt/datatransfer/DataFlavor;  " # $ isDataFlavorSupported %(Ljava/awt/datatransfer/DataFlavor;)Z  & ' ( getTransferData 6(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object; *  org/openide/util/Lookup$Provider z(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;Ljava/awt/datatransfer/Transferable;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this QLorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$1ExplorerTransferable; node Lorg/openide/nodes/Node; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; flavor "Ljava/awt/datatransfer/DataFlavor; 
Exceptions : 0java/awt/datatransfer/UnsupportedFlavorException < java/io/IOException 	getLookup ()Lorg/openide/util/Lookup; 
SourceFile ExplorerActionsImpl.java EnclosingMethod C 9org/netbeans/modules/openide/explorer/ExplorerActionsImpl E F wrapTransferable b(Ljava/awt/datatransfer/Transferable;Lorg/openide/nodes/Node;)Ljava/awt/datatransfer/Transferable; InnerClasses ExplorerTransferable J org/openide/util/Lookup Provider       )                   +  ,   k     *+� *� *,� *-� � �    -      S 	T U V .   *     / 0                  1 2  3    �    1        ,   4     
*� �  �    -      Z .       
 / 0   4     5    # $  ,   ?     *� +� ! �    -      _ .        / 0      6 7  3    6   4     5    ' (  ,   ?     *� +� % �    -      e .        / 0      6 7  8     9 ; 3    6   4     5    = >  ,   /     *� �    -      j .        / 0   4     5    ?    @ A    B D G        H   ) I K	