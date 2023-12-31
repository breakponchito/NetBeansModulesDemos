����   4 �
      java/lang/Object <init> ()V	  	 
   ;org/netbeans/api/progress/aggregate/AggregateProgressHandle handle *Lorg/netbeans/api/progress/ProgressHandle;	     finished Z  java/util/ArrayList
  	     contributors Ljava/util/Collection;
     addContributor <(Lorg/netbeans/api/progress/aggregate/ProgressContributor;)V	     displayName Ljava/lang/String;��������
  # $ % start (J)V
 ' ( ) $ * (org/netbeans/api/progress/ProgressHandle (IJ)V	  , - . current I
  0 1  finish
 ' 0	  4 5 6 LOG Ljava/util/logging/Logger;	 8 9 : ; < java/util/logging/Level FINE Ljava/util/logging/Level; > {0}: {1}
 @ A B C D java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 ' F G H suspend (Ljava/lang/String;)V
 ' J K L setInitialDelay (I)V N O P Q R java/util/Collection size ()I N T U V iterator ()Ljava/util/Iterator; X Y Z [ \ java/util/Iterator hasNext ()Z X ^ _ ` next ()Ljava/lang/Object; b 7org/netbeans/api/progress/aggregate/ProgressContributor
 a d e R getRemainingParentWorkUnits
 a g h i getCompletedRatio ()D
 a k l L setAvailableParentWorkUnits N n o p add (Ljava/lang/Object;)Z
 a r s t 	setParent @(Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle;)V
 ' v w x progress (Ljava/lang/String;I)V	  z { | monitor 5Lorg/netbeans/api/progress/aggregate/ProgressMonitor; ~  � �  3org/netbeans/api/progress/aggregate/ProgressMonitor 
progressed
 ' � w H ~ � �  started N � � p remove ~ �  
 ' � � H setDisplayName
 � � � � � java/lang/Class getName ()Ljava/lang/String;
 @ � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � java/lang/AutoCloseable 	WORKUNITS ConstantValue  ' 	Signature QLjava/util/Collection<Lorg/netbeans/api/progress/aggregate/ProgressContributor;>; �(Ljava/lang/String;[Lorg/netbeans/api/progress/aggregate/ProgressContributor;Lorg/openide/util/Cancellable;ZLorg/netbeans/api/progress/ProgressHandle;)V Code LineNumberTable LocalVariableTable i this =Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle; contribs :[Lorg/netbeans/api/progress/aggregate/ProgressContributor; cancellable Lorg/openide/util/Cancellable; 
systemtask hdl StackMapTable � java/lang/String � � org/openide/util/Cancellable MethodParameters estimate J close #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; message millis cont 9Lorg/netbeans/api/progress/aggregate/ProgressContributor; it Ljava/util/Iterator; newshare contributor length remainingUnits completedRatio D currentShare LocalVariableTypeTable OLjava/util/Iterator<Lorg/netbeans/api/progress/aggregate/ProgressContributor;>; getCurrentProgress 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; processContributorStep O(Lorg/netbeans/api/progress/aggregate/ProgressContributor;Ljava/lang/String;I)V delta � java/lang/Throwable processContributorStart N(Lorg/netbeans/api/progress/aggregate/ProgressContributor;Ljava/lang/String;)V processContributorFinish 
setMonitor 8(Lorg/netbeans/api/progress/aggregate/ProgressMonitor;)V newDisplayName <clinit> 
SourceFile AggregateProgressHandle.java 1    �   5 6    { |         � .  �    �          �    �  - .            �  �   �     <*� *� *� *� Y� � ,� 6,�� *,2� ����*+� �    �   * 
   5  6 
 7  8  9  : ( ; 0 : 6 > ; ? �   H  !  � .    < � �     <      < � �    < � �    < �     < �   �    � !   � � � '  �  �       �   �   �   �    $   �   6     *  � "�    �   
    G  H �        � �   ! $ %  �   M     *� '� &*� +�    �       P  Q  R �        � �      � �  �    �    �   �   3     *� /�    �   
    Y  Z �        � �   �     �   ! 1   �   X     *� � �*� *� � 2�    �       a  b  d  e  f �        � �   �      G H  �   _     #� 3� 7=� Y*� SY+S� ?*� +� E�    �       q  r " s �       # � �     # �   �    �    K L  �   A     	*� � I�    �   
      � �       	 � �     	 � .  �    �   !    �  �  
   �*� � �*� � M =>9� ;*� � S :� W � -� ] � a:� c`>� fgc9���'>9�co�6*� � S :� W � ,� ] � a:� fg�k�6		d>	� j���+� j*� +� m W+*� q�    �   j    �  �  �  �  �  �  � & � 0 � < � D � P � S � W � Z � d � o � y � � � � � � � � � � � � � � � � � �   p  <  � �  & - � �  �  � �  �  � . 	   � � �     � � �   � � .   � � .   � � �  o I � �  d T � .  �     & - � �  o I � �  �   " �    a X  � ,�  X2 �    �     � R  �   /     *� +�    �       � �        � �   �     �     �     � �  �   �     F*Y:�*� � ñ**� +`� +*� ,*� +� uç :��*� y� *� y+� } �    ,    ) ,   , 1 ,    �   & 	   �  �  �  �  � & � 4 � ; � E � �   *    F � �     F � �    F �     F � .  �    �  [ ��  �    �   �   �     � �  �   �     8*YN�*� � -ñ,� *� ,� �-ç 
:-��*� y� *� y+� � �             #     �   & 	   �  �  �  �  �  � & � - � 7 � �        8 � �     8 � �    8 �   �    �  D ��  �   	 �   �     �   �   �     E*YM�*� � ,ñ*� +� � W*� � M � *� /,ç N,�-�*� y� *� y+� � �    .    + .   . 1 .    �   * 
   �  �  �  �  � % � ) � 3 � : � D � �       E � �     E � �  �    �  D ��  �    �    � �  �   >     *+� y�    �   
    �  � �        � �      { |  �    {    � H  �   A     	*� +� ��    �   
    �  � �       	 � �     	 �   �    �    �   �   $      � �� �� 3�    �       )  �    �