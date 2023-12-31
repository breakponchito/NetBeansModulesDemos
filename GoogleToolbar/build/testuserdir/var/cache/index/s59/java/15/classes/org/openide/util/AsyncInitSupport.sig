����   4 �
      java/lang/Object <init> ()V	  	 
   !org/openide/util/AsyncInitSupport timer Ljavax/swing/Timer;	     	comp4Init Ljava/awt/Component;	     initJob Lorg/openide/util/AsyncGUIJob;
      java/awt/Component 	isShowing ()Z  java/lang/IllegalStateException  java/lang/StringBuilder
   ! *Component already shown, can't be inited: 
  # $ % append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ' $ ( -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  * + , toString ()Ljava/lang/String;
  .  / (Ljava/lang/String;)V
  1 2 3 addHierarchyListener %(Ljava/awt/event/HierarchyListener;)V	  5 6 7 LOG Ljava/util/logging/Logger;	 9 : ; < = java/util/logging/Level FINE Ljava/util/logging/Level; ? addHierarchyListener for {0}
 A B C D E java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 G H I J K java/awt/event/HierarchyEvent getChangeFlags ()J        O Hierarchy Changed {0}
 Q R S T U java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; W javax/swing/Timer
 V Y  Z #(ILjava/awt/event/ActionListener;)V
 V \ ] ^ 
setRepeats (Z)V
 V ` a  start c Timer started for {0}
  e f 3 removeHierarchyListener h Not showing, cancling for {0}
  j k  cancel	  m n o wasCancelled Z	  q r s initTask Lorg/openide/util/Task; u Detaching {0}
  w x  detach
  z {  isDisplayable } Starting {0}
  `
 � � � � � !org/openide/util/RequestProcessor 
getDefault %()Lorg/openide/util/RequestProcessor;
 � � � � post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
 V � �  stop
 � � � �  javax/swing/SwingUtilities isEventDispatchThread � Prepare outside AWT for {0} � � � �  org/openide/util/AsyncGUIJob 	construct � No hierarchy listener for {0}	  � � � CANCELLED_LOCK Ljava/lang/Object; � wasCancelled {0}
 � � � � invokeLater (Ljava/lang/Runnable;)V � � �  finished � Second pass finished
 A � � / fine
 � � � �  org/openide/util/Task 
isFinished � org/openide/util/Cancellable � Cancelling for {0} � � k  � Cancelling done
 � � � � , java/lang/Class getName
 A � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; �  java/awt/event/HierarchyListener � java/lang/Runnable � java/awt/event/ActionListener 5(Ljava/awt/Component;Lorg/openide/util/AsyncGUIJob;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/util/AsyncInitSupport; StackMapTable MethodParameters hierarchyChanged "(Ljava/awt/event/HierarchyEvent;)V evt Ljava/awt/event/HierarchyEvent; hierachyChanged #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; actionPerformed (Ljava/awt/event/ActionEvent;)V ae Ljava/awt/event/ActionEvent; run localCancel � java/lang/Throwable <clinit> 
SourceFile AsyncInitSupport.java InnerClasses � &org/openide/util/RequestProcessor$Task Task 0    � � �   � �    6 7    r s    n o                      �  �   �     G*� *� *+� *,� +� � � Y� Y�  � "+� &� )� -�+*� 0� 4� 8>+� @�    �   & 	   C  < 	 D  E  F  G 5 J : K F L �        G � �     G      G    �    � 5    �   �   	        � �  �       �+� F L	�� � =� 4� 8N� P� @� d*� � >*� � 6� 2*� VY*� X� *� � [*� � _� 4� 8b*� � @� "� *� *� d� 4� 8g*� � @*� i�    �   :    U  V " W & X . Y 9 Z G [ O \ V ] h ^ l _ t ` � a � d �   *  . Y  o    � � �     � � �   u � o  �    @� U�  �    �   �     �    � �  �   �     G*� l� 
*� p� � 4� 8t*� � @*� v�*� �  *� � y� � 4� 8|*� � @*� ~�    �   "    j  l  m ! n " q 3 s B t F v �       G � �     G � �  �    # �    �   �     �    a   �   V     *� v*� p� *� *� �� p�    �       y  {  |  ~ �        � �   �      x   �   J     *� � 
*� � ��    �       �  �  � �        � �   �      �   �  %     v� �� a� 4� 8�*� � @*� � � *� *� d� 4� 8�*� � @� �YM�*� l<,ç N,�-�� 4� 8�� P� @� *� �� *� � � � 4�� ��  ; B E   E H E    �   >    �  �  �  � & � 5 � ; � @ � J � Y � ] � a � d � m � u � �      @  � o  J  � o    v � �   �   # � E      ��     �  �     �    k   �   �     U*� p� P*� p� �� F*� � �� <� �YL² 4� 8�*� � @*� l+ç M+�,�*� � �� � W� 4�� ��  ! 7 :   : = :    �   "    �  � ! � 0 � 5 � ? � L � T � �       U � �   �    � :     ��   �   �   2      � Y� � �� �� �� 4�    �   
    , 
 -  �    � �   
  � � � 