����   4 \  java/lang/NullPointerException  (The mimePath parameter must not be null.
     <init> (Ljava/lang/String;)V
 
     +org/netbeans/api/editor/mimelookup/MimePath 	getLookup ()Lorg/openide/util/Lookup;
 
    parse A(Ljava/lang/String;)Lorg/netbeans/api/editor/mimelookup/MimePath;
      -org/netbeans/api/editor/mimelookup/MimeLookup H(Lorg/netbeans/api/editor/mimelookup/MimePath;)Lorg/openide/util/Lookup;  (The mimeType parameter must not be null.
 
    get
     I(Lorg/netbeans/api/editor/mimelookup/MimePath;Lorg/openide/util/Lookup;)V
 ! " #  $ org/openide/util/Lookup ()V	  & ' ( mimePathLookup Lorg/openide/util/Lookup;	  * + , mimePath -Lorg/netbeans/api/editor/mimelookup/MimePath;
 
 .  / n(Lorg/netbeans/api/editor/mimelookup/MimePath;Ljava/lang/String;)Lorg/netbeans/api/editor/mimelookup/MimePath;
 ! 1 2 3 lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 ! 5 2 6 D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result; Code LineNumberTable LocalVariableTable StackMapTable MethodParameters -(Ljava/lang/String;)Lorg/openide/util/Lookup; Ljava/lang/String; getMimeLookup C(Ljava/lang/String;)Lorg/netbeans/api/editor/mimelookup/MimeLookup; mimeType path 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; this /Lorg/netbeans/api/editor/mimelookup/MimeLookup; childLookup newPath clazz Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; 	Signature 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; template "Lorg/openide/util/Lookup$Template; 'Lorg/openide/util/Lookup$Template<TT;>; d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; 
SourceFile MimeLookup.java InnerClasses W  org/openide/util/Lookup$Template Template Z org/openide/util/Lookup$Result Result 1  !     ' (    + ,    	    7   N     *� � Y� �*� 	�    8       X  Y  \ 9        + ,   :     ;    +   	  <  7   2     *� � �    8       o 9        + =   ;    +   	 > ?  7   l     #*� � Y� �*� L� Y+*� � 	� �    8       {  |  ~   9       # @ =     A ,  :     ;    @   B     C     D       7   Y     *�  *,� %*+� )�    8       �  � 	 �  � 9         E F      A ,     2 (  ;   	 A   2    G ?  7   w     $+� � Y� �*� )+� -M� Y,,� 	� �    8       �  �  �  � 9        $ E F     $ @ =    H ,  :     ;    @   B     C     D    2 3  7   O     	*� %+� 0�    8       � 9       	 E F     	 I J  K       	 I L  ;    I   B     M    N C     D    2 6  7   O     	*� %+� 4�    8       � 9       	 E F     	 O P  K       	 O Q  ;    O   B     M    R C     D    S    T U     V ! X  Y ! [	