����   4 c
      java/lang/Object <init> ()V	  	 
    org/openide/filesystems/FileLock locked Z	     $assertionsDisabled  java/lang/Throwable  
Locked by:
     (Ljava/lang/String;)V	     lockedBy Ljava/lang/Throwable;  java/lang/AssertionError
  
      releaseLock
  " # $ isValid ()Z	 & ' ( ) * "org/openide/filesystems/StreamPool LOG Ljava/util/logging/Logger;	 , - . / 0 java/util/logging/Level SEVERE Ljava/util/logging/Level; 2 java/lang/StringBuilder
 1  5 Not released lock for file: 
 1 7 8 9 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ; < = toString ()Ljava/lang/String; ?  (trapped in finalizer)
 1 ;
 B C D E F java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 H I J K $ java/lang/Class desiredAssertionStatus M "org/openide/filesystems/FileLock$1
 L 	  P Q R NONE "Lorg/openide/filesystems/FileLock; T java/lang/AutoCloseable Code LineNumberTable LocalVariableTable this StackMapTable close #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; finalize assertOn <clinit> 
SourceFile FileLock.java InnerClasses !    S   Q R                      U   q     )*� *� � � *� Y� Z� � � Y� ��    V       >  ; 	 ? ( @ W       ) X R   Y    � (          U   4     *� �    V   
    W  X W        X R    Z   U   3     *� �    V   
    _  ` W        X R   [     \    # $  U   /     *� �    V       i W        X R    ]   U   �     N*� !� I*� <� � Y<� � Y� �� +� %� +� 1Y� 34� 6*� :� 6>� 6� @*� � A�    V   & 	   q  r  s  t ! u % v 8 w J v M z W      @ ^     N X R   Y   	 � !� + [     \    _   U   B      � G� � � � LY� N� O�    V   
    +  1 Y    @  `    a b   
  L      