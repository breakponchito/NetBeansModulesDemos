����   4
      org/openide/util/BaseUtilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
  	 
   java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V  org/openide/util/WeakSet
     ()V
      java/util/Collections synchronizedSet  (Ljava/util/Set;)Ljava/util/Set;	      $org/openide/filesystems/DeepListener 	delivered Ljava/util/Set;	     ! path Ljava/io/File;	  # $ % stop Ljava/util/concurrent/Callable;	  ' ( ) filter Ljava/io/FileFilter; + , - . / *org/openide/filesystems/FileChangeListener hashCode ()I
 1 , 2 java/io/File	  4 5 6 hash I	  8 9 : keep Ljava/util/List; < = > ? @ java/util/List add (Ljava/lang/Object;)Z	  B C D LOG Ljava/util/logging/Logger;	 F G H I J java/util/logging/Level FINER Ljava/util/logging/Level;
 L M N O P java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z R java/lang/Throwable T java/lang/StringBuilder
 S  W listening to 
 S Y Z [ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 S ] Z ^ -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 S ` a b toString ()Ljava/lang/String;
 Q d  e (Ljava/lang/String;)V
 L g h i log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  k l  relisten
 n o p q r  org/openide/filesystems/FileUtil toFileObject 4(Ljava/io/File;)Lorg/openide/filesystems/FileObject;
 t u v w x "org/openide/filesystems/FileObject removeRecursiveListener /(Lorg/openide/filesystems/FileChangeListener;)V	  z { | removed Z < ~  @ remove	  � � � watching $Lorg/openide/filesystems/FileObject;
 t � � x addRecursiveListener
  � � � fileRenamed -(Lorg/openide/filesystems/FileRenameEvent;Z)V
  � � � get R(Lorg/openide/filesystems/FileEvent;Z)Lorg/openide/filesystems/FileChangeListener; + � � � ,(Lorg/openide/filesystems/FileRenameEvent;)V
  � � � fileFolderCreated '(Lorg/openide/filesystems/FileEvent;Z)V + � � � &(Lorg/openide/filesystems/FileEvent;)V
  � � � fileDeleted + � � �
  � � � fileDataCreated + � � �
  � � � fileChanged + � � � + � � � fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
 1 � � @ equals
  � � � ()Ljava/lang/Object; + �
 � � � � � !org/openide/filesystems/FileEvent getFile &()Lorg/openide/filesystems/FileObject;
 � � � � 	getSource � = � java/util/Set � � � � � java/util/concurrent/Callable call � java/lang/Boolean � � � � � java/io/FileFilter accept (Ljava/io/File;)Z � DeepListener{ � @
 S � Z � (C)Ljava/lang/StringBuilder;
  � � � ()Ljava/lang/Boolean;
 � � � � b java/lang/Class getName � 
.recursive
 L � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � java/util/ArrayList
 �  � java/lang/Runnable 	Signature 4Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>; 8Ljava/util/List<Lorg/openide/filesystems/DeepListener;>; 4Ljava/util/Set<Lorg/openide/filesystems/FileEvent;>; p(Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;Ljava/io/FileFilter;Ljava/util/concurrent/Callable;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/DeepListener; listener ,Lorg/openide/filesystems/FileChangeListener; ff LocalVariableTypeTable MethodParameters �(Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;Ljava/io/FileFilter;Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;)V init StackMapTable run fo #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; fe )Lorg/openide/filesystems/FileRenameEvent; 
fromHolder #Lorg/openide/filesystems/FileEvent; ,Lorg/openide/filesystems/FileAttributeEvent; obj Ljava/lang/Object; other ref 
Exceptions java/lang/Exception pathname <clinit> �Ljava/lang/ref/WeakReference<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileChangeListener;Ljava/lang/Runnable;Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;Ljava/io/FileFilter; 
SourceFile DeepListener.java 0    + � � � 	  C D      !    � �    { |    $ %  �    �  ( )   
 9 :  �    �  5 6       �    �     �  �   �     <*+� � *� Y� � � *,� *� "*-� &*+� * h,� 0h`� 3�    �       3  �  4  5 ! 6 & 7 ; 8 �   4    < � �     < � �    <   !    < � )    < $ %  �       < $ �  �    �       �   $   �    �  �   �   �     B� 7*� ; W� A� E� K� *� A� E� QY� SY� UV� X*� � \� _� c� f*� j�    �       ; 
 <  = = ? A @ �       B � �   �    =  �   �   w     !*� � mL+� +*� s*� y� 7*� } W�    �       D  E  F  H  I   J �       ! � �     � �  �    �  t        " l   �   �     4*� � mL+*� �� �*� �� *� �*� s*� �+� *+� �+*� ��    �   * 
   M  N  O  Q  R   S % U ) V . W 3 Y �       4 � �    , � �  �   
 �  t  � �  �   ?     *+� ��    �   
    ]  ^ �        � �       �              � �  �   �     *� j*+� �N-� �-+� � �    �       `  a  b  c  e  f �   *     � �          |    � �  �    �  + �   	      � �  �   G     *� j*+� ��    �       j  k 
 l �        � �       �              � �  �   �     *� j*+� �N-� �-+� � �    �       n  o  p  q  s  t �   *     � �          |    � �  �    �  + �   	      � �  �   ?     *+� ��    �   
    x  y �        � �       �              � �  �   �     *� j*+� �N-� �-+� � �    �       {  |  }  ~  �  � �   *     � �          |    � �  �    �  + �   	      � �  �   ?     *+� ��    �   
    �  � �        � �       �              � �  �   �     *� j*+� �N-� �-+� � �    �       �  �  �  �  �  � �   *     � �          |    � �  �    �  + �   	      � �  �   ?     *+� ��    �   
    �  � �        � �       �              � �  �   z     *+� �N-� �-+� � �    �       �  �  �  �  � �   *     � �          |    � �  �    �  + �   	      � �  �   p     *+� �M,� �,+� � �    �       �  �  �  �  � �         � �         � �  �    �  + �              � @  �   �     _+� �*� �+� �� �+� M*� ,� � *� � *� ,� � �� �*� �� +N-,� �� -� -,� �� � � ��    �   .    �  �  �  �  �  � 8 � : � B � [ � ] � �   *    _ � �     _   G	 �  B 
 �  �    � $ �   + �              . /  �   /     *� 3�    �       � �        � �           � �  �   �     1*� y� �� +� �+� �� �*� +� � � �*� �� +�    �   "    �  � 	 �  �  �  � ' � ) � �        1 � �     1    1 |  �    	 �   	      � �  �   O     *� "� *� "� � � ʧ �    �       � �        � �   �    @ �             � �  �   Z     *� &� *� &+� � � � �    �       � �        � �      !  �    @ �              a b  �   R     (� SY� UҶ X*� �� \Զ X*� � \}� ֶ _�    �       � �       ( � �         A � �  �   /     *� ٰ    �       ' �        � �                 �   D      (� SY� Un� ܶ X� X� _� � A� �Y� � 7�    �   
    )  /  �      