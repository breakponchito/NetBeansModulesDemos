����   4�
      java/lang/Object <init> ()V	  	 
   "org/openide/filesystems/FileSystem valid Z	     assigned	     
repository $Lorg/openide/filesystems/Repository;   	     
systemName Ljava/lang/String; 	       java/lang/Boolean TRUE Ljava/lang/Boolean;	  " #   FALSE
  % & ' firePropertyChange K(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V 
 * + , - . java/lang/String equals (Ljava/lang/Object;)Z
  0 1 2 fireVetoableChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 * 4 5 6 intern ()Ljava/lang/String;
  8 & 2 : displayName	  < =   defFS
  ? @ A booleanValue ()Z
 C D E F G  org/openide/filesystems/FileUtil getConfigRoot &()Lorg/openide/filesystems/FileObject;
 I J K L M "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem; O 1org/openide/filesystems/FileStateInvalidException
 Q R S T U org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  W X Y valueOf (Z)Ljava/lang/Boolean;	  [ \  $assertionsDisabled ^ java/lang/AssertionError ` Deprecated.
 ] b  c (Ljava/lang/Object;)V e java/lang/StringBuffer
 d 
 * h i j replace (CC)Ljava/lang/String;
 d l m n append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 d p m q (C)Ljava/lang/StringBuffer;
 d s t 6 toString
  v w x findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; z java/io/IOException | Unsupported operation
 y ~   (Ljava/lang/String;)V � %org/openide/filesystems/FileExtrasLkp
 � �  � 6(Lorg/openide/filesystems/FileSystem;Ljava/util/Set;)V
 � � � �  java/io/ObjectInputStream defaultReadObject � java/lang/StringBuilder
 � 
  � � 6 getSystemName
 � � m � -(Ljava/lang/String;)Ljava/lang/StringBuilder; � [
  s � ]
 � s	  � � � statusResult  Lorg/openide/util/Lookup$Result;
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; � 'org/openide/filesystems/StatusDecorator
 � � � � lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 � � � � � org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � A java/util/Iterator hasNext � � � � next ()Ljava/lang/Object;	  � � � 
SFS_STATUS )Lorg/openide/filesystems/StatusDecorator;
  � � A 	isDefault
  � � � defaultStatus +()Lorg/openide/filesystems/StatusDecorator;	  � � � STATUS_NONE
  � � � getEventControl (()Lorg/openide/filesystems/EventControl;
 � � � � � $org/openide/filesystems/EventControl runAtomicAction 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)V
 � � � � beginAtomicAction
  �
 � � �  finishAtomicAction
 � � � � dispatchEvent 7(Lorg/openide/filesystems/FileSystem$EventDispatcher;)V	  � � � thrLocal Ljava/lang/ThreadLocal;
 � � � � � java/lang/ThreadLocal get
 � 
 � � � c set	  � � � 
internLock Ljava/lang/Object;
  � � � getDecorator	  � � � fileStatusList &Lorg/openide/filesystems/ListenerList; � $org/openide/filesystems/ListenerList
 � 
 � � � . add
 �  . remove
 � getAllListeners ()Ljava/util/List; 7org/openide/filesystems/FileSystem$FileStatusDispatcher
	 
 <(Ljava/util/List;Lorg/openide/filesystems/FileStatusEvent;)V
  �	  � vetoableChangeList � java/util/List !java/beans/VetoableChangeListener java/beans/PropertyChangeEvent
  K(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V vetoableChange #(Ljava/beans/PropertyChangeEvent;)V	   changeSupport "Ljava/beans/PropertyChangeSupport;"  java/beans/PropertyChangeSupport
! b
!%&' addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
!)*' removePropertyChangeListener
  +
-. c setPropagationId
!0 &2 "org/openide/filesystems/FCLSupport	 456 
fclSupport $Lorg/openide/filesystems/FCLSupport;
1 
 9:; getFCLSupport &()Lorg/openide/filesystems/FCLSupport;
1=>? addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V
1AB? removeFileChangeListener
DEFG A java/lang/Class desiredAssertionStatus
DIJ 6 getName
LMNOP java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 RST LOG Ljava/util/logging/Logger;
 � W $org/openide/filesystems/FileSystem$1
V Z $org/openide/filesystems/FileSystem$2
Y ] java/io/Serializable serialVersionUID J ConstantValue����� 
PROP_VALID PROP_HIDDENf hidden 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; PROP_SYSTEM_NAME PROP_DISPLAY_NAME 	PROP_ROOTn root PROP_READ_ONLYq readOnly 	Signature ?Ljava/lang/ThreadLocal<Lorg/openide/filesystems/EventControl;>; TLorg/openide/filesystems/ListenerList<Lorg/openide/filesystems/FileStatusListener;>; KLorg/openide/filesystems/ListenerList<Ljava/beans/VetoableChangeListener;>; KLorg/openide/util/Lookup$Result<Lorg/openide/filesystems/StatusDecorator;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value FieldMayBeFinal Code LineNumberTable LocalVariableTable this $Lorg/openide/filesystems/FileSystem; refresh (Z)V expected MethodParameters isValid setValid v StackMapTable getDisplayName setSystemName o n name� java/lang/Throwable 
Exceptions�  java/beans/PropertyVetoException ex 3Lorg/openide/filesystems/FileStateInvalidException; check fs 
isReadOnly getRoot find \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; p aPackage ext bf Ljava/lang/StringBuffer; getTempFolder createTempFile o(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;Z)Lorg/openide/filesystems/FileObject; parent $Lorg/openide/filesystems/FileObject; prefix suffix deleteOnExit findExtrasFor *(Ljava/util/Set;)Lorg/openide/util/Lookup; objects Ljava/util/Set; LocalVariableTypeTable 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; P(Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;)Lorg/openide/util/Lookup; 
readObject (Ljava/io/ObjectInputStream;)V in Ljava/io/ObjectInputStream;�  java/lang/ClassNotFoundException deprecation Ljava/lang/Override; it Ljava/util/Iterator; @Ljava/util/Iterator<+Lorg/openide/filesystems/StatusDecorator;>; run 1Lorg/openide/filesystems/FileSystem$AtomicAction; 4Lorg/openide/filesystems/FileSystem$EventDispatcher; evnCtrl &Lorg/openide/filesystems/EventControl; addFileStatusListener /(Lorg/openide/filesystems/FileStatusListener;)V listener ,Lorg/openide/filesystems/FileStatusListener; removeFileStatusListener fireFileStatusChanged ,(Lorg/openide/filesystems/FileStatusEvent;)V event )Lorg/openide/filesystems/FileStatusEvent; 	listeners Ljava/util/List; >Ljava/util/List<Lorg/openide/filesystems/FileStatusListener;>; addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V #Ljava/beans/VetoableChangeListener; removeVetoableChangeListener l e  Ljava/beans/PropertyChangeEvent; #Ljava/beans/PropertyChangeListener; propagationId 	addNotify removeNotify getRepository &()Lorg/openide/filesystems/Repository; setRepository '(Lorg/openide/filesystems/Repository;)V rep fcl ,Lorg/openide/filesystems/FileChangeListener; waitRefreshed <clinit> 
SourceFile FileSystem.java InnerClasses Result� /org/openide/filesystems/FileSystem$AtomicAction AtomicAction� 2org/openide/filesystems/FileSystem$EventDispatcher EventDispatcher FileStatusDispatcher� 4org/openide/filesystems/FileSystem$AsyncAtomicAction AsyncAtomicAction!   \  ST   ^_ `   a c  `     d  `   eg    h    i   j  `    (g    h    i   k  `    9 l  `   m o  `   p  � �   � � � r   s  � �   �     �     �     �56        � � � r   t � � r   u �    B =     J � � r   v 
 � � w    x y[ sz \    ,    {   X     *� *� *� *� *� �   |       �  � 	 �  �  �  �}       ~   �� {   5      �   |       �}       ~     �  �   �   � A {   /     *� �   |       �}       ~   �� {   �     1*� � +*� *� 	� � � !� 	� � � !� !� $�   |       �  �  �  � - � 0 �}       1~     1�  �   S �      *�      * � 	     * �      *  �   �  � 6    � 6 {   /     *� �   |       �}       ~  g    h    i   �  {       N(Y:�*� +� )� ñ*(*� +� /*� M*+� 3Z� Nç :��*(,-� 7*9� 7�    5    2 5   5 : 5   |   * 
        % / = E M}   >  % �   / �     N~     N�   = �   = �  �   ! �    _��    * * *  �    ��   �  g    h    i    � A {   �     C<*� ;� � *� ;� >�M� B� HM� N-� P*� ;� **,� � � VZ� ;� >�    ! N |   * 
  - 0 1 3 5 8 !6 "7 &9 -=}   *  " ��    C~    A�    ,� �   / � �      NI �       � A  � G   �� {   �     d� Z� � ]Y_� a�� dY� f:+� )� +./� g:� kW/� oW,� 
,� kW-� .� oW-� kW*� r� u�   |   2   ` b e "g ,h 4i <m @n Gr Ks St Zw}   >  , �     d~     d�     d�     d�    K�� �    � + d
�   �  �  �  g    h    i   w x �   �   � G {   4     
� yY{� }�   |      �}       
~  �     y �� {   \     
� yY{� }�   |      �}   4    
~     
��    
�     
�     
�  �     y�   �  �  �  �   �� {   P     
� �Y*+� ��   |      �}       
~     
�� �       
�� �   �  r   � �� {   =     +� ��   |   
   � �}       ~     �� �     y��   �  w    x y[ s�  t 6 {   M     #� �Y� �*� �� ��� �*� �� ��� �� ��   |      �}       #~  w    �   
 � � {   �     6� �� � ��� �� �� �� �� � K*� � � *� � � �� � ��   |      � � � �}      ��  �      ��  �    �   �B �  � � {   H     *�  	� ŧ � ɰ   |      �}       ~  �    B �  � � {   A     	*� �+� б   |   
   � �}       	~     	�� �     y�   �    � � {   A     	*� �+� ֱ   |   
   � �}       	~     	�� �   �     �  {   4     *� ٱ   |   
   � �}       ~     �  {   6     *� ̶ ڱ   |   
    	}       ~     � � {   A     	*� �+� ݱ   |   
    }       	~     	�� �   �    � � {   m     � � �� �L+� � � �Y� �YL� �+�   |       
  }       ~   
 �� �    �  � �� {   �     9� �YM�*� � ɦ ,ñ*� �� *� �Y� �� �*� �+� �W,ç N,�-��    3    0 3   3 6 3   |   "   % ' ( + , %/ .0 81}       9~     9�� �    �  M�� �   �   �� {   [     *� �� �*� �+� �W�   |      7 8 ; <}       ~     �� �    �   �   �� {   �     *� �� �*� ��M*�Y,+���   |      C D G H I}        ~     ��   �� �      �� �    �   �   �� {   �     ,� �YM�*�� *� �Y� ��*�+� �W,ç N,�-��   # &   & ) &   |      O P Q T !U +V}       ,~     ,�� �    �  M�� �   �   �� {   [     *�� �*�+� �W�   |      \ ] ` a}       ~     �� �    �   �    1 2 {   �     N*�� �:*��� :� � � -� � �:� �Y*+,-�:� ��ϱ   |   & 	  k l o q /r 4s Av Jw Mx}   >  / ��    N~     N�     N� �    N� �   C�� �    �  �� '� �    ��   �  �  �   &' {   �     ,� �YM�*�� *�!Y*�#�,ç N,�-�*�+�$�        !    |      ~  � � #� +�}       ,~     ,�� �    �  D�� �   �   *' {   U     *�� *�+�(�   |      � � �}       ~     �� �    �   �    & 2 {   U     	*+,-� $�   |   
   � �}   *    	~     	�     	� �    	� � �   �  �  �    & ' {   �     7*�� �,� -� ,-�+� ��Y*+,-�:�,*��/�   |   "   � � � � � &� -� 6�}   >    7~     7�     7� �    7� �    7� �  & �� �    �   �  �  �  �   �  {   +      �   |      �}       ~   �  {   +      �   |      �}       ~   �� {   /     *� �   |      �}       ~    �� {   >     *+� �   |   
   � �}       ~     �  �   �   :; {   �     '1YL�*�3� *�1Y�7�3+ç M+�,�*�3�             |      � � � � "�}       '~  �    �  D��  >? {   A     	*�8+�<�   |   
   � �}       	~     	�� �   �   B? {   A     	*�8+�@�   |   
   � �}       	~     	�� �   �    �  {   +      �   |      �}       ~   �  {   {      D�C� � � Z�H�K�Q� Y� � � �Y�U� �VY�X� ɻYY�[� ��   |       d  f  � % � / � 9'�    @ �   ��   :  � ��	� �	� � � 
V      Y      � �