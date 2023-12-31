����   4 �	      org/openide/actions/UndoAction last Lorg/openide/awt/UndoRedo;	   	 
 
redoAction  Lorg/openide/actions/RedoAction;	     
undoAction  Lorg/openide/actions/UndoAction;
      -org/openide/util/actions/CallableSystemAction <init> ()V
     initializeUndoRedo
     	isEnabled ()Z	     listener )Lorg/openide/actions/UndoAction$Listener; ! 'org/openide/actions/UndoAction$Listener
   
 $ % & ' ( !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 $ * + , getRegistry -()Lorg/openide/windows/TopComponent$Registry;
 . / 0 1 2 org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; 4 5 6 7 8 )org/openide/windows/TopComponent$Registry addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  : ; < getUndoRedo ()Lorg/openide/awt/UndoRedo; > ? @ A B org/openide/awt/UndoRedo addChangeListener %(Ljavax/swing/event/ChangeListener;)V
  D E  updateStatus
  G H I 
findObject 8(Ljava/lang/Class;Z)Lorg/openide/util/SharedClassObject; K org/openide/actions/RedoAction M  org/openide/actions/UndoAction$1
 L 
 P Q R S T javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V 4 V W X getActivated $()Lorg/openide/windows/TopComponent;	 > Z [  NONE
 ] : ^  org/openide/windows/TopComponent > ` a b getUndoPresentationName ()Ljava/lang/String;
 d e f g b java/lang/Class getName
 i j k l m java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 o p q r s java/util/logging/Level FINE Ljava/util/logging/Level; u java/lang/StringBuilder
 t  x 0getUndoRedo().getUndoPresentationName() returns 
 t z { | append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 t ~  b toString
 i � � � log .(Ljava/util/logging/Level;Ljava/lang/String;)V � SWING_DEFAULT_LABEL is 	  � � � SWING_DEFAULT_LABEL Ljava/lang/String;
 � � � � � java/lang/String 
startsWith (Ljava/lang/String;)Z
 � � � � length ()I
 � � � � 	substring (I)Ljava/lang/String;
 � � � b trim � 'Name adapted by SWING_DEFAULT_LABEL is  � 
UndoSimple
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; � UndoWithParameter
 � � � � I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; � Result name is  � org/openide/util/HelpCtx
 � �  � (Ljava/lang/Class;)V � &org/openide/resources/actions/undo.gif > � �  canUndo > � �  undo � $javax/swing/undo/CannotUndoException
 � � � � � "org/openide/actions/UndoRedoAction cannotUndoRedo (Ljava/lang/RuntimeException;)V
 � �  � (Lorg/openide/util/Lookup;ZZ)V � AbstractUndoableEdit.undoText
 � � � � � javax/swing/UIManager 	getString &(Ljava/lang/Object;)Ljava/lang/String; � #org/openide/util/ContextAwareAction Code LineNumberTable LocalVariableTable this #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; r +Lorg/openide/windows/TopComponent$Registry; StackMapTable el "Lorg/openide/windows/TopComponent; presentationName 
getHelpCtx ()Lorg/openide/util/HelpCtx; iconResource performAction undoRedo ex &Ljavax/swing/undo/CannotUndoException; asynchronous createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext Lorg/openide/util/Lookup; MethodParameters 
access$000 "()Lorg/openide/actions/UndoAction; 
access$100 "()Lorg/openide/actions/RedoAction; 
access$200 
access$202 6(Lorg/openide/awt/UndoRedo;)Lorg/openide/awt/UndoRedo; x0 <clinit> 
SourceFile UndoAction.java InnerClasses Listener Registry !    �  
     
     
 � �   
     
 	 
        �   /     *� �    �       2 �        �        �   6     � *� �    �   
    ?  A �        �    �     �   (    �   �     :� � ��  Y� "� � #� )K*� *� -� 3 � 9� � � � = � C�    �   & 	   G  H  K  M  O % P + Q 6 S 9 T �      " � �   �     ( E   �   e      /� � � F� � � � J� F� J� � LY� N� O�    �       Y  Z  ]  ^ $ a . p �      ; <  �   [     � #� )� U K*� 	� Y� *� \�    �   
    u  w �       � �   �    �  ]C >  g b  �  W     ׸ 9� _ L� c� h� n� tY� vw� y+� y� }� �� c� h� n� tY� v�� y� �� y� }� �+� !� �� +� �� �� +� �� �� �� �L� c� h� n� tY� v�� y+� y� }� �M+� +� �� �� �� �M� �+� �M� c� h� n� tY� v�� y,� y� }� �,�    �   2    ~ 	  * � M � a � o � � � � � � � � � � � � � �        � �    	 � � �  � E � �  �    � o �� 0 �
  � �  �   4     
� �Y� ��    �       � �       
 �     � b  �   -     ��    �       � �        �    �     �    �   �   �     � 9L+� � � 	+� � � L+� �� C�      �  �   "    �  �  �  �  �  �  �  � �        �     � �     �    �    B �  �   �   ,     �    �       � �        �    �     �    � �  �   ?     � �Y+� ��    �       � �        �       � �  �    �   �     �   � �  �         � �    �       2 � �  �         � �    �       2 � <  �         � �    �       2 � �  �   0     *Y� �    �       2 �        �     �   �   ;      � Y� ĸ Ƴ �� � �    �       8  9  :  ;  �    � �        �  4 ] �	 L      