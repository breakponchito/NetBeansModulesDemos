����   4 �
      java/lang/Object <init> ()V	  	 
   ;org/netbeans/swing/tabcontrol/plaf/DefaultTabSelectionModel sel I  org/openide/util/ChangeSupport
     (Ljava/lang/Object;)V	     cs  Lorg/openide/util/ChangeSupport;	     	dataModel ,Lorg/netbeans/swing/tabcontrol/TabDataModel;
     attach     ! " *org/netbeans/swing/tabcontrol/TabDataModel addComplexListDataListener @(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataListener;)V  $ % " removeComplexListDataListener
  ' (  
fireChange  * + , size ()I . "java/lang/IllegalArgumentException 0 java/lang/StringBuilder
 /  3 Selected index set to 
 / 5 6 7 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 / 9 6 : (I)Ljava/lang/StringBuilder; <  but model size is only 
 / > ? @ toString ()Ljava/lang/String;
 - B  C (Ljava/lang/String;)V
 E F G H , javax/swing/event/ListDataEvent getType
 E J K , 	getIndex0
 E M N , 	getIndex1
  P Q R adjustSelectionForEvent $(Ljavax/swing/event/ListDataEvent;)V
 T U V W X 8org/netbeans/swing/tabcontrol/event/ComplexListDataEvent 
getIndices ()[I
 Z [ \ ] ^ java/util/Arrays sort ([I)V
 ` a b c d java/lang/Math min (II)I
 ` f g d max i <org/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent
 h k l m getDiff 1()Lorg/netbeans/swing/tabcontrol/event/ArrayDiff;
 o p q r s -org/netbeans/swing/tabcontrol/event/ArrayDiff getDeletedIndices ()Ljava/util/Set;
 o u v s getAddedIndices x java/lang/Integer
  z { , getSelectedIndex
 w }  ~ (I)V � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object;
 w � � � 	compareTo (Ljava/lang/Integer;)I
  � � � addChangeListener %(Ljavax/swing/event/ChangeListener;)V
  � � � removeChangeListener �  javax/swing/SingleSelectionModel � ;org/netbeans/swing/tabcontrol/event/ComplexListDataListener /(Lorg/netbeans/swing/tabcontrol/TabDataModel;)V Code LineNumberTable LocalVariableTable this =Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabSelectionModel; tdm MethodParameters detach clearSelection 
isSelected StackMapTable setSelectedIndex oldIndex index e !Ljavax/swing/event/ListDataEvent; start end contentsChanged intervalAdded intervalRemoved indicesAdded =(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent;)V i :Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent; indices [I offset � indicesRemoved indicesChanged curr Ljava/lang/Integer; dif /Lorg/netbeans/swing/tabcontrol/event/ArrayDiff; changed Z deleted Ljava/util/Set; added idx Ljava/util/Iterator; LocalVariableTypeTable $Ljava/util/Set<Ljava/lang/Integer;>; )Ljava/util/Iterator<Ljava/lang/Integer;>; listener "Ljavax/swing/event/ChangeListener; 
SourceFile DefaultTabSelectionModel.java 0    � �                      �  �   g     *� *� *� Y*� � *+� *� �    �       3  - 	 .  4  5  6 �        � �      �   �    �       �   9     *� *�  �    �   
    9 
 : �        � �    �   �   9     *� *� # �    �   
    = 
 > �        � �    �   �   ?     *� *� � &�    �       A  B  C �        � �    { ,  �   /     *� �    �       F �        � �    � �  �   C     *� � � �    �       J �        � �   �    @  � ~  �   �     X*� � R*� =� *� � ) � /� -Y� /Y� 12� 4� 8;� 4*� � ) � 8� =� A�*� *� � &�    �   "    N  O  P  Q < S K U P V W X �       J �     X � �     X �   �   
 � +�  �    �    Q R  �  �     �+� D+W� *� � �+� I=+� L`>+� D+W� Y*� � �*� � �*� � *Y� dd� � '*� *� *� � ) � **� � ) d� *� � &� V*� � �*� � Ed� *Y� `� � **� � **� d`d� � *Y� dd`� *� � &�    �   b    [  \  ^  _  ` ) a 1 b 2 d : e B f Q h V i f j u m  q � s � u � v � w � x � y � { � } � � �   *    � � �     � � �   � �    � �   �     � #	 �    �    � R  �   >     *+� O�    �   
    �  � �        � �      � �  �    �    � R  �   >     *+� O�    �   
    �  � �        � �      � �  �    �    � R  �   >     *+� O�    �   
    �  � �        � �      � �  �    �    � �  �   �     G*� � �+� SM,� Y>6,�� *� ,.� ������ *Y� `� *� � &�    �   2    �  �  �  �  �  � ( � + � 1 � 5 � ? � F � �   4    �     G � �     G � �   : � �   4 �   �    �  ��  �    �    � �  �  =     �*� � �+� SM,� Y>6,�� *� ,.� ������*� *� � ) � *Y� d� *� � &�*� � ) � *� *� � &�  � **� `� _� e� *� � &�    �   N    �  �  �  �  �  � ( � + � 1 � A � K � R � S � _ � d � n � r � � � � � �   4    �     � � �     � � �    � �   y �   �    �  �� ! �    �    � �  �  �  
  *� � �+� h� �+� h� jM>,� �,� n:,� t:� wY*� y� |:*� � ) � *� *� � &��  :6� � � � � � w:		� ��������  :� � � � � � w:		� ��������*Y� d� *� � **� � ) � � � *� *� � ) � **� � ) d� � 
*� � &�    �   �     �  �  �  �  �  �  � $ � * � 7 � C � H � O � P � Y � \ � f � r � | � � � � � � � � � � � � � � � � � � � � � � � � � � �   p  r  � � 	 �  � � 	  � � �   � � �  $ � � �  * � � �  7 � � �  Y � � �  \ � �     � �     � �  �      $ � � �  * � � �  Y � � �  �   U �  o� 1 � � w�  �%%b �   	  T o � � w �  �    T   �    �    � �  �   A     	*� +� ��    �   
     �       	 � �     	 � �  �    �   ! � �  �   A     	*� +� ��    �   
     �       	 � �     	 � �  �    �    �    �