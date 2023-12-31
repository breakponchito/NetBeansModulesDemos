����   4��������
      !org/openide/filesystems/FileEvent <init> M(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;ZJ)V
 
     java/util/EventObject (Ljava/lang/Object;)V	     file $Lorg/openide/filesystems/FileObject;
      java/lang/System currentTimeMillis ()J	     time J	     expected Z	  ! " # LOG Ljava/util/logging/Logger;	 % & ' ( ) java/util/logging/Level FINEST Ljava/util/logging/Level;
 + , - . / java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z 1 FileEvent({0}, {1}, {2}, {3}) 3 java/lang/Object
 5 6 7 8 9 java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 ; < = 8 > java/lang/Long (J)Ljava/lang/Long;
 + @ A B log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 D E F G H #org/openide/filesystems/MIMESupport 
freeCaches ()V
 J E K  org/openide/filesystems/FileUtil	  M N O 
postNotify Ljava/util/Collection; Q R S T U java/util/Collection add (Ljava/lang/Object;)Z W X Y Z H java/lang/Runnable run \ java/lang/StringBuilder
 [ ^  H
 2 ` a b getClass ()Ljava/lang/Class;
 d e f g h java/lang/Class getName ()Ljava/lang/String; j .+\. l  
 n o p q r java/lang/String replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 [ t u v append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 [ x u y (C)Ljava/lang/StringBuilder;
  { | } 	getSource ()Ljava/lang/Object;  "org/openide/filesystems/FileObject � src=
 J � � � getFileDisplayName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String; � file= � ,time= � java/util/Date
 � �  � (J)V
 [ � u � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � 
,expected=
 [ � u � (Z)Ljava/lang/StringBuilder;
  � � � insertIntoToString (Ljava/lang/StringBuilder;)V
 [ � � h toString	  � � � atomActionID 7Lorg/openide/filesystems/EventControl$AtomicActionLink;
 � � � � } 5org/openide/filesystems/EventControl$AtomicActionLink getAtomicAction
 2 � � U equals
 � � � � getPreviousLink 9()Lorg/openide/filesystems/EventControl$AtomicActionLink; � AsyncRefreshAtomicAction
 n � � � indexOf (Ljava/lang/String;)I � 4org/openide/filesystems/FileSystem$AsyncAtomicAction � � � � isAsynchronous ()Z	  � �  $assertionsDisabled � java/lang/AssertionError
 � ^
 d � � � desiredAssertionStatus
 + � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; serialVersionUID ConstantValueD����, 	Signature ,Ljava/util/Collection<Ljava/lang/Runnable;>; '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/filesystems/FileEvent; src MethodParameters K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V L(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;J)V L(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Z)V StackMapTable getFile &()Lorg/openide/filesystems/FileObject; getTime 
isExpected runWhenDeliveryOver (Ljava/lang/Runnable;)V r Ljava/lang/Runnable; to LocalVariableTypeTable b Ljava/lang/StringBuilder; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setAtomicActionLink :(Lorg/openide/filesystems/EventControl$AtomicActionLink;)V 	firedFrom 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)Z aa Ljava/lang/Object; 1Lorg/openide/filesystems/FileSystem$AtomicAction; currentPropID atomicAction setPostNotify (Ljava/util/Collection;)V runs /(Ljava/util/Collection<Ljava/lang/Runnable;>;)V inheritPostNotify &(Lorg/openide/filesystems/FileEvent;)V ev <clinit> 
SourceFile FileEvent.java InnerClasses � $org/openide/filesystems/EventControl AtomicActionLink � "org/openide/filesystems/FileSystem AsyncAtomicAction /org/openide/filesystems/FileSystem$AtomicAction AtomicAction !  
     �   �    �  " #                   � �   � N O  �    � �       �  �   C     *++ � �    �   
    > 
 ? �        � �      �   �    �     �  �   M     *+, � �    �   
    H 
 I �         � �      �         �   	 �         �  �   U     	*+,!� �    �   
    P  Q �   *    	 � �     	 �     	      	    �    �           �  �   W     *+, � �    �   
    [ 
 \ �   *     � �      �               �    �             �       ]*+� 	*,� *	�� 	� � � *� �  � $� *� +�  � $0� 2Y+SY,SY� 4SY*� � :S� ?� C� I�    �   & 	   u  v 
 w  x " y . z V | Y } \ ~ �   4    ] � �     ] �     ]      ]      ]    �   . �    ~ ~  �    ~ ~  ; �    �             � �  �   /     *� �    �       � �        � �    �   �   /     *� �    �       � �        � �    � �  �   /     *� �    �       � �        � �    � �  �   �     *� LM,� ,+� P W� 	+� V �    �       �  � 	 �  �  � �         � �      � �    � O  �       � �  �   	 �  Q �    �    � h  �  #     �� [Y� ]L+*� _� cik� m� sW+[� wW*� z� ~M,*� � +�� sW+,� �� sW+,� wW+�� sW+*� � �� sW+�� sW+� �Y*� � �� �W+�� sW+*� � �W*+� �+]� wW+� ��    �   F    �  �  � " � * � 2 � 9 � B � I � P � \ � c � s � z � � � � � � � �        � � �    � � �  * j �   �    � I [ ~ �     �     � �  �   5      �    �       � �        � �      � �  �    �     � �  �   >     *+� ��    �   
    �  � �        � �      � �  �    �    � �  �   �     ,*� �M+� �,� ,� �N-� -+� �� �,� �M����    �   * 
   �  � 	 �  �  �  �   � " � ' � * � �   *    � �    , � �     , Z �   ' � �  �    �  ��  2�  �    Z    � �  �   �     C*� �L+� ;+� �M,� ,� _� c�� �� �,� �� ,� �� � � �+� �L����    �   .    �  � 	 �   " $ + 7 9 >	 A �       0 � �    C � �    > � �  �    �  ��  2�    � �  �   v     � �� *� L� +� � �Y� ��*+� L�    �         �        � �      � O  �        � �  �     �    �   �    �   � �  �   c     � �� *� L� � �Y� ��*+� L� L�    �         �        � �      � �  �     �    �    � H  �   C      � �� � � �� c� ó  �    �   
    $  ( �    @  �    � �     � � �  � �  �	