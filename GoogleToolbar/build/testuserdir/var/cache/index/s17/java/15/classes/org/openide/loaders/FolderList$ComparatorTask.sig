����   4 �	      -org/openide/loaders/FolderList$ComparatorTask this$0  Lorg/openide/loaders/FolderList;
  	 
   java/lang/Object <init> ()V	     previous /Lorg/openide/loaders/FolderList$ComparatorTask;	     log Z	     lock Ljava/lang/Object;
      org/openide/loaders/FolderList 
access$200 ()Ljava/util/logging/Logger;	   ! " # $ java/util/logging/Level FINE Ljava/util/logging/Level; & !changeComparator on {0}: previous
  ( ) * 
access$100 F(Lorg/openide/loaders/FolderList;)Lorg/openide/filesystems/FileObject;
 , - .  / java/util/logging/Logger @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  1 2  cancelOrWaitFinished
  4 5 6 
access$000 Q(Lorg/openide/loaders/FolderList;)Lorg/openide/loaders/FolderList$ComparatorTask; 8  changeComparator on {0}: skipped :  changeComparator on {0}: get old
  < = > 
access$600 Z(Lorg/openide/loaders/FolderList;Lorg/openide/loaders/FolderListListener;)Ljava/util/List; @ A B C D java/util/List isEmpty ()Z
  F G H 
access$802 B(Lorg/openide/loaders/FolderList;Ljava/util/List;)Ljava/util/List; J changeComparator: get new
 , L M N fine (Ljava/lang/String;)V
  P Q R 
access$002 �(Lorg/openide/loaders/FolderList;Lorg/openide/loaders/FolderList$ComparatorTask;)Lorg/openide/loaders/FolderList$ComparatorTask; T "changeComparator: task set to null V (changeComparator: task changed meanwhile X changeComparator: fire change
  Z [ \ 
access$900 O(Lorg/openide/loaders/FolderList;Ljava/util/Collection;Ljava/util/Collection;)V	  ^ _ ` rpTask (Lorg/openide/util/RequestProcessor$Task;
 b c d e D &org/openide/util/RequestProcessor$Task cancel
 b g h  waitFinished
  j k l access$1000 %()Lorg/openide/util/RequestProcessor; n java/lang/Thread
 p q r s t !org/openide/util/RequestProcessor post @(Ljava/lang/Runnable;II)Lorg/openide/util/RequestProcessor$Task; v java/lang/Runnable e(Lorg/openide/loaders/FolderList;Lorg/openide/loaders/FolderList$ComparatorTask;ZLjava/lang/Object;)V Code LineNumberTable LocalVariableTable this MethodParameters run v Ljava/util/List; r LocalVariableTypeTable 2Ljava/util/List<Lorg/openide/loaders/DataObject;>; StackMapTable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 1()Lorg/openide/loaders/FolderList$ComparatorTask; 
SourceFile FolderList.java InnerClasses ComparatorTask Task      u                  _ `           w  x   r     *+� *� *,� *� *� �    y      � 	� � � � z   *     {                      |               }   x  q    M*� YN�*� � � � %*� � '� +*� � 
*� � 0**� � 3� � � 7*� � '� +-ñ*� � � � 9*� � '� +*� � ;L+� ? � $*� � EW*� � � I� K*� � ;M-ç 
:-��*� YN�*� � 3*� *� � OW� S� K� � U� K-ñ-ç 
:-��,� *� � � W� K*� ,+� Y�  	 O �   P � �   � � �   � � �   � � �   � � �    y   z   � � 	� � "� )� 0� ;� M� P� W� i� r� {� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��� z   *  r / ~     {    � Z ~     �   �      r / ~ �  � Z ~ �    � �  �   W � "  @ � )   @ @   �     @   ��    @ @  � % 
D ��  �     �    2   x   d      *� � 
*� � 0*� ]� a� 
*� ]� f�    y         	  z         {    �       h   x   6     *� ]� f�    y   
     z        {      s �  x   =     *� i*� o� ]*�    y   
     z        {     �    � �       �  b p � 