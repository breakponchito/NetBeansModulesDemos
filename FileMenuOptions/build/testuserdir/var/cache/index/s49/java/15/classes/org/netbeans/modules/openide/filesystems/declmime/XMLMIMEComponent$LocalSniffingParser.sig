����   4 A
      java/lang/ThreadLocal <init> ()V	  	 
   Vorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$LocalSniffingParser wref Ljava/lang/ref/WeakReference;  Qorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser
    java/lang/ref/WeakReference
     (Ljava/lang/Object;)V
     get ()Ljava/lang/Object;
  
     set
      (Ljava/lang/ref/WeakReference;)V
  ! " # initialValue ()Ljava/lang/ref/WeakReference; 	Signature rLjava/lang/ref/WeakReference<Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser;>; Code LineNumberTable LocalVariableTable this XLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$LocalSniffingParser; parser SLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser; t()Ljava/lang/ref/WeakReference<Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	getParser U()Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser; cache cached LocalVariableTypeTable StackMapTable data MethodParameters u(Ljava/lang/ref/WeakReference<Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser;>;)V �Ljava/lang/ThreadLocal<Ljava/lang/ref/WeakReference<Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser;>;>; 
SourceFile XMLMIMEComponent.java InnerClasses > Borg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent LocalSniffingParser SniffingParser            $    %       &   <     
*� *� �    '       �  � 	 � (       
 ) *    " #  &   U     � Y� L*� Y+� � *� �    '       �  �  � (        ) *     + ,  $    - .     /    0 1  &   �     2*� � L+� � M,� � Y� M*� Y,� � **� � ,�    '       �  �  �  �  � ( � 0 � (        2 ) *    * 2    " 3 ,  4      * 2 %  5    � 0       &   G      �    '       � (        ) *      6   4        6 %  7    6   $    8 .     /  A    &   3     	*+� � �    '       � (       	 ) *   7    6  .     /  D "   &   /     *�  �    '       � (        ) *   .     /    $    9 :    ; <      = ? 
  = @ 
