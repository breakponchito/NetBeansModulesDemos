����   4 m
      5org/openide/filesystems/StreamPool$NotifyOutputStream setOriginal (Ljava/io/OutputStream;)V	   	 
 emptyOs Ljava/io/OutputStream;
      java/io/FilterOutputStream <init>	     closed Z	     fo (Lorg/openide/filesystems/AbstractFolder;
      "org/openide/filesystems/StreamPool 
access$300 ()Z  java/lang/Exception
  !  " ()V	  $ % & ex Ljava/lang/Exception;	  ( )  fireFileChanged	  + , 
 out
 . / 0 1 2 java/io/OutputStream write ([BII)V	  +
 . 5 6 " flush
  8 9 " close
  ; < = 
access$400 B(Lorg/openide/filesystems/AbstractFolder;Ljava/io/OutputStream;Z)V
 ? @ A B " #org/openide/filesystems/MIMESupport 
freeCaches
 D E F G " java/lang/Object 	notifyAll I java/io/ByteArrayOutputStream
 H ! ,(Lorg/openide/filesystems/AbstractFolder;Z)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/filesystems/StreamPool$NotifyOutputStream; StackMapTable S &org/openide/filesystems/AbstractFolder MethodParameters os b [B off I len 
Exceptions ] java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; a java/lang/Throwable getException ()Ljava/lang/Exception; 
access$200 P(Lorg/openide/filesystems/StreamPool$NotifyOutputStream;Ljava/io/OutputStream;)V x0 x1 <clinit> 
SourceFile StreamPool.java InnerClasses NotifyOutputStream 0       	 
    % &               )       K  L   �     (*� � *� *+� � � *� Y�  � #*� '�    M      S L T V W "Z '[ N        ( O P     (      ( )   Q    � "   R   T   	    )       L   >     *+� *�    M   
   ^ _ N        O P      U 
  T    U    1 2  L   W     *� *+� -�    M   
   f 
g N   *     O P      V W     X Y     Z Y  [     \ T    V   X   Z   ^     _    9 "  L  >     n*� � i*� *� #*� 3� 4*� 7*� **� '� :� >YL�� C+ç M+�,�� .N*� **� '� :� >Y:�� Cç :��-��  0 7 :   : = :     B   X ` c   c h c    M   J   k l m o p r (s +t 0u 5v ?w Br Os Rt Xu ]v kw my N       n O P   Q   4 � :   D  `� B `�       ` D  `� �  [     \ ^     _    b c  L   /     *� #�    M      | N        O P   d e  L   :     *+� �    M      I N        f P      g 
   h "  L   #      � HY� J� �    M      J  i    j k   
    l 