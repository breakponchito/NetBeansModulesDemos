����   4 �
      "org/openide/loaders/DataNode$PropL updateStatusListener ()V	   	 
 this$0 Lorg/openide/loaders/DataNode;
      java/lang/Object <init>
      org/openide/loaders/DataNode 
fireChange #(Ljava/beans/PropertyChangeEvent;)V	     previous $Lorg/openide/filesystems/FileSystem;	     weakL ,Lorg/openide/filesystems/FileStatusListener;
    ! " # "org/openide/filesystems/FileSystem removeFileStatusListener /(Lorg/openide/filesystems/FileStatusListener;)V
  % & ' 
access$100 @(Lorg/openide/loaders/DataNode;)Lorg/openide/loaders/DataObject;
 ) * + , - org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 / 0 1 2 3 "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;
 5 6 7 8 9  org/openide/filesystems/FileUtil weakFileStatusListener l(Lorg/openide/filesystems/FileStatusListener;Ljava/lang/Object;)Lorg/openide/filesystems/FileStatusListener;
  ; < # addFileStatusListener > 1org/openide/filesystems/FileStateInvalidException
  @ A B getDataObject "()Lorg/openide/loaders/DataObject; D #org/openide/loaders/MultiDataObject
 C *
 G H I J K 'org/openide/filesystems/FileStatusEvent 
hasChanged '(Lorg/openide/filesystems/FileObject;)Z
 C M N O getSecondary ()Ljava/util/Map; Q R S T U java/util/Map keySet ()Ljava/util/Set; W X Y Z [ java/util/Set iterator ()Ljava/util/Iterator; ] ^ _ ` a java/util/Iterator hasNext ()Z ] c d e next ()Ljava/lang/Object;
 ) g h U files
  j k e access$1100
 G m n a isNameChange
  p q U access$1200 s java/util/HashSet
 r 
  v w x access$1202  (Ljava/util/Set;)Ljava/util/Set; W z { | add (Ljava/lang/Object;)Z
 G ~  a isIconChange
  � � U access$1300
  � � x access$1302
  � � a access$1400
  � � � access$1402 (Z)Z
  � � � access$1500 *()Lorg/openide/util/RequestProcessor$Task;
 � � � � � 2org/netbeans/modules/openide/loaders/DataNodeUtils reqProcessor %()Lorg/openide/util/RequestProcessor; � )org/openide/loaders/DataNode$NamesUpdater
 � �  � #(Lorg/openide/loaders/DataNode$1;)V
 � � � � � !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
  � � � access$1502 R(Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Task;
 � � � � � &org/openide/util/RequestProcessor$Task schedule (I)V
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
  � � � 
access$500 0(Lorg/openide/loaders/DataNode;Ljava/util/Set;)V � !java/beans/PropertyChangeListener � *org/openide/filesystems/FileStatusListener � "org/openide/nodes/CookieSet$Before !(Lorg/openide/loaders/DataNode;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/DataNode$PropL; MethodParameters propertyChange ev  Ljava/beans/PropertyChangeEvent; ex 3Lorg/openide/filesystems/FileStateInvalidException; StackMapTable annotationChanged ,(Lorg/openide/filesystems/FileStatusEvent;)V fo $Lorg/openide/filesystems/FileObject; multi %Lorg/openide/loaders/MultiDataObject; thisChanged Z )Lorg/openide/filesystems/FileStatusEvent; � java/lang/Throwable beforeLookup (Ljava/lang/Class;)V clazz Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; 	Signature (Ljava/lang/Class<*>;)V 
access$400 '(Lorg/openide/loaders/DataNode$PropL;)V x0 
SourceFile DataNode.java InnerClasses PropL Task NamesUpdater � org/openide/loaders/DataNode$1 � org/openide/nodes/CookieSet Before      � � �            	 
      �  �   @     *+� *� *� �    �      � 	� � �        � �   �    	  �   �   A     	*� +� �    �   
   � � �       	 � �     	 � �  �    �       �   �     H*� � *� *� � **� � $� (� .� *� � **� 4� *� *� � :� 	L*� �   > A =  �   * 
  � � � #� *� 3� >� A� B� G� �     B  � �    H � �   �   	  M =  � �  �  q    4*� � ?� C� U*� � ?� CN+-� E� F=� :-� L� P � V :� \ �  � b � /:+� F� =� ��ܧ :=*� � $� f� V N-� \ � -� b � /:+� F� =� ���� �� iYN�6+� l� %� o� � rY� t� uW� o*� � y �6+� }� %� �� � rY� t� �W� �*� � y �6� 0� �� *� �W� �� � �� �Y� �� �� �W� 
� �� �-ç 
:-���  �),  ,0,    �   � "  � � � !� %� K� T� V� Y� \ _ a � � � �	 � � � � � � � � � � � �  "'%3' �   R  K  � �   D � �  ! > � �  �  � �  � � � �   4 � �    4 � �  a � � �  �   3 � 5 C ]#� � �  ]!� � $ *� D ��  �    �    � �  �   r     +/� �� *� *� � $� f� ��    �      * 	+ - �        � �      � �  �        � �  �     �    �   �    � � �  �   /     *� �    �      � �        � �    �    � �   *    �  � � �  �  � 
 �       � � �	