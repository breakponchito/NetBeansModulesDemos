����   46	      ,org/openide/loaders/DataObjectPool$Validator refusingObjects Ljava/util/Set;
  	 
   java/lang/Object <init> ()V	     err Ljava/util/logging/Logger;	      java/util/logging/Level FINE Ljava/util/logging/Level;
      java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z  java/lang/StringBuilder
  	 ! enter: 
  # $ % append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ' $ ( -(Ljava/lang/Object;)Ljava/lang/StringBuilder; *  on thread: 
 , - . / 0 java/lang/Thread currentThread ()Ljava/lang/Thread;
  2 3 4 toString ()Ljava/lang/String;
  6 7 8 fine (Ljava/lang/String;)V	  : ; < current Ljava/lang/Thread;	  > ? @ reenterCount I B current thread, rentered: 
  D $ E (I)Ljava/lang/StringBuilder;	  G H @ waiters J Waiting as waiter: 
  L M  wait O java/lang/InterruptedException Q Wait finished, waiters:  S  new current: 	  U V  files X New files:  Z [ \ ] ^ java/util/Set addAll (Ljava/util/Collection;)Z ` Added files:  b So they are: 
  d e  notify g Exit and notify from  i Exit reentrant: 	  k l  createdFiles
 n o p q r org/openide/loaders/DataFolder getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 t u v w x org/openide/loaders/FolderList changedDataSystem '(Lorg/openide/filesystems/FileObject;)V	  z {  recognizedFiles Z } ~  add (Ljava/lang/Object;)Z
 � � � � � org/openide/loaders/DataObject 	getLoader "()Lorg/openide/loaders/DataLoader;
 � o Z � �  contains Z � � � size ()I Z � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator next ()Ljava/lang/Object; � java/util/HashSet
 � 	 � java/util/LinkedList
 � 	
  � � � enter  (Ljava/util/Set;)Ljava/util/Set;
 � � � � � "org/openide/loaders/DataObjectPool access$1200 &()Lorg/openide/loaders/DataLoaderPool; � � � � hasNext ()Z
  � � � goOn � "org/openide/filesystems/FileObject � 	Iterate: 
 � � � � getPOOL &()Lorg/openide/loaders/DataObjectPool;
 � � � � find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; � 
Original: 
 � � � � � "org/openide/loaders/DataLoaderPool findDataObject v(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataLoader$RecognizedFiles;)Lorg/openide/loaders/DataObject; � } � java/util/List � Invalidate:  � � �  remove
 � � � � setValid (Z)V �  java/beans/PropertyVetoException �   Refusing:  � -org/openide/loaders/DataObjectExistsException � java/io/IOException
 � � � � 4 java/lang/Class getName
  � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	  � �  WARNING
  � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � )java/util/ConcurrentModificationException � New iterator over: 
  � �  exit � will do refreshAllFolders: 
 � � � � access$1300 '(Lorg/openide/loaders/DataObjectPool;)V � refreshAllFolders done � (org.openide.loaders.DataObject.Validator � .org/openide/loaders/DataLoader$RecognizedFiles 	Signature 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; 1Ljava/util/Set<Lorg/openide/loaders/DataObject;>; Code LineNumberTable LocalVariableTable this .Lorg/openide/loaders/DataObjectPool$Validator; set Z LocalVariableTypeTable StackMapTable MethodParameters l(Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;)Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; refreshFolderOf #(Lorg/openide/loaders/DataFolder;)V df  Lorg/openide/loaders/DataFolder; markRecognized fo $Lorg/openide/filesystems/FileObject; notifyRegistered 
reregister C(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataLoader;)Z obj  Lorg/openide/loaders/DataObject; loader  Lorg/openide/loaders/DataLoader; 
revalidate ex "Ljava/beans/PropertyVetoException; 
invalidate orig ioe Ljava/io/IOException; cme +Ljava/util/ConcurrentModificationException; pool $Lorg/openide/loaders/DataLoaderPool; it Ljava/util/Iterator; s createObjects Ljava/util/List; :Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; 2Ljava/util/List<Lorg/openide/loaders/DataObject;>;) java/lang/Throwable h(Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;)Ljava/util/Set<Lorg/openide/loaders/DataObject;>; 
access$700 ?(Lorg/openide/loaders/DataObjectPool$Validator;)Ljava/util/Set; x0 <clinit> 
SourceFile DataObjectPool.java InnerClasses 	Validator4 org/openide/loaders/DataLoader RecognizedFiles 0    �        V   �    �  ; <    H @    ? @    {   �    �     �    �  l   �    �       �   /     *� �    �       �           " � �  �  4    W� � � =� '� � Y�  � "+� &)� "� +� &� 1� 5*� 9� +� 0*Y� =`� =� �� � Y� A� "*� =� C� 1� 5� |*Y� F`� F� � � Y� I� "*� F� C� 1� 5*� 9� *� K���N���*� +� 9*Y� Fd� F� +� � Y� P� "*� F� CR� "*� 9� &� 1� 5*� T� (� � � Y� W� "+� &� 1� 5*+� T� G*� T+� Y W� 8� � Y� _� "+� &� 1� 5� � Y� a� "*� T� &� 1� 5*� T�  � � � N  �   r     
! " 2$ <% F& J' i* s+ w, �. �0 �2 �1 �2 �4 �5 �6 �7 �; �< �=?ABC6DRH �       W     W   
M �       W �     	� 26)M N<#� C      �    " �   �   �     s� � � <*� =� :*� 9*� F� *� T*� c� K� � Y� f� "� +� &� 1� 5� -*Y� =d� =� � � Y� h� "*� =� C� 1� 5�    �   2   N 
O P Q R "T &U *V HY RZ V[ r^ �       s    
 i �     � "%) " � �  �   B     *� F� � �    �      d �              @ 	  �   T     *� j� 
+� m� s�    �      k m o �             
        
    x  �   D     *� y+� | W�    �   
   w x �                     x  �   X     *� j� *� j+� | W�    �      { | ~ �                          �   �     6*� y� �+� �,� �*� j+� �� � � �*� +� � � ��    �   & 	  � � 	� � � #� %� 2� 4� �        6      6    6     		   	      �  �      l+� � � 3*� 9� +� )*� T� "*� T+� � � � � � � � �Y� ��� �Y� �M� � � >*+� �L*� �Y� �� y*� �Y� �� *� �Y� �� j� �:+� � :� � �I*� ��B� � � �:� � � Y� �� "� &� 1� 5*� y� � � �6� �� �:� � � Y� �� "� &� 1� 5� ���*� �:	,	� � W	� � 6� ]� � � Y� ƶ "	� &� 1� 5� � � ˧ /:
*� � | W� � � Y� Ѷ "� &� 1� 5��:���:�� ׸ ܲ �� ���:+� � :� (� � � � � Y� � "+� &� 1� 5���*� :*� y*� *� j*� �� !� � Y� � "+� � � C� 1� 5� �� �� � �� 5�:*� y*� *� j*� �� !� � Y� � "+� � � C� 1� 5� �� �� � �� 5� 	GMP � � � � �| � � �� � �|� � � �� � �|� � L�    "     �   D  � � 2� :� B� L� R� ]� h� s� x� �� �� �� �� �� �� �� �� �� �� �� �����"�&�@�G�M�P�R�^�b�|����������������������������� ���
� �'�, 159W]
ai �   � R * 
 � �  � �  v 	 � � �  � 1  x�   ��!"   l     l#   B*$%  L  �       ��!&   l# �  B*$'    � :� E   Z � � �  � : �� 8 ��  �@$O �� +   Z � � �  B �D �U �2� : Z�    Z � (� 6   Z �       (     #   �   *+,  �   /     *� �    �       �       -   .   �   !      	�� ܳ �    �       /   01      �2  �35	