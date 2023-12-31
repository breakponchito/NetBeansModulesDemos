����   4 �	      +org/openide/loaders/DataObject$ProgressInfo 
terminated +Ljava/util/concurrent/atomic/AtomicBoolean;
  	 
   java/lang/Object <init> ()V	     NAME_LEN_LIMIT I  )java/util/concurrent/atomic/AtomicBoolean
  	  org/openide/loaders/DataFolder  -org/openide/loaders/DataObject$ProgressInfo$1
     0(Lorg/openide/loaders/DataObject$ProgressInfo;)V
       (org/netbeans/api/progress/ProgressHandle createHandle \(Ljava/lang/String;Lorg/openide/util/Cancellable;)Lorg/netbeans/api/progress/ProgressHandle;
  " # $ setInitialDelay (I)V
  & '  start	  ) * + progressHandle *Lorg/netbeans/api/progress/ProgressHandle;	  - . / root  Lorg/openide/loaders/DataObject;
 1 2 3 4 5 org/openide/loaders/DataObject 
access$800 ()Ljava/util/logging/Logger;	 7 8 9 : ; java/util/logging/Level FINEST Ljava/util/logging/Level; = Update ProgressInfo: {0}
 ? @ A B C java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 1 E F G getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 1 I J K getName ()Ljava/lang/String;
 M N O P K "org/openide/filesystems/FileObject getPath
 R S T U V java/lang/String length ()I X java/lang/StringBuilder
 W 	 [ ...
 W ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 R a b c 	substring (II)Ljava/lang/String;
 W e f K toString
  h i j progress (Ljava/lang/String;)V
  l m n set (Z)V
  p q r get ()Z
  t u  finish ConstantValue   � 5(Ljava/lang/String;Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable can Lorg/openide/util/Cancellable; this -Lorg/openide/loaders/DataObject$ProgressInfo; name Ljava/lang/String; ph StackMapTable � org/openide/util/Cancellable MethodParameters updateProgress #(Lorg/openide/loaders/DataObject;)V displayName dob 	terminate isTerminated finishIfDone #(Lorg/openide/loaders/DataObject;)Z currentFile 
access$700 Z(Lorg/openide/loaders/DataObject$ProgressInfo;)Ljava/util/concurrent/atomic/AtomicBoolean; x0 
SourceFile DataObject.java InnerClasses ProgressInfo            v    w  * +         . /      x  y   �     K*� * �� *� Y� � ,� � � Y*� N� N+-� :�� !� %*� (*,� ,�    z   2   � � � � � )� +� 2� :� ?� E� J� {   >  &  | }    K ~      K � �    K . /  +   | }  2  � +  �    � )   R 1  �  � �   	 �   .    � �  y   �     _� 0� 6<+� >+� D� +� HM� +� D� LM,� 2,� Q �� (� WY� YZ� \,,� Q �d`,� Q� `� \� dM*� (,� g�    z   .   � � � � #� 1� ?� I� L� V� ^� {   *    � �    _ ~      _ � /  # < � �  �   
 �  R2 �    �    �   y   7     	*� � k�    z   
   � � {       	 ~     � r  y   2     *� � o�    z      � {        ~     � �  y   \     +*� ,� *� (� s��    z      � � � � {        ~       � /  �     �    �   � �  y   /     *� �    z      � {        �     �    � �      1 �        