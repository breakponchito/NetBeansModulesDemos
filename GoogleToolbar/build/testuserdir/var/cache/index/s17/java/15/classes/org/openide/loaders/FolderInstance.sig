����   4L	      "org/openide/loaders/FolderInstance map Ljava/util/HashMap;	   	 
 CURRENT Ljava/lang/ThreadLocal;	     err Ljava/util/logging/Logger;	     	container *Lorg/openide/loaders/DataObject$Container;	     creationSequence I
     defaultProcessObjects J(Ljava/util/Collection;)[Lorg/openide/loaders/FolderInstance$HoldInstance;
     <init> -(Lorg/openide/loaders/DataObject$Container;)V
     ! ?(Lorg/openide/loaders/DataObject$Container;Ljava/lang/String;)V
 # $ %  & org/openide/util/Task ()V ( java/util/HashMap
 ' *  + (I)V	  - . / object Ljava/lang/Object; 1 org/openide/loaders/DataFolder	  3 4 5 folder  Lorg/openide/loaders/DataFolder;
 0 7 8 9 getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 ; < = > ? "org/openide/filesystems/FileObject getPath ()Ljava/lang/String;
 A B C D E java/lang/String replace (CC)Ljava/lang/String;
 G H I J K org/openide/loaders/FolderList find G(Lorg/openide/filesystems/FileObject;Z)Lorg/openide/loaders/FolderList; M +org/openide/loaders/FolderInstance$Listener
 L O  P '(Lorg/openide/loaders/FolderInstance;)V	  R S T listener -Lorg/openide/loaders/FolderInstance$Listener; V "org.openide.loaders.FolderInstance X java/lang/StringBuilder
 W $ [ #org.openide.loaders.FolderInstance.
 W ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 W a b ? toString
 d e f g h java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 j k l m n org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; p q r s t (org/openide/loaders/DataObject$Container addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V	 v w x y z java/util/logging/Level FINE Ljava/util/logging/Level;
 d | } ~ 
isLoggable (Ljava/util/logging/Level;)Z � new 
 W � ^ � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 d � � � fine (Ljava/lang/String;)V	  � � � precreateInstances Z
  � � � instanceClass ()Ljava/lang/Class;
 � � � � ? java/lang/Class getName � java/io/IOException � java.lang.Object �  java/lang/ClassNotFoundException
 � � � � � java/lang/Object getClass
 � � � � � java/lang/ThreadLocal get ()Ljava/lang/Object;	  � � 
 LAST_CURRENT � do into waitFinished
  � � & waitFinished � instanceCreate:  � GCyclic reference. Somebody is trying to get value from FolderInstance ( � 6) from the same thread that is processing the instance
 � �  � � #waitProcessingFinished on container
  � �  waitProcessingFinished
  � � � checkRecognizingStarted ()Lorg/openide/util/Task; � checkRecognizingStarted: 
 # �	  � � � creationTask Lorg/openide/util/Task; � creationTask: 
 � � � � � java/awt/EventQueue isDispatchThread ()Z
 � � � � � ,org/netbeans/modules/openide/loaders/AWTTask waitFor (Lorg/openide/util/Task;)Z	  � � � [Lorg/openide/util/Task; � toWait: 
 � � � b � java/util/Arrays '([Ljava/lang/Object;)Ljava/lang/String; �   wait[
 W � ^ � (I)Ljava/lang/StringBuilder; � ]:  � breaking the wait loop
  � � & recreate
  � � & instanceFinished � "org/openide/cookies/InstanceCookie
 � � � � � org/openide/loaders/DataObject 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
  � � � acceptCookie J(Lorg/openide/cookies/InstanceCookie;)Lorg/openide/cookies/InstanceCookie;	 v � � z WARNING
 d � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  revertProblematicFile #(Lorg/openide/loaders/DataObject;)V	 v z INFO
 ' �	 &(Ljava/lang/Object;)Ljava/lang/Object; /org/openide/loaders/FolderInstance$HoldInstance	
 cookie $Lorg/openide/cookies/InstanceCookie;
  acceptFolder F(Lorg/openide/loaders/DataFolder;)Lorg/openide/cookies/InstanceCookie;
  acceptContainer P(Lorg/openide/loaders/DataObject$Container;)Lorg/openide/cookies/InstanceCookie; acceptDataObject:  	 cookie:   acceptType: 
 � 7
 ; ! & revert �#$ � instanceCreate �
 '() computeChildrenList k(Lorg/openide/loaders/DataObject$Container;Lorg/openide/loaders/FolderListListener;)Lorg/openide/util/Task;	 +, � recognizingTask.   recognizing task is now 
 01 & notifyRunning
 34 � 
isFinished
 G6 � &
 G8(9 R(Lorg/openide/loaders/FolderListListener;)Lorg/openide/util/RequestProcessor$Task;	 ;<= 	PROCESSOR #Lorg/openide/util/RequestProcessor;? $org/openide/loaders/FolderInstance$1
>A B U(Lorg/openide/loaders/DataObject$Container;Lorg/openide/loaders/FolderListListener;)V
DEFGH !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;J %org/openide/loaders/FolderInstance$1R
IL M =(Lorg/openide/loaders/FolderInstance;Ljava/util/Collection;)V	IOP  sequence
DRSH create	IUVW instancesTask (Lorg/openide/util/RequestProcessor$Task;
YZ[\ + &org/openide/util/RequestProcessor$Task schedule
 ^_` postCreationTask -(Ljava/lang/Runnable;)Lorg/openide/util/Task; 	 vcd z FINESTf   objects to process:hijkl java/util/Collection toArray ()[Ljava/lang/Object;
 dno � finestq java/util/ArrayList
p $t java/util/HashSet
 'vwx keySet ()Ljava/util/Set;
sz { (Ljava/util/Collection;)Vh}~ iterator ()Ljava/util/Iterator;���� � java/util/Iterator hasNext��� � next
 ��� � isValid
 ��� acceptDataObject F(Lorg/openide/loaders/DataObject;)Lorg/openide/cookies/InstanceCookie;
s��� remove (Ljava/lang/Object;)Z ���� equals

� � k(Lorg/openide/loaders/FolderInstance;Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)V
 '��� put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 � q
p��� add����� java/util/Set 	removeAll (Ljava/util/Collection;)Z
p��� size ()I
p�k� (([Ljava/lang/Object;)[Ljava/lang/Object;
 ��� updateWaitFor 5([Lorg/openide/loaders/FolderInstance$HoldInstance;)V
 ��� createInstance 9([Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object;� notifying finished�   #{0}: {1}
����� java/lang/Integer valueOf (I)Ljava/lang/Integer;
 d� �� A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 ���� set (Ljava/lang/Object;)V
 �� & notifyFinished
p *

�� � getTask �� @
����� java/lang/System identityHashCode (Ljava/lang/Object;)I
���� toHexString (I)Ljava/lang/String;� (� )� Folder Instance Processor
D �
 � $ 	Signature +Ljava/lang/ThreadLocal<Ljava/lang/Object;>; jLjava/util/HashMap<Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/FolderInstance$HoldInstance;>; #(Lorg/openide/loaders/DataFolder;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/FolderInstance; df MethodParameters logName Ljava/lang/String; StackMapTable instanceName ex Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; tmp 
Exceptions ()Ljava/lang/Class<*>; i originalRecognizing t toWait isLog #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; run previous 1Lorg/openide/loaders/FolderInstance$HoldInstance; fld c dob  Lorg/openide/loaders/DataObject; 
acceptType x cookies instanceForCookie X(Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; obj checkRecreate list  Lorg/openide/loaders/FolderList; (Lorg/openide/loaders/FolderListListener; processObjects arr Ljava/util/Collection; process 'Lorg/openide/loaders/FolderInstance$1R; LocalVariableTypeTable 8Ljava/util/Collection<Lorg/openide/loaders/DataObject;>; ;(Ljava/util/Collection<Lorg/openide/loaders/DataObject;>;)V toRemove Ljava/util/HashSet; hold fo $Lorg/openide/filesystems/FileObject; attachListener 
prevCookie Ljava/util/ArrayList; all 2[Lorg/openide/loaders/FolderInstance$HoldInstance; 9Ljava/util/HashSet<Lorg/openide/filesystems/FileObject;>; HLjava/util/ArrayList<Lorg/openide/loaders/FolderInstance$HoldInstance;>;% java/lang/Throwable l(Ljava/util/Collection<Lorg/openide/loaders/DataObject;>;)[Lorg/openide/loaders/FolderInstance$HoldInstance; defaultProcessObjectsFinal 
prevResult prevLast result! out .Ljava/util/ArrayList<Lorg/openide/util/Task;>; Ljava/lang/Runnable; ()Ljava/util/logging/Logger; 
access$000 n(Lorg/openide/loaders/FolderInstance;Ljava/util/Collection;)[Lorg/openide/loaders/FolderInstance$HoldInstance; x0 x1 
access$100 '(Lorg/openide/loaders/FolderInstance;)I 
access$200 P(Lorg/openide/loaders/FolderInstance;)Lorg/openide/loaders/DataObject$Container; 
access$300 @(Lorg/openide/loaders/FolderInstance;)Ljava/util/logging/Logger; 
access$400 ()Ljava/lang/ThreadLocal; 
access$500 9(Lorg/openide/loaders/FolderInstance;)Ljava/util/HashMap; <clinit> 
SourceFile FolderInstance.java InnerClasses 	Container HoldInstance ListenerF org/openide/nodes/Node$CookieH org/openide/nodes/Node Cookie Task R!  #  �  <=    	 
 �   �  � 
 �   �  4 5           �   � B � �   B . /    S T        , �   B � �   B      � �   $  � �   >     *+� �   �   
    �  ��       ��     � 5 �   �      �   ?     *+� �   �   
    �  ��       ��        �         ! �  ^     �*� "*� 'Y� )� *� � ,+� 0� -*+� 0� 2,� *� 2� 6� :/.� @M*� 2� 6� FL*� LY*� N� Q,� 	UM� � WY� YZ� \,� \� `M*,� c� *+� +*� Q+� i� o *� � u� {� *� � WY� Y� \*� �� `� ��   �   R    �  q  }  �  � ' � + � = � I � U � Y � _ � s � { � � � � � � � � � � � � ��        ���     �      ��� �    � =   p A  � A�   	   �     � & �   4     *� ��   �   
    �  ��       ��   � ? �   ~     *� �� ��L��L��      �     � �       �  � 	 �  �  ��      	 ��   ��    ��  �   
 H �C �  � � �   �     )*� ,L+�  +� �� +� ��+� �� +� ��+� ����   �   "    �  � 	 �  �  �  � ! � & ��       )��    $� / �   
 �  ��     � ��   � $ � �       �� � �L+� � �� �*� *� �� �*� �*� ,L*� � u� {� *� � WY� Y�� \+� �� `� �+� �� +� ��+� �� +� ��+� � )� �Y� WY� Y�� \*� �� �� \�� \� `� ��+�   �   :    �  �  �   " ' 4 N	 U
 Z a f m ��       ���    �� / �    �  �&,�     � �  � & �   3     *� ��   �   
     �       ��    � & �      *� � u� {<*� �� �*� � �*� �M� *� � WY� Y�� \,� �� `� �,� �*� �N� *� � WY� Yƶ \-� �� `� �-� � ș -� Κ 
���-� �*� �:� !*� � WY� Y׶ \� ٶ \� `� �� H6�� =� +*� � WY� Y޶ \� �� \2� �� `� �2� �����,*� �� � *� � �� ���   �   v   * , - /  0 $1 >3 B5 G6 K7 e9 i: o; v< y? }D �E �F �H �I �J �K �M �I �S �T �U]
^�   >  � B�     �� �  G �� �  � �� �   ��    � � �   & � � 2 #� & #� '�� 3� � �    �   � & �   ;     	*� �*� �   �      b c d�       	��  �    �   �� �       �=+�� �� �N-� � *-� �N=� 2:*� � �� �*+� N� :*� �� �*+� N-� B+0� �� 0:� 2*� � 6��
:� �� N=� *�N=-� +p� �� p:� *�N=*� � u� {� 2*� � WY� Y� \+� �� \-� �� \� � `� �-�     �   8 � �   ~   � � � � � � !� .� 3� 5� 8� :� G� L� N� R� ]� b� s� �� �� �� �� �� �� �� �� �� �� �� ���   \ 	 ! ��  : ��  s    ] 4 5  �      ���     �   �    � �   $ 	�  �D �E �X �� 9 0
� ;�       �   {     +��� M*� �,� ��     
 � �      � � 
� � ��       �    ��      �    J ��       � � �   6     +�   �      ��       ��      �     � ��       �   :     *+��   �      ��       ��     � 5 �   �    �   6     �   �      ��       ��        �      �� �     � ��      	
 �   E     ,�" �   �      +�        ��          �     � ��   	     ! � & �   �     I*� %� �**� *� Q�&�**� � u� {� !*� � WY� Y-� \*�*� �� `� �*�/�   �      ; 
< = &> D@ HA�       I��  �    � D  & �   G     *�2� *� �   �      J K M�       ��  �     2 � � �   K     *�*� *� �*�*�   �      S T W�       ��  �     
 �  �   J     *� G� 
*� G�5�   �      g h j�          �    �      
() �   u     "*� G� *� GM,+�7��:�>Y*+�@�C�   �      v w x }�           "       " S �    �   	   S  { �   �     E�IY*+�KM,*Y� `Z� �N*� �� ,�:,�Q�T*,� �,�T�X� **,�]� ±   �   "   � 
� �  � +� 0� ;� D��        E��     E  
 ;        E �   	 � ;I�    �       �  �    �*� a� �*� �b� {� &*� � WY� Ye� \+�g � ٶ \� `�m�pY�rN� Y:»sY*� �u�yMç :��+�| :�� �H�� � �:��� ���*��:� ��:6:	,��� 3*� ��
:		�  	�� 	��� � 	:	6	� a�
� �
:
� �
Y*��:
� Y:�*� 
��Wç :��� *� Q� i��-
��W� 
-	��W� n� Y:��:,��W*� ��
:		� 	�� 	ç��
Y*��:	*� 	��Wç :��*� Q� i������ Y:�*� �u,�� Wç :��-���
:-��W*��� 	 I [ ^   ^ c ^      %   V��  ���  ���  ���  ���   �   � 7  � 
� � :� B� I� X� f� �� � � � � �
 � � � � � � � � � �!"#(&-'5(8';,B-E/L1O3V4]5d7r8:�?�A�B�E�F�E�K�N�P�Q�T�U�W�Y�   �  X   �  
 ; 
 � �  � � �  � � 	] A r , 	 �#  �6   ���    �  f�  B� �  !    *  X "   �  f�"  B�# �   � :� #  h p � $�   hsp  � ��   �� L 
 hsp� � � ;
  � 
�   hsp� � � ;

 � $� � 	� � 5 � ;
�   hsp� � � � $� � � �   hsp � $� �     �   & '� �  �    `M*+��M*� � u� {� 9*� �� �>+�� '*� � u�� �Y��SY+2S������*,� ,� � �N� ,�ò �� �:� �*��*�ǲ -�ò ��ç :� -�ò ������N-M*� � u� {� 9*� �� �>+�� '*� � u�� �Y��SY+2S������*,� ,� � �N� ,�ò �� �:� �*��*�ǲ -�ò ��ç :� -�ò �����3N-M*� � u� {� 9*� �� �>+�� '*� � u�� �Y��SY+2S������*,� ,� � �N� ,�ò �� �:� �*��*�ǲ -�ò ��ç :� -�ò ����� �:*� � u� {� =*� �� �6		+�� )*� � u�� �Y	��SY+	2S���	���*,� ,� � �:	� ,�ò �� �:
� �*��*�ǲ 	�ò �
�ç :� 	�ò �
�����  m q �   � � �     � �      / ����  ���    �   � ��  /2�  04G  GIG  ���   �  > O  ] _ e f g 'h Eg Kk Pm Wn ^o fp ms qu xv �w �u �v �w �x �` �a �e �f �g �h �g �k �m �n �o �psuvwu!v)w,x/b0c2e?fIgQhogukzm�n�o�p�s�u�v�w�u�v�w�x�e�f�g�hgkmn!o)p0s4u<vDwGuQvYw\x_y�   �  ! * �   W @( /  f 1) /  � ��  � * �   � @( /  � 1) / 0 �� K * �  � @( / � 1) / � - �  	 B( / 	) 3) / 
  `��    ` !  ^* / �   � � ! �� )� 7  + � � � $� B �� � )� 7  + � � � $� B �� � )� 7  + � � � $� B$�  
 + �     $  � ,� 9  + �     $ � � $� �   + �  �       �� �   �     ?�pY+���M>+�� +2��:� 
,��W����*,,��� #���ε Ա   �   "    
� � � � &� ,� >��   4   � �    �     ?��     ?!  
 5,      
 5,- �    � p� �      _` �   <     �:+�C�   �      ��       ��     �. �   �    / �   /     *� �   �      ��       ��    b ? �   b     8� WY� Y*� �� �� \϶ \*�Ѹ׶ \۶ \*� � �ݶ \� `�   �      ��       8��  �    �  01 �   :     *+� �   �       N�       2�     3 45 �   /     *� �   �       N�       2�  67 �   /     *� �   �       N�       2�  89 �   /     *� �   �       N�       2�  :; �         � �   �       N<= �   /     *� �   �       N�       2�   > & �   B      "�DY߷�:� �Y�� � �Y�� ��   �       U  \  b ?   @A   :  p �B	
 C  L D EGI	YDJ >      I  K  