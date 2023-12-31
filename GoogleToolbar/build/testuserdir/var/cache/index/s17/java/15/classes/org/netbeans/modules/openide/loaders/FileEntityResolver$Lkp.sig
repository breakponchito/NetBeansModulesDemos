����   4 �  org/openide/util/Lookup
      #org/openide/util/lookup/ProxyLookup <init> ([Lorg/openide/util/Lookup;)V	 
     ;org/netbeans/modules/openide/loaders/FileEntityResolver$Lkp id Ljava/lang/String;  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V	 
    xml Ljava/lang/ref/Reference;	      7org/netbeans/modules/openide/loaders/FileEntityResolver ERR Ljava/util/logging/Logger;	    ! " # java/util/logging/Level FINE Ljava/util/logging/Level;
 % & ' ( ) java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z + java/lang/StringBuilder
 * -  . ()V 0 beforeLookup: 
 * 2 3 4 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 6 7 8 9 :  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
 * < 3 = -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ?  for 
 
 A B C getXml "()Lorg/openide/loaders/DataObject;
 * E F G toString ()Ljava/lang/String;
 % I J K fine (Ljava/lang/String;)V	 
 M N O folder $Lorg/openide/filesystems/FileObject;	 
 Q R S obj  Lorg/openide/loaders/DataObject;
 
 U V . update X update:  Z "org/openide/filesystems/FileObject
  \ ] ^ 
access$100 ](Ljava/lang/String;[Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject; ` fo: 
 b c d e f org/openide/loaders/DataObject find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; h object found:  j /org/openide/loaders/DataObjectNotFoundException
 l m n o p org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V r same data object for 
  t u v 
access$200 [(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataObject;)Lorg/openide/util/Lookup; x updating lookups for 
 
 z {  
setLookups } updating lookups done for   change the lookup
 � � � � � org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
 b � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V � change in lookup done for  � data object updated to  � delegating to nobody for 
 � � � � �  org/openide/filesystems/FileUtil weakFileChangeListener l(Lorg/openide/filesystems/FileChangeListener;Ljava/lang/Object;)Lorg/openide/filesystems/FileChangeListener;
 Y � � � addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V
 � � � � G java/beans/PropertyChangeEvent getPropertyName � cookie
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � name � valid � primaryFile
 � � � � � java/lang/ref/Reference get ()Ljava/lang/Object; � !java/beans/PropertyChangeListener � *org/openide/filesystems/FileChangeListener 	Signature ;Ljava/lang/ref/Reference<Lorg/openide/loaders/DataObject;>; 5(Ljava/lang/String;Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this =Lorg/netbeans/modules/openide/loaders/FileEntityResolver$Lkp; MethodParameters beforeLookup %(Lorg/openide/util/Lookup$Template;)V t "Lorg/openide/util/Lookup$Template; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ex 1Lorg/openide/loaders/DataObjectNotFoundException; l Lorg/openide/util/Lookup; last %[Lorg/openide/filesystems/FileObject; fo o � fileDeleted &(Lorg/openide/filesystems/FileEvent;)V fe #Lorg/openide/filesystems/FileEvent; fileFolderCreated fileDataCreated fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V ,Lorg/openide/filesystems/FileAttributeEvent; #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; fileRenamed ,(Lorg/openide/filesystems/FileRenameEvent;)V )Lorg/openide/filesystems/FileRenameEvent; fileChanged 
SourceFile FileEntityResolver.java InnerClasses Lkp Template 0 
   � �           �    � B N O   B R S      �  �   d     *� � *+� 	*� Y,� � �    �      � � � � �         � �             S  �   	        � �  �   �     G� � � $� +� � *Y� ,/� 1+� 5� ;>� 1*� @� ;� D� H*� L� *� P� *� T�    �      � � 4� B� F� �       G � �     G � �  �    4 �    �   �     �    V .  �  �    �� � � $� +� � *Y� ,W� 1*� 	� 1>� 1*� @� ;� D� H� YL*� 	+� [M� � � $� (� � *Y� ,_� 1,� ;>� 1*� @� ;� D� HN,� C,� aN� � � $� (� � *Y� ,g� 1-� ;>� 1*� @� ;� D� H� 
:� k-*� P� �� � � $� � � *Y� ,q� 1*� @� ;� D� H*� @-� s:-� f� a� � � $� � � *Y� ,w� 1*� @� ;� D� H*� YS� y� � � $� � � *Y� ,|� 1*� @� ;� D� H�� �*� @-� s:-� �� �� � � $� � ~� H-*-� �� �*-� P*� YS� y� � � $� � � *Y� ,�� 1*� @� ;� D� H� � � $� +� � *Y� ,�� 1*� P� ;>� 1*� @� ;� D� H�*-� P� � � $� +� � *Y� ,�� 1*� P� ;>� 1*� @� ;� D� H� � � $� +� � *Y� ,�� 1*� P� ;>� 1*� @� ;� D� H*� � y*� L+2� *+2� L+2*+2� �� ��  y � � i  �   � )  � 4� 9� B� s� u� y� ~� �� �� �� �  � � � �$1	YZ]gp��������� 5$i&q*{+�,�-�,�0 �   H  �  � �  � g � � g � � �   � � �   9W � �  BN � O  u � S  �   3 4� > � Y� ; bB i/� : 4�  � & � B3 � 83%  � �  �   =     *� T�    �   
   6 7 �        � �      � �  �    �    � �  �   =     *� T�    �   
   @ A �        � �      � �  �    �    � �  �   =     *� T�    �   
   J K �        � �      � �  �    �    � �  �   5      �    �      R �        � �      � �  �    �    � �  �   �     .+� �M�,� �� �,� �� �,� �� �,� �� *� T�    �   "   U W X Y Z #[ )] -_ �        . � �     . � �   ) �   �   	 � ) � �    �    � �  �   =     *� T�    �   
   f g �        � �      � �  �    �    � �  �   5      �    �      m �        � �      � �  �    �    B C  �   5     *� � �� b�    �      p �        � �    �    � �     
  �  6  � 