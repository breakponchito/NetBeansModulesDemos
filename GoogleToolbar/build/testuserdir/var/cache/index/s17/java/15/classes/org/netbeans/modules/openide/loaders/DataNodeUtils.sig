����   4 W
      java/lang/Object <init> ()V	  	 
   2org/netbeans/modules/openide/loaders/DataNodeUtils RP #Lorg/openide/util/RequestProcessor;
      "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;	     FS_TO_RP Ljava/util/Map;      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  !org/openide/util/RequestProcessor   java/lang/StringBuilder
   # Data System Nodes for 
  % & ' append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ) * + , - "org/openide/filesystems/FileSystem getDisplayName ()Ljava/lang/String;
  / 0 - toString
  2  3 (Ljava/lang/String;)V  5 6 7 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 9 1org/openide/filesystems/FileStateInvalidException ; Data System Nodes = java/util/WeakHashMap
 <  	Signature XLjava/util/Map<Lorg/openide/filesystems/FileSystem;Lorg/openide/util/RequestProcessor;>; Code LineNumberTable LocalVariableTable this 4Lorg/netbeans/modules/openide/loaders/DataNodeUtils; reqProcessor %()Lorg/openide/util/RequestProcessor; I(Lorg/openide/filesystems/FileObject;)Lorg/openide/util/RequestProcessor; rp fs $Lorg/openide/filesystems/FileSystem; ex 3Lorg/openide/filesystems/FileStateInvalidException; fo $Lorg/openide/filesystems/FileObject; StackMapTable R java/lang/Throwable MethodParameters <clinit> 
SourceFile DataNodeUtils.java 1               ?    @      A   3     *� �    B   
    '  ( C        D E   	 F G  A         � �    B       + 	 F H  A  *     ]*� � �*� L� YM² +�  � N-� ,� Y� Y� !"� $+� (� $� .� 1N� +-� 4 W-,ð:,��M� �   P Q   Q U Q    P X 8 Q X X 8  B   6    5  6  :  ;  <   = $ > 5 ? B @ M B Q C X D Y E C   *    1 I    K J K  Y  L M    ] N O   P   / � D )  �    )   Q�     8 S    N    T   A   3      � Y:� 1� � <Y� >� �    B   
    "  $  U    V