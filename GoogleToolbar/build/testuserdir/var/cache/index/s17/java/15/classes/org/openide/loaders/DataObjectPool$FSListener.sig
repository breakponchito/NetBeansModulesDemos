����   4 �	      -org/openide/loaders/DataObjectPool$FSListener this$0 $Lorg/openide/loaders/DataObjectPool;
  	 
   )org/openide/filesystems/FileChangeAdapter <init> ()V
      "org/openide/loaders/DataObjectPool 
access$500 ()Ljava/util/logging/Logger;	      java/util/logging/Level FINE Ljava/util/logging/Level;
      java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z   java/lang/StringBuilder
  	 # fileChanged: 
  % & ' append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ) & * -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  , - . toString ()Ljava/lang/String;
  0 1 2 fine (Ljava/lang/String;)V
  4 5 6 
access$600 <(Lorg/openide/filesystems/FileEvent;Z)Ljava/util/Collection; 8 9 : ; < java/util/Collection iterator ()Ljava/util/Iterator; > ? @ A B java/util/Iterator hasNext ()Z > D E F next ()Ljava/lang/Object; H 'org/openide/loaders/DataObjectPool$Item
 G J K L getDataObjectOrNull "()Lorg/openide/loaders/DataObject; N   to: 
 P Q R S T org/openide/loaders/DataObject notifyFileChanged &(Lorg/openide/filesystems/FileEvent;)V V fileRenamed: 
 P X Y Z notifyFileRenamed ,(Lorg/openide/filesystems/FileRenameEvent;)V \ fileDeleted: 
 P ^ _ T notifyFileDeleted a fileDataCreated: 
 P c d T notifyFileDataCreated
 f g h i j 'org/openide/loaders/ShadowChangeAdapter checkBrokenDataShadows (Ljava/util/EventObject;)V
  l m n checkAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V p fileFolderCreated:  '(Lorg/openide/loaders/DataObjectPool;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/loaders/DataObjectPool$FSListener; MethodParameters fileChanged dobj  Lorg/openide/loaders/DataObject; item )Lorg/openide/loaders/DataObjectPool$Item; fe #Lorg/openide/filesystems/FileEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; fileRenamed )Lorg/openide/filesystems/FileRenameEvent; fileDeleted fileDataCreated fileAttributeChanged ,Lorg/openide/filesystems/FileAttributeEvent; fileFolderCreated 
SourceFile DataObjectPool.java InnerClasses 
FSListener Item 0              q  r   4     
*+� *� �    s      K t       
 u v   w      x T  r       ~� � � � � � Y� !"� $+� (� +� /+� 3� 7 M,� = � G,� C � GN-� I:� � � � � � Y� !M� $� (� +� /� 	+� O����    s   & 	  O P %R CS IT UU oW zX }Y t   *  I 1 y z  C 7 { |    ~ u v     ~ } ~      %� 
 >� > G P� 
�  w    }   �     �    � Z  r       ~� � � � � � Y� !U� $+� (� +� /+� 3� 7 M,� = � G,� C � GN-� I:� � � � � � Y� !M� $� (� +� /� 	+� W����    s   & 	  ] ^ %` Ca Ib Uc oe zf }g t   *  I 1 y z  C 7 { |    ~ u v     ~ } �      %� 
 >� > G P� 
�  w    }   �     �    � T  r       ~� � � � � � Y� ![� $+� (� +� /+� 3� 7 M,� = � G,� C � GN-� I:� � � � � � Y� !M� $� (� +� /� 	+� ]����    s   & 	  k l %n Co Ip Uq os zt }u t   *  I 1 y z  C 7 { |    ~ u v     ~ } ~      %� 
 >� > G P� 
�  w    }   �     �    � T  r       �� � � � � � Y� !`� $+� (� +� /+� 3� 7 M,� = � G,� C � GN-� I:� � � � � � Y� !M� $� (� +� /� 	+� b���+� e�    s   * 
  y z %| C} I~ U o� z� }� �� t   *  I 1 y z  C 7 { |    � u v     � } ~      %� 
 >� > G P� 
�  w    }   �     �    � n  r   =     +� k�    s   
   � � t        u v      } �  w    }   �     �    � T  r   s     *� � � � � � Y� !o� $+� (� +� /+� e�    s      � � %� )� t       * u v     * } ~      % w    }   �     �    �    � �       �  G  � 