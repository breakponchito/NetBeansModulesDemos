����   4�
      %org/openide/util/actions/SystemAction <init> ()V  org/openide/nodes/Node
 
     org/openide/util/Lookup 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;
      java/util/Collections 	emptyList ()Ljava/util/List;      java/util/Collection size ()I     toArray (([Ljava/lang/Object;)[Ljava/lang/Object;   [Lorg/openide/nodes/Node;
 " # $ % & $org/openide/actions/FileSystemAction nodes 4(Lorg/openide/util/Lookup;)[Lorg/openide/nodes/Node;
 ( ) * + , !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 ( . / 0 getRegistry -()Lorg/openide/windows/TopComponent$Registry; 2 3 4 5 6 )org/openide/windows/TopComponent$Registry getActivatedNodes ()[Lorg/openide/nodes/Node; 8 java/util/HashMap
 7  ; java/util/LinkedList
 :  > org/openide/loaders/DataObject @ A B C D java/util/List addAll (Ljava/util/Collection;)Z
  F G H 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; @ J K L add (Ljava/lang/Object;)Z @ N O P isEmpty ()Z @ R S T iterator ()Ljava/util/Iterator; V W X Y P java/util/Iterator hasNext V [ \ ] next ()Ljava/lang/Object; _ org/openide/loaders/DataShadow
 ^ a b c getOriginal "()Lorg/openide/loaders/DataObject;
 = e f g getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 i j k l m "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem; o p q r s java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; u java/util/Set w java/util/LinkedHashSet
 v  o z { | put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 = ~  � files ()Ljava/util/Set; t A � 1org/openide/filesystems/FileStateInvalidException o 
 � � � � � org/openide/util/Enumerations empty ()Ljava/util/Enumeration;
 " � � � 
createMenu K(Ljava/util/Enumeration;ZLorg/openide/util/Lookup;)[Ljavax/swing/JMenuItem; o � � � entrySet t R � java/util/Map$Entry � � � ] getKey � "org/openide/filesystems/FileSystem � � � ] getValue
 : �  � (Ljava/util/Collection;)V V � �  remove
 � � � � findExtrasFor *(Ljava/util/Set;)Lorg/openide/util/Lookup; � javax/swing/Action
 " � � P isManualRefresh � +org/openide/actions/FileSystemRefreshAction
 � � r � :(Ljava/lang/Class;)Lorg/openide/util/actions/SystemAction;
  � � � enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
 " � � � createProxyLookup O(Lorg/openide/util/Lookup;Ljava/util/Set;)Lorg/openide/util/lookup/ProxyLookup;	 " � � � NONE [Ljavax/swing/JMenuItem;
 � � � � � org/openide/util/NbPreferences root ()Ljava/util/prefs/Preferences; �
 � � � � � java/util/prefs/Preferences node 1(Ljava/lang/String;)Ljava/util/prefs/Preferences; � manual
 � � � � 
getBoolean (Ljava/lang/String;Z)Z � #org/openide/util/lookup/ProxyLookup t  t 
 � � � � � org/openide/util/lookup/Lookups fixed .([Ljava/lang/Object;)Lorg/openide/util/Lookup;
 � �  � ([Lorg/openide/util/Lookup;)V
 � � � � removeDuplicates 0(Ljava/util/Enumeration;)Ljava/util/Enumeration; � java/util/ArrayList
 �  � � � � P java/util/Enumeration hasMoreElements � � � ] nextElement � #org/openide/util/ContextAwareAction � � � � createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; � � � P 	isEnabled � java/lang/RuntimeException � java/lang/StringBuilder
 �  � Guilty action: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � getClass ()Ljava/lang/Class;
	 java/lang/Class getName ()Ljava/lang/String;
 �	 toString
 org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 printStackTrace (Ljava/lang/Throwable;)V (org/openide/util/actions/Presenter$Popup getPopupPresenter ()Ljavax/swing/JMenuItem; 'org/openide/util/actions/Presenter$Menu ! getMenuPresenter @ $ javax/swing/JMenuItem @ ' )org/openide/actions/FileSystemAction$Menu
&) * (ZLorg/openide/util/Lookup;)V, ACT_FileSystemAction
./012 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;4 org/openide/util/HelpCtx
36 7 (Ljava/lang/Class;)V	 "9:; $assertionsDisabled Z= java/lang/AssertionError? ActionEvt: 
 �A �B -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
<D E (Ljava/lang/Object;)VG 3org/openide/actions/FileSystemAction$DelegateAction
FI J (Lorg/openide/util/Lookup;)V
LM P desiredAssertionStatus Code LineNumberTable LocalVariableTable this &Lorg/openide/actions/FileSystemAction; c Ljava/util/Collection; lookup Lorg/openide/util/Lookup; LocalVariableTypeTable 1Ljava/util/Collection<+Lorg/openide/nodes/Node;>; StackMapTable MethodParameters 4(ZLorg/openide/util/Lookup;)[Ljavax/swing/JMenuItem; obj  Lorg/openide/loaders/DataObject; Lorg/openide/nodes/Node; fs $Lorg/openide/filesystems/FileSystem; foSet Ljava/util/Set; ex 3Lorg/openide/filesystems/FileStateInvalidException; fo $Lorg/openide/filesystems/FileObject; 
backupList Ljava/util/List; it Ljava/util/Iterator; entry Ljava/util/Map$Entry; result backSet popUp n fsSet Ljava/util/Map; l 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; :Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; pLjava/util/Map$Entry<Lorg/openide/filesystems/FileSystem;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;>; &Ljava/util/List<Ljavax/swing/Action;>; jLjava/util/Map<Lorg/openide/filesystems/FileSystem;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;>; 2Ljava/util/List<Lorg/openide/loaders/DataObject;>; 	Signature u(Lorg/openide/util/Lookup;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;)Lorg/openide/util/lookup/ProxyLookup; e Ljava/lang/RuntimeException; item Ljavax/swing/JMenuItem; a Ljavax/swing/Action; enabled en Ljava/util/Enumeration; items array .Ljava/util/Enumeration<+Ljavax/swing/Action;>; )Ljava/util/List<Ljavax/swing/JMenuItem;>; b(Ljava/util/Enumeration<+Ljavax/swing/Action;>;ZLorg/openide/util/Lookup;)[Ljavax/swing/JMenuItem; 
getHelpCtx ()Lorg/openide/util/HelpCtx; actionPerformed (Ljava/awt/event/ActionEvent;)V Ljava/awt/event/ActionEvent; actionContext <clinit> 
SourceFile FileSystemAction.java InnerClasses�  org/openide/windows/TopComponent Registry� org/openide/nodes/Node$Cookie Cookie Entry� "org/openide/util/actions/Presenter Popup Menu DelegateAction ! "   �   � �  :;       N   /     *� �   O       ,P       QR   
 % & N   �     %*� *� 	L� � L++�  � �  � �   O       6  7  9  ;P       ST    %UV    ST W      SX   SX Y   	 �  Z   U    �[ N  �    �+� !M,� � '� -� 1 M� 7Y� 9N� :Y� <:,� ,�� +=� 	� ? W� =,:�66� +2:=� E� =:		� 	� I W����� M �z� Q :� U � p� Z � =:� ^� � ^� `:���� G� d� h:-� n � t:� -� vY� xY:� y W� }� � W� :������-� � � -� � � � �+� ��� :Y� <:� vY� x:-� � � � :� U � �� Z � �:� � � �:	� � � t:
� :Y
� �:� Q :� U � /� Z � i:� h	� 
� � � :� � ���� � W	� ��� 	� ? W��j� �� �� �� I W� �+� �� ��� ��  � � � ���� � O   � 0   C  E 	 F  I  J & K / L @ N Y O e P j Q t N z V � W � X � Y � Z � \ � ] � ^ � _ � a � b d h i  l) m2 nU pa qm rx s� t� u� w� x� |� z� {� }� ~� � �� �� �� �� �P   �  e \] 	 Y  �^  � 2_`  � %ab  � cd  � ^\] � cd � ef a t_` 	m hab 
x ]gh � Tij U �kl ) �mh 2 �nb   �o;    �UV  �p    �qr  &�sh W   \ 	 � %at m hat 
x ]gu � Tiv U �kw ) �mx 2 �nt  �qy  &�sz Y   � �  �  o @� 
 (� �  V�  =� 3 � t�   
  o @ V =  �� � �  @ t V� A  
  o @ @ t V � � t @ V  � & iB �� �    
  o @ @ t  � Z   	o  U   
 � P N   '      � �ö ��� ̬   O       � 
 � � N   k     %� �Y� 
Y*SY++� � � i� � � �S� ڰ   O       �P       %UV     %nb W       %nt Z   	U n {   |  � � N       �*� �K� �Y� �N*� � � �*� � � �:,� � � � �,� � :6� � 6� ,:� �Y� ��� ��  �� ��
�W�� C:� �� &�� :� �� �� :� -� I W��V-�" �#:-�% W�  = F I � O   n    �  �  �  � ! � - � : � = � F � I � K � [ � i � m � r � w � z � ~ � � � � � � � � � � � � � � � � � � �P   \ 	 K '}~  z =�  ! ���  = z�;    ���     �o;    �UV   ��h  � � � W       ���    ��� Y   2 �  @� , ��   � 
 @ �  �(� "#� Z   �  o  U  {   � ! N   4     
�&Y�(�   O       �P       
QR    N   4     
�&Y�(�   O       �P       
QR   	 N   3     	=+�-�   O       �P       	QR   �� N   4     
�3Y"�5�   O       �P       
QR   �� N   d     #�8� �<Y� �Y� �>� �+�@�
�C��   O   
    � " �P       #QR     #}� Y    "Z   }    � � N   =     	�FY+�H�   O       �P       	QR     	�V Z   �   �  N   ?      "�K� � �8�#� ��   O   
    ,  /Y    @ �   ��   :  2��	� �	 � o�	��	��	& "� 
F "� 