����   4 �
      java/lang/Object <init> ()V   org/openide/util/Lookup$Template 
 (org/netbeans/spi/actions/AbstractSavable
     8(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V	       org/netbeans/api/actions/Savable REGISTRY Lorg/openide/util/Lookup;
      org/openide/util/Lookup lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; ! " # $ % java/util/Collection iterator ()Ljava/util/Iterator; ' ( ) * + java/util/Iterator hasNext ()Z ' - . / next ()Ljava/lang/Object;
 	 1 2  
handleSave
 	 4 5  
unregister	 	 7 8 9 LOG Ljava/util/logging/Logger;	 ; < = > ? java/util/logging/Level WARNING Ljava/util/logging/Level; A aSavable {0} is not in Savable.REGISTRY! Have not you forgotten to call register() in constructor?
  C D E getClass ()Ljava/lang/Class;
 G H I J K java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 M N O P Q 0org/netbeans/modules/openide/awt/SavableRegistry register -(Lorg/netbeans/spi/actions/AbstractSavable;)V
 M S 5 Q
 	 U V W findDisplayName ()Ljava/lang/String;
 Y Z [ \ W java/lang/Class getName
 G ^ _ ` 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this *Lorg/netbeans/spi/actions/AbstractSavable; save s "Lorg/netbeans/api/actions/Savable; t "Lorg/openide/util/Lookup$Template; LocalVariableTypeTable NLorg/openide/util/Lookup$Template<Lorg/netbeans/spi/actions/AbstractSavable;>; StackMapTable 
Exceptions p java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; equals (Ljava/lang/Object;)Z MethodParameters obj hashCode ()I toString <clinit> 
SourceFile AbstractSavable.java InnerClasses Template Result! 	      8 9   
     a   3     *� �    b   
    G  H c        d e    f   a   �     P� Y	*� L� +� � �   M,� & � ,� , � N-*� *� 0*� 3���߲ 6� :@*� B� F�    b   .    Q  R / S 4 T 8 U < V = X @ Y I Z L Y O [ c      /  g h    P d e    D i j  k      D i l  m    �   ' �  n     o q     r   V W   2   n     o s t  u    v   q     r   w x  q     r    P   a   3     *� L�    b   
    �  � c        d e    5   a   3     *� R�    b   
    �  � c        d e    y W  a   /     *� T�    b       � c        d e   q     r    z   a   $      � X� ]� 6�    b       C  {    | }       ~    	