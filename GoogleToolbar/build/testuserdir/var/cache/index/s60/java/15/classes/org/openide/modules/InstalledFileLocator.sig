����   4 �	      (org/openide/modules/InstalledFileLocator 	instances +[Lorg/openide/modules/InstalledFileLocator;	   	 
 LOCK Ljava/lang/Object;
     getInstances -()[Lorg/openide/modules/InstalledFileLocator;
      java/lang/Object <init> ()V
     locate 5(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
      java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
    ! " emptySet ()Ljava/util/Set;	  $ % & DEFAULT *Lorg/openide/modules/InstalledFileLocator;	  ( ) * result  Lorg/openide/util/Lookup$Result;
 , - . / 0 org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 , 2 3 4 lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; 6 *org/openide/modules/InstalledFileLocator$2
 5 
 9 : ; < = org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
 9 ? @ A allInstances ()Ljava/util/Collection; C D E F G java/util/Collection size ()I C I J K toArray (([Ljava/lang/Object;)[Ljava/lang/Object;  N *org/openide/modules/InstalledFileLocator$1
 M  Q java/lang/String
 S T U V W java/lang/Class getName ()Ljava/lang/String;
 P Y  Z (Ljava/lang/String;)V 	Signature LLorg/openide/util/Lookup$Result<Lorg/openide/modules/InstalledFileLocator;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value RedundantStringConstructorCall Code LineNumberTable LocalVariableTable this MethodParameters relativePath codeNameBase 	localized 	locateAll 6(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set; Ljava/lang/String; Z f Ljava/io/File; StackMapTable q java/io/File s java/util/Set F(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set<Ljava/io/File;>; ,()Lorg/openide/modules/InstalledFileLocator; _result c Ljava/util/Collection; LocalVariableTypeTable CLjava/util/Collection<+Lorg/openide/modules/InstalledFileLocator;>; | java/lang/Throwable 
access$000 
access$100 ()Ljava/lang/Object; 
access$202 X([Lorg/openide/modules/InstalledFileLocator;)[Lorg/openide/modules/InstalledFileLocator; x0 <clinit> 
SourceFile InstalledFileLocator.java InnerClasses Result!       % &   
     
 ) *  [    \  	 
  ]     ^  _[ s ` 	     a   3     *� �    b   
    Z  [ c        d &      e    f   g   h    i j  a   �     *+,� :� � � � �    b   
    � 	 � c   4     d &      f k     g k     h l  	  m n  o    �  pB r e    f   g   h   [    t 	 / u  a         � #�    b       � 
    a  �     �� YK² � 	� *ð*ç L*�+�� YL² 'K+ç M+�,�*� +� +� 1K*� 5Y� 7� 8� YL�*� '+ç N+�-�*� >L� YM�++� B � � H � LY� ,ð:,�� 	                " ( +   + . +   N T W   W Z W   g  �   � � �    b   F    �  �  �  �  � " � & � 0 � 4 � = � H � N � R � \ � a � g � � � c      &  v *   0 W v *   a & w x  y      &  v \   0 W v \   a & w z  o   M �  D {� �      {�   9  � &  9   {� � #  9 C   { }   a         � �    b       , ~   a         � �    b       , � �  a   0     *Y� �    b       , c        �     �   a   F      "� MY� O� #� � '� PY� R� X� �    b       - 
 M  N  U  �    � �     9 , �	 5       M      