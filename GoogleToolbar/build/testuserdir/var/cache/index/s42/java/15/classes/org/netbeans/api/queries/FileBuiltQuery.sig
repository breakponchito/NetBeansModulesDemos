����   4 O
      java/lang/Object <init> ()V
  	 
   "org/openide/filesystems/FileObject isValid ()Z	      'org/netbeans/api/queries/FileBuiltQuery implementations  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;      java/util/Collection iterator ()Ljava/util/Iterator;   ! " #  java/util/Iterator hasNext   % & ' next ()Ljava/lang/Object; ) 5org/netbeans/spi/queries/FileBuiltQueryImplementation ( + , - 	getStatus V(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/queries/FileBuiltQuery$Status;
 / 0 1 2 3 org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 / 5 6 7 lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; 	Signature YLorg/openide/util/Lookup$Result<Lorg/netbeans/spi/queries/FileBuiltQueryImplementation;>; Code LineNumberTable LocalVariableTable this )Lorg/netbeans/api/queries/FileBuiltQuery; s 0Lorg/netbeans/api/queries/FileBuiltQuery$Status; fbqi 7Lorg/netbeans/spi/queries/FileBuiltQueryImplementation; file $Lorg/openide/filesystems/FileObject; StackMapTable MethodParameters <clinit> 
SourceFile FileBuiltQuery.java InnerClasses Result M .org/netbeans/api/queries/FileBuiltQuery$Status Status 1          8    9      :   /     *� �    ;       ( <        = >   	 , -  :   �     ;*� � �� � �  L+�  � +� $ � (M,*� * N-� -�����    ;   "    H  J 	 L ( M 0 N 4 O 6 Q 9 R <      0  ? @  (  A B    ; C D   E    	�    �  F    C    G   :   (      � .(� 4� �    ;   
    &  %  H    I J      / K	 L  N	