����   4 �
      java/lang/Object <init> ()V	  	 
   -org/openide/explorer/view/ExplorerDragSupport active Z
      ,org/openide/explorer/view/ExplorerDnDManager 
getDefault 0()Lorg/openide/explorer/view/ExplorerDnDManager;	     exDnD .Lorg/openide/explorer/view/ExplorerDnDManager;
      org/openide/util/Utilities getOperatingSystem ()I
     ! " java/awt/dnd/DragGestureEvent getTriggerEvent ()Ljava/awt/event/InputEvent; $ java/awt/event/MouseEvent
 # & '  	getButton
  ) * + obtainNodes :(Ljava/awt/dnd/DragGestureEvent;)[Lorg/openide/nodes/Node;
  - .  getAllowedDragActions 0 java/awt/dnd/DnDConstants
 2 3 4 5 6 org/openide/nodes/Node canCut ()Z@  
 2 9 : 6 canCopy
  < = > setNodeAllowedActions (I)V
  @ A  getDragAction
  C D E canDrag (II)Z
 G H I J K +org/openide/explorer/view/DragDropUtilities getNodeTransferable @([Lorg/openide/nodes/Node;I)Ljava/awt/datatransfer/Transferable;
  M N O setDraggedTransferable ((Ljava/awt/datatransfer/Transferable;Z)V	 2 Q R S EMPTY Lorg/openide/nodes/Node;
 2 U V W drag &()Ljava/awt/datatransfer/Transferable;
  Y Z [ setDraggedNodes ([Lorg/openide/nodes/Node;)V
  ] ^ _ setDnDActive (Z)V
  a b c 	startDrag Y(Ljava/awt/Cursor;Ljava/awt/datatransfer/Transferable;Ljava/awt/dnd/DragSourceListener;)V e )java/awt/dnd/InvalidDnDOperationException
 g h i j k java/lang/Class getName ()Ljava/lang/String;
 m n o p q java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 s t u v w java/util/logging/Level INFO Ljava/util/logging/Level;
 d y z k 
getMessage
 m | } ~ log .(Ljava/util/logging/Level;Ljava/lang/String;)V	 s � � w FINE
 m � } � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � java/io/IOException
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  � � � 
doDragOver %(Ljava/awt/dnd/DragSourceDragEvent;)V
 � � � �  &org/openide/explorer/view/NodeRenderer dragExit
  � � � getDefaultGestureRecognizer &()Ljava/awt/dnd/DragGestureRecognizer;
 � � � � > "java/awt/dnd/DragGestureRecognizer setSourceActions
 � � � � removeDragGestureListener %(Ljava/awt/dnd/DragGestureListener;)V
 � � � � addDragGestureListener � #java/util/TooManyListenersException � java/lang/IllegalStateException � $Too many listeners for drag gesture.
 � �  � (Ljava/lang/String;)V	  � � � defaultGesture $Ljava/awt/dnd/DragGestureRecognizer;
 � � � � � java/awt/dnd/DragSource getDefaultDragSource ()Ljava/awt/dnd/DragSource;	  � � � comp Ljavax/swing/JComponent;
 � � � � "createDefaultDragGestureRecognizer ](Ljava/awt/Component;ILjava/awt/dnd/DragGestureListener;)Ljava/awt/dnd/DragGestureRecognizer; � java/awt/dnd/DragSourceListener �  java/awt/dnd/DragGestureListener Code LineNumberTable LocalVariableTable this /Lorg/openide/explorer/view/ExplorerDragSupport; getAllowedDropActions dragGestureRecognized "(Ljava/awt/dnd/DragGestureEvent;)V mev Ljava/awt/event/MouseEvent; iev Ljava/awt/event/InputEvent; i I transferable $Ljava/awt/datatransfer/Transferable; exc +Ljava/awt/dnd/InvalidDnDOperationException; Ljava/io/IOException; dge Ljava/awt/dnd/DragGestureEvent; nodes [Lorg/openide/nodes/Node; possibleNodeAction 
dragAction 
dragStatus StackMapTable � � "java/awt/datatransfer/Transferable MethodParameters targetAction possibleAction 	dragEnter dsde "Ljava/awt/dnd/DragSourceDragEvent; dragOver dropActionChanged !(Ljava/awt/dnd/DragSourceEvent;)V dse Ljava/awt/dnd/DragSourceEvent; dragDropEnd %(Ljava/awt/dnd/DragSourceDropEvent;)V "Ljava/awt/dnd/DragSourceDropEvent; activate %Ljava/util/TooManyListenersException; dgr ds Ljava/awt/dnd/DragSource; 
SourceFile ExplorerDragSupport.java     � �          � �    � �               �   C     *� *� *� � �    �       '  + 	 2 �        � �    �     � �  �  �    >�  � +� M,� #� ,� #N-� %� �*+� (M,� ,�� �*� ,>6,�� .~� ,2� 1� 7>~� ,2� 8� >����*� � *� � ;+� ?6*� B6~� (,� F:*� � L,� F:*� � L� /~� ,� F:*� � L� � P� T:*� � L*� ,� X*� � \+*� `� C:� f� l� r� x� {� f� l� � �*� � \� :� �*� � \�  � � � d � �. �  �   � -   : 	 ;  <  =  > " ? # E ) H 2 I 3 M 8 O B P H Q R R U V [ W e X g O m ] t ^ | ` � b � i � k � l � o � p � q � s � t � w � x � { � } � ~ � � � � � � �# �+ �. �0 �5 �= � �   �   	 � �    � �  ; 2 � �  �  � �  �  � �  � " � �  � , � � 0  � �   > � �    > � �  ) � �  8 � �  � � � �  � � �   �   ; #�  � � � � H�  ��     �  dp � �    �    .   �   ,     �    �       � �        � �    D E  �   U     ~� � �    �       � �         � �      � �     � �  �    
@ �   	 �   �    � �  �   >     *+� ��    �   
    �  � �        � �      � �  �    �    � �  �   >     *+� ��    �   
    �  � �        � �      � �  �    �    � �  �   5      �    �       � �        � �      � �  �    �    � �  �   5      �    �       � �        � �      � �  �    �    � �  �   5      �    �       � �        � �      � �  �    �    � �  �   n     &*� � L*� � L*� � X� �*� � \�    �       � 	 �  �  �  � % � �       & � �     & � �  �    �    � _  �   �     B*� � �*� *� �M,� �� #,*� ,� �,*� �,*� �� N� �Y�� ��,*� ��  $ . 1 �  �   >    �  � 	 �  �  �  �  �  � $ � ) � . � 1 � 2 � < � A � �   *  2 
 � �    B � �     B     / � �  �    	�  �X �
 �         � �  �   j     !*� �� � �L*+*� �*� ,*� �� �*� ��    �       �  �  �  � �       � �    ! � �   �      * +  �    �    �    �