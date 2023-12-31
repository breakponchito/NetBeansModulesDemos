����   4 �
      java/lang/Object <init> ()V  java/util/ArrayList
  
   (I)V	      ;org/openide/util/actions/CallbackSystemAction$GlobalManager 
actionMaps Ljava/util/List;  javax/swing/ActionMap
  	     survive Ljavax/swing/ActionMap;
      org/openide/util/Utilities actionsGlobalContext ()Lorg/openide/util/Lookup;    org/openide/util/Lookup$Template
  "  # (Ljava/lang/Class;)V
 % & ' ( ) org/openide/util/Lookup lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;	  + , - result  Lorg/openide/util/Lookup$Result;
 / 0 1 2 3 org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  5 6 7 resultChanged !(Lorg/openide/util/LookupEvent;)V	  9 : ; instance =Lorg/openide/util/actions/CallbackSystemAction$GlobalManager;
   > ? @ A B java/util/List iterator ()Ljava/util/Iterator; D E F G H java/util/Iterator hasNext ()Z D J K L next ()Ljava/lang/Object; N java/lang/ref/Reference
 M P Q L get
  S Q T ((Ljava/lang/Object;)Ljavax/swing/Action; V 8org/openide/util/actions/CallbackSystemAction$WeakAction
 U X Y Z getDelegate ()Ljavax/swing/Action;
 \ ] ^ _ ` -org/openide/util/actions/CallbackSystemAction 
access$000 ()Ljava/util/logging/Logger;	 b c d e f java/util/logging/Level FINE Ljava/util/logging/Level;
 h i j k l java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z n java/lang/StringBuilder
 m  q No action for key: 
 m s t u append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 m w t x -(Ljava/lang/Object;)Ljava/lang/StringBuilder; z  using delegate: 
 m | } ~ toString ()Ljava/lang/String;
 h � � � fine (Ljava/lang/String;)V � New action for key:  �  put: 
 U �  � (Ljavax/swing/Action;)V
  � � � put )(Ljava/lang/Object;Ljavax/swing/Action;)V � Action for key:  �  is: 
 / � � � allInstances ()Ljava/util/Collection; � changed maps :  � previous maps:  � � � � � java/util/Collection size ()I > � � ? > � Q � (I)Ljava/lang/Object; � java/lang/ref/WeakReference
 � �  � (Ljava/lang/Object;)V > � � � add (Ljava/lang/Object;)Z � clearActionPerformers	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; � =org/openide/util/actions/CallbackSystemAction$GlobalManager$1
 � �  � @(Lorg/openide/util/actions/CallbackSystemAction$GlobalManager;)V
 � � � � 
readAccess (Ljava/lang/Runnable;)V � org/openide/util/LookupListener 	Signature 9Lorg/openide/util/Lookup$Result<Ljavax/swing/ActionMap;>; DLjava/util/List<Ljava/lang/ref/Reference<Ljavax/swing/ActionMap;>;>; Code LineNumberTable LocalVariableTable this 
getDefault ?()Lorg/openide/util/actions/CallbackSystemAction$GlobalManager; StackMapTable findGlobalAction )(Ljava/lang/Object;Z)Ljavax/swing/Action; am ref Ljava/lang/ref/Reference; key Ljava/lang/Object; surviveFocusChange Z a Ljavax/swing/Action; LocalVariableTypeTable 2Ljava/lang/ref/Reference<Ljavax/swing/ActionMap;>; � javax/swing/Action MethodParameters oldMap newMaps Ljava/util/Iterator; theSame i I 	actionMap ev Lorg/openide/util/LookupEvent; ams Ljava/util/Collection; tempActionMaps .Ljava/util/Iterator<+Ljavax/swing/ActionMap;>; 0Ljava/util/Collection<+Ljavax/swing/ActionMap;>; 
SourceFile CallbackSystemAction.java InnerClasses GlobalManager Template Result 
WeakAction 0    �  
 : ;    , -  �    �     �    �           �   ~     <*� *� Y� 	� *� Y� � *� � Y� !� $� **� **� .*� 4�    �      N K L O .P 6Q ;R �       < � ;   ) � �  �   E      � 8� � 8�� Y� <� 8� 8�    �      U V 
Y [ �    
  � �  �  �    N*� � = :� C � 3� I � M:� O� :� � 	+� RN-� � ���� �-� I*� +� RN-� -� U� WN� [� a� g� f� [� mY� op� r+� vy� r-� v� {� � A� [� a� g� %� [� mY� o�� r+� v�� r-� v� {� *� +� UY-� �� �� [� a� g� %� [� mY� o�� r+� v�� r-� v� {� -�    �   R   ` a #b -c =d Ae Dg Gi Kj Ok Xm \n dq pr �u �v �y �} �~� �   >  -  �   # ! � �    � ;     � �    � �   � �  �     # ! � �  �   # 
�  � D� ( M E �� � 0-- �   	 �   �    6 7  �  9    *� *� �M� [� a� g� 8� [� mY� o�� r,� v� {� � [� mY� o�� r*� � v� {� ,� � *� � � � Q>6,� � :� C � 5*� � � � M� O� :� � I � >� 	����� �� Y� 	N,� � :� C � "� I � :-� �Y� �� � W���*-� � [� a� g� � [�� � �� �Y*� �� ��    �   b   � � � -� I� [� ]� `� r� �� �� �� �� �� �� �� �� �� �� �� �� �� ��
� �   \ 	 �  �   h < � �  ] L � �  ` I � �  �  �     � ;     � �   � �  � Y �   �      h < � �   � �  � Y � �  �   , 	� I ��  D� 0 � � � �  > D� ( �    �    �    � �   *   \ �   % �  / % �	 U \ �  �      