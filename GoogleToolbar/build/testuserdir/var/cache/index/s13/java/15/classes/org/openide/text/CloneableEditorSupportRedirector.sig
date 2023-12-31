����   4 k
      java/lang/Object <init> ()V
  	 
   1org/openide/text/CloneableEditorSupportRedirector findRedirect U(Lorg/openide/text/CloneableEditorSupport;Z)Lorg/openide/text/CloneableEditorSupport;	     CHECKED Ljava/lang/ThreadLocal;
      java/lang/ThreadLocal get ()Ljava/lang/Object;  java/util/Map  java/util/IdentityHashMap
  
     set (Ljava/lang/Object;)V
 ! " # $ % 'org/openide/text/CloneableEditorSupport 	getLookup ()Lorg/openide/util/Lookup;  ' ( ) containsKey (Ljava/lang/Object;)Z  + , - remove &(Ljava/lang/Object;)Ljava/lang/Object;  / 0 1 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 3 4 5 6 % org/openide/util/Lookup 
getDefault
 3 8 9 : 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; < = > ? @ java/util/Collection iterator ()Ljava/util/Iterator; B C D E F java/util/Iterator hasNext ()Z B H I  next
  K L M redirect D(Lorg/openide/util/Lookup;)Lorg/openide/text/CloneableEditorSupport;
   	Signature lLjava/lang/ThreadLocal<Ljava/util/Map<Lorg/openide/util/Lookup;Lorg/openide/text/CloneableEditorSupport;>;>; Code LineNumberTable LocalVariableTable this 3Lorg/openide/text/CloneableEditorSupportRedirector; MethodParameters env T(Lorg/openide/text/CloneableEditorSupport;)Lorg/openide/text/CloneableEditorSupport; one )Lorg/openide/text/CloneableEditorSupport; ces r check Z all Ljava/util/Map; lkp Lorg/openide/util/Lookup; LocalVariableTypeTable SLjava/util/Map<Lorg/openide/util/Lookup;Lorg/openide/text/CloneableEditorSupport;>; StackMapTable g java/lang/Throwable <clinit> 
SourceFile %CloneableEditorSupportRedirector.java!          O    P      Q   /     *� �    R       $ S        T U   L M  V    W     X  Q   0     *� �    R       3 S        Y Z   V    Y       Q  �  	   �� � � M,� � Y� M� ,� *�  N� ,-� & � :,-� * W�,-*� . W� 2� 7� ; :� A � 4� G � :-� J:� *� :,-� * W����:,-� * W�:,-� * W�  " 3 �   > � �   � � �   � � �    R   Z    6 
 7  8  9  ; " = 0 > 3 I ; > > @ G A l B t C  D � I � D � F � G � I � G � I � J S   >  t  [ Z  l " \ U    � Y Z     � ] ^  
 � _ `  " � a b  c     
 � _ d  e    �  �   3�  B7� M f V   	 Y   ]    h   Q   #      � Y� N� �    R       %  i    j