����   4 �	      %org/openide/loaders/FolderChildren$1R this$0 $Lorg/openide/loaders/FolderChildren;
  	 
   java/lang/Object <init> ()V	     
positioned Ljava/util/List;	     prevTask Lorg/openide/util/Task;
      org/openide/util/Task waitFinished	     op 0Lorg/openide/loaders/FolderChildren$RefreshMode;	    ! "  .org/openide/loaders/FolderChildren$RefreshMode DEEP
  $ % &  getPositionedFolderChildrenPairs ()Ljava/util/List;	  ( )  
DEEP_LATER	 + , - . / org/openide/nodes/Children MUTEX Lorg/openide/util/Mutex;
 1 2 3 4 5 org/openide/util/Mutex postWriteRequest (Ljava/lang/Runnable;)V
 7 8 9 : ; "org/openide/loaders/FolderChildren 
access$000 @(Lorg/openide/loaders/FolderChildren;)Ljava/util/logging/Logger;	 = > ? @ A java/util/logging/Level FINE Ljava/util/logging/Level; C refreshChildren {0}
 E F G H I java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	  K L  CLEAR
 N O P Q & java/util/Collections 	emptyList
 7 S T U 	applyKeys (Ljava/util/Collection;)V	  W X Y $assertionsDisabled Z [ java/lang/AssertionError ] positioned not prepared
 Z _  ` (Ljava/lang/Object;)V	  b c  SHALLOW e java/lang/IllegalStateException g java/lang/StringBuilder
 f 	 j Unknown op: 
 f l m n append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 f p m q -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 f s t u toString ()Ljava/lang/String;
 d w  x (Ljava/lang/String;)V z refreshChildren {0}, done
 7 | } ~ 
access$100 F(Lorg/openide/loaders/FolderChildren;)Lorg/openide/loaders/FolderList;
 � � � � � org/openide/loaders/FolderList getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 � � � � � "org/openide/filesystems/FileObject getChildren '()[Lorg/openide/filesystems/FileObject;
 � � � � � org/openide/loaders/FolderOrder findFor G(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/FolderOrder;
 � � � � � java/util/Arrays sort ,([Ljava/lang/Object;Ljava/util/Comparator;)V � java/util/ArrayList
 � �  � (I)V
 � � � � asList %([Ljava/lang/Object;)Ljava/util/List;
 � � � � �  org/openide/filesystems/FileUtil getOrder )(Ljava/util/Collection;Z)Ljava/util/List; � � � � � java/util/List iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object;
 7 � � � 
access$200 F(Lorg/openide/loaders/FolderChildren;)Lorg/openide/loaders/DataFilter; � (org/openide/loaders/DataFilter$FileBased � � � � acceptFileObject '(Lorg/openide/filesystems/FileObject;)Z � &org/openide/loaders/FolderChildrenPair
 � �  � '(Lorg/openide/filesystems/FileObject;)V � � � � add (Ljava/lang/Object;)Z
 � � � � � java/lang/Class desiredAssertionStatus � java/lang/Runnable 	Signature :Ljava/util/List<Lorg/openide/loaders/FolderChildrenPair;>; '(Lorg/openide/loaders/FolderChildren;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/loaders/FolderChildren$1R; MethodParameters run StackMapTable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; f *Lorg/openide/loaders/DataFilter$FileBased; fo $Lorg/openide/filesystems/FileObject; arr %[Lorg/openide/filesystems/FileObject; order !Lorg/openide/loaders/FolderOrder; list LocalVariableTypeTable � <()Ljava/util/List<Lorg/openide/loaders/FolderChildrenPair;>; <clinit> 
SourceFile FolderChildren.java EnclosingMethod � � refreshChildren 3(Lorg/openide/loaders/FolderChildren$RefreshMode;)V InnerClasses R RefreshMode � org/openide/loaders/DataFilter 	FileBased      �       �    �             X Y           �  �   P     *+� *� *� *� �    �       � 	 �  � �        � �         �    �  �   �  �     �*� � *� � *� *� � � **� #� *� '� � **� 0�*� � 6� <B*� � D*� � J� *� � M� R� r*� � '� 2� V� *� � � ZY\� ^�*� � M� R*� *� � R� 9*� � a� *� *� #� R� !� dY� fY� hi� k*� � o� r� v�*� � 6� <y*� � D� L*� � 6� <y*� � D+��  G � �    �   ^    �  �  �  �  � % � , � 3 � 4 � G � Q � ^ � h �  � � � � � � � � � � � � � � � � � � � �       � � �   �    	 ) U � �     �    % &  �  N     �*� � {� � �L*� � {� � �M+,� �� �Y+�� �N+� �� �� � :� � � J� � � �:*� � �� �� *� � �� �:� � � ���-� �Y� ¹ � W���-�    �   2    �  �  � ! � + � P � ] � i � u � x � � � � � �   >  i  � �  P 8 � �    � � �     � �   q � �  + b �   �     + b � �  �   ! � :   � � � �  � = ��  �    �  �   �   4      7� ɚ � � V�    �       � �    @  �    � �    7 � �        �    7 �@ � � �	