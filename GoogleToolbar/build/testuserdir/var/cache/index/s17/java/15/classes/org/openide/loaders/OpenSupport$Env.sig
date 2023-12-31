����   4%
      java/lang/Object <init> ()V	  	 
   #org/openide/loaders/OpenSupport$Env obj  Lorg/openide/loaders/DataObject;
     init
      java/io/ObjectInputStream defaultReadObject
      org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
       org/openide/loaders/DataObject addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  " # $ getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 & ' ( ) * "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem; , 1org/openide/filesystems/FileStateInvalidException . java/lang/IllegalStateException 0 java/lang/StringBuilder
 /  3 FileSystem is invalid for 
 / 5 6 7 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 / 9 6 : -(Ljava/lang/Object;)Ljava/lang/StringBuilder; < !
 / > ? @ toString ()Ljava/lang/String;
 - B  C (Ljava/lang/String;)V
 - E F G 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;	  I J K fsListenerMap Ljava/util/Map; M N O P Q java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; S java/lang/ref/Reference
 R U P V ()Ljava/lang/Object; X 6org/openide/loaders/OpenSupport$FileSystemNameListener
 W  [ java/lang/ref/WeakReference
 Z ]  ^ (Ljava/lang/Object;)V M ` a b put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 d  e "org/openide/filesystems/FileSystem
 d g h i addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V
 W k l m add ((Lorg/openide/loaders/OpenSupport$Env;)V
 & o p @ 
getNameExt
  r s t prop $()Ljava/beans/PropertyChangeSupport;
 v  w  java/beans/PropertyChangeSupport
 v y z   removePropertyChangeListener
  | } ~ veto $()Ljava/beans/VetoableChangeSupport;
 � g �  java/beans/VetoableChangeSupport
 � � � i removeVetoableChangeListener
  � � � getDataObject "()Lorg/openide/loaders/DataObject;
  � � � isValid ()Z
  � � � 
isModified
  � � � setModified (Z)V � org/openide/cookies/OpenCookie
  � � � 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; � (org/openide/windows/CloneableOpenSupport � org/openide/cookies/EditCookie �  org/openide/cookies/EditorCookie � modified
 � � � � @ java/beans/PropertyChangeEvent getPropertyName
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z
  g
  �
 � � � V getOldValue
 � � � V getNewValue
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  � � � fireVetoableChange
 v �
 � �	  � � � LOCK_SUPPORT Ljava/lang/Object;	  � � � propSupp "Ljava/beans/PropertyChangeSupport;
 v ]	  � � � vetoSupp "Ljava/beans/VetoableChangeSupport;
 � ] � java/util/WeakHashMap
 � �  � (I)V � ,org/openide/windows/CloneableOpenSupport$Env � java/io/Serializable � !java/beans/PropertyChangeListener � !java/beans/VetoableChangeListener serialVersionUID J ConstantValue�%�h- 	Signature �Ljava/util/Map<Lorg/openide/filesystems/FileSystem;Ljava/lang/ref/Reference<Lorg/openide/loaders/OpenSupport$FileSystemNameListener;>;>; #(Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/loaders/OpenSupport$Env; MethodParameters 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; 
Exceptions � java/io/IOException �  java/lang/ClassNotFoundException fs $Lorg/openide/filesystems/FileSystem; fsie 3Lorg/openide/filesystems/FileStateInvalidException; fsListenerRef Ljava/lang/ref/Reference; 
fsListener 8Lorg/openide/loaders/OpenSupport$FileSystemNameListener; initListening Z LocalVariableTypeTable SLjava/lang/ref/Reference<Lorg/openide/loaders/OpenSupport$FileSystemNameListener;>; StackMapTable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; l #Ljava/beans/PropertyChangeListener; #Ljava/beans/VetoableChangeListener; markModified unmarkModified findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport; oc  Lorg/openide/cookies/OpenCookie; edc  Lorg/openide/cookies/EditCookie; ec "Lorg/openide/cookies/EditorCookie; #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; vetoableChange  java/beans/PropertyVetoException name Ljava/lang/String; oldValue newValue <clinit> 
SourceFile OpenSupport.java InnerClasses org/openide/loaders/OpenSupport Env FileSystemNameListener! org/openide/nodes/Node$Cookie# org/openide/nodes/Node Cookie !    � � � �   � �  �    �      � � �   � � �    J K  �    �  � �      �  �   N     *� *+� *� �    �       �  � 	 �  � �        � �         �        � �  �   E     	+� *� �    �       �  �  � �       	 � �     	 � �  �     � � �    �       �       �*� **� � � *� � !� %L� 1M� -Y� /Y� 12� 4*� � !� 8;� 4� =� A,� D� -�>� HY:² H+� L � R:� � � T� WM,� � WY� YM� H+� ZY,� \� _ W>ç :��� +,� c+,� f,*� j�     + T � �   � � �    �   V    �  �  �  �  � K � M � T � b � g � k � t � x � � � � � � � � � � � � � � � � � �   R    � �   - � �  b 2 � �  t & � �    � � �   K k � �  �  � �  M i � �  �     b 2 � �  �   ` ] +� - d�    d   R  G W�     d W   �    d    ��    d W    � �  �   /     *� �    �       � �        � �    ? @  �   5     *� � !� n�    �       � �        � �   �             �   A     	*� q+� u�    �   
    �  � �       	 � �     	  �       z    �   A     	*� q+� x�    �   
    �  � �       	 � �     	  �       h i  �   A     	*� {+� �    �   
    �  � �       	 � �     	  �       � i  �   A     	*� {+� ��    �   
    �  � �       	 � �     	  �       � �  �   2     *� �� ��    �       � �        � �    � �  �   2     *� �� ��    �       � �        � �      �   7     	*� �� ��    �   
    �  � �       	 � �   �     �    �   7     	*� �� ��    �   
    �  � �       	 � �     �   �     M*� ��� �� �L+� �� +� ��*� ��� �� �M,� �� ,� ��*� ��� �� �N-� �� -� ���    �   * 
      &	 -
 2 ? F K �   *    M � �    @	  & '
  ?   �    �  ��  ��  �    �   �     :�+� �� ��  *� �� �� *� �*� �� *� �*� �*+� �+� �+� �� ��    �   * 
     ! ) +  /! 3" 6 9$ �       : � �     :  �    ! �        �   Y     *+� �+� �+� �� ��    �      ) * + 
, ) . �        � �       �     �       � �  �   W     *� q+,-� ��    �   
   6 
7 �   *     � �          �     �  �           � �  �   W     *� {+,-� ��    �   
   @ 
A �   *     � �          �     �  �     �           s t  �   �     %� �YL�*� �� *� vY*� Ƶ �*� �+ðM+�,�          #      �      F G H J  K �       % � �   �    �  F �  } ~  �   �     %� �YL�*� �� *� �Y*� ˵ �*� �+ðM+�,�          #      �      Q R S U  V �       % � �   �    �  F �    �   3      � �Y� γ H� Y� � ��    �   
    }  �       "   	 W  "$	 � �	