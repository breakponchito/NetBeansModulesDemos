����   4 _
      org/openide/util/Utilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
  	 
   java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
      java/lang/Object hashCode ()I	      .org/openide/loaders/DataShadow$DSWeakReference hash I  org/openide/loaders/DataShadow
     
access$300 B(Lorg/openide/loaders/DataShadow;)Lorg/openide/loaders/DataObject;
   ! " # $ org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;	  & ' ( original $Lorg/openide/filesystems/FileObject;
  * + , get ()Ljava/lang/Object;
  . / 0 equals (Ljava/lang/Object;)Z
  2 3 4 
access$900 ()Ljava/util/Map; 6 7 8 9 : java/util/Map remove &(Ljava/lang/Object;)Ljava/lang/Object;
 < = > ? 4 $org/openide/loaders/BrokenDataShadow getDataShadowsSet A java/lang/Runnable (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable s  Lorg/openide/loaders/DataShadow; this 0Lorg/openide/loaders/DataShadow$DSWeakReference; o Ljava/lang/Object; LocalVariableTypeTable 5Lorg/openide/loaders/DataShadow$DSWeakReference<TT;>; TT; StackMapTable MethodParameters 	Signature (TT;)V him mine 3Lorg/openide/loaders/DataShadow$DSWeakReference<*>; run ()V Y java/lang/Throwable L<T:Ljava/lang/Object;>Ljava/lang/ref/WeakReference<TT;>;Ljava/lang/Runnable; 
SourceFile DataShadow.java InnerClasses DSWeakReference 0    @        ' (       B  C   �     (*+� � *+� � +� � +� M*,� � � %�    D      � � � � � '� E        F G    ( H I     ( J K  L       ( H M     ( J N  O    � '      P    J   Q    R     C   A     *� �    D      � E        H I   L        H M    / 0  C   �     "*� )M,� �+� � +� N,-� )� -��    D      � � 	� � � �  � E   *   	 S I    " H I     " J K    T K  L       	 S U    " H M     T N  O   	 �   P    J    V W  C   �     B*� %� #� 1YL¸ 1*� %� 5 W+ç M+�,�� � ;YL¸ ;*� 5 W+ç N+�-��        "    - 9 <   < ? <    D   "   � � � � '� -� 7� A� E       B H I   L       B H M   O   ) �      X� �      X�   Q    Z [    \ ]   
    ^ 