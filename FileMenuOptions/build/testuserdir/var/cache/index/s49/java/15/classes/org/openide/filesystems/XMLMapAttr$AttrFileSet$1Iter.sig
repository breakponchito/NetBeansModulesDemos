����   4 [	      4org/openide/filesystems/XMLMapAttr$AttrFileSet$1Iter this$0 0Lorg/openide/filesystems/XMLMapAttr$AttrFileSet;
  	 
   java/lang/Object <init> ()V
      .org/openide/filesystems/XMLMapAttr$AttrFileSet 
access$900 V(Lorg/openide/filesystems/XMLMapAttr$AttrFileSet;)Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject getAttributes ()Ljava/util/Enumeration;	     attrs Ljava/util/Enumeration;     ! " java/util/Enumeration hasMoreElements ()Z  $ % & nextElement ()Ljava/lang/Object; ( java/lang/String * *org/openide/filesystems/XMLMapAttr$FOEntry
 ) ,  - _(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Lorg/openide/filesystems/XMLMapAttr$1;)V / 'java/lang/UnsupportedOperationException
 . 	
  2 3 4 next ()Ljava/util/Map$Entry; 6 java/util/Iterator 	Signature +Ljava/util/Enumeration<Ljava/lang/String;>; 3(Lorg/openide/filesystems/XMLMapAttr$AttrFileSet;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/filesystems/XMLMapAttr$AttrFileSet$1Iter; MethodParameters hasNext s Ljava/lang/String; =()Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>; remove #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; cLjava/lang/Object;Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>; 
SourceFile XMLMapAttr.java EnclosingMethod L M iterator ()Ljava/util/Iterator; InnerClasses P "org/openide/filesystems/XMLMapAttr AttrFileSet Iter FOEntry U $org/openide/filesystems/XMLMapAttr$1 W java/util/Map$Entry Y java/util/Map Entry      5       7    8         9  :   P     *+� *� **� � � � �    ;   
    	 <        = >         ?    �  @ "  :   4     
*� �  �    ;      	 <       
 = >    3 4  :   V     *� � # � 'L� )Y*� � +� +�    ;   
     <        = >     A B  7    C  D   :   2     � .Y� 0�    ;       <        = >   E     F  A 3 &  :   /     *� 1�    ;       <        = >    7    G H    I J     K N   *   O Q     R   ) O S  T     V X Z	