����   4`	      %org/openide/awt/MenuBar$MenuBarFolder this$0 Lorg/openide/awt/MenuBar;
  	 
   "org/openide/loaders/FolderInstance <init> #(Lorg/openide/loaders/DataFolder;)V  java/util/HashMap
     ()V	     cookiesToObjects Ljava/util/Map;	      7org/netbeans/modules/openide/loaders/DataObjectAccessor DEFAULT 9Lorg/netbeans/modules/openide/loaders/DataObjectAccessor;
     precreateInstances '(Lorg/openide/loaders/FolderInstance;)V ! org/openide/awt/DynaMenuModel
   
  $ %  recreate
 ' ( ) * + org/openide/awt/MenuBar getTreeLock ()Ljava/lang/Object;
  - . / 
getManaged ()Ljava/util/ArrayList;
 1 2 3 4 5 java/util/ArrayList iterator ()Ljava/util/Iterator; 7 8 9 : ; java/util/Iterator hasNext ()Z 7 = > + next @ java/awt/Component
 ' B C D remove (Ljava/awt/Component;)V
 1 F G  clear
  I J K createNoComponent ()Ljava/awt/Component;
 1 M N O size ()I
 ' Q R S add +(Ljava/awt/Component;I)Ljava/awt/Component;
 1 U R V (Ljava/lang/Object;)Z
 1 X R Y (ILjava/lang/Object;)V
 1 [ C \ (I)Ljava/lang/Object;
 ' ^ C _ (I)V a 'org/openide/awt/MenuBar$MenuBarFolder$1
 ` c  d *(Lorg/openide/awt/MenuBar$MenuBarFolder;)V
 f g h i j javax/swing/JComponent setSize (II)V
 f l m n 
setVisible (Z)V
 p q r s t java/lang/Class getName ()Ljava/lang/String;
  v w x instanceForCookie X(Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; z { | } ~ java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � � � � � "org/openide/cookies/InstanceCookie instanceClass ()Ljava/lang/Class;
 p � � � isAssignableFrom (Ljava/lang/Class;)Z � *org/openide/util/actions/Presenter$Toolbar � javax/swing/Action �  org/openide/awt/MenuBar$LazyMenu
 � �  � $(Lorg/openide/loaders/DataFolder;Z)V	 � � � � slave -Lorg/openide/awt/MenuBar$LazyMenu$MenuFolder;
 1 �  _
 ' � � � allInstances 8([Lorg/openide/cookies/InstanceCookie;Ljava/util/List;)V	  � � � 	instances Ljava/util/List;	 � � � � � java/util/Collections 
EMPTY_LIST � M � java/util/List � � � \ get
 � � � � � java/util/Objects equals '(Ljava/lang/Object;Ljava/lang/Object;)Z
  � � _ removeComponent
  � � � convertToComponent ((Ljava/lang/Object;)Ljava/awt/Component;
  � � � addComponent (Ljava/awt/Component;I)V
  � � D z F
 ' � �  validate
 ' � �  repaint z � � � &(Ljava/lang/Object;)Ljava/lang/Object; � org/openide/loaders/DataObject
 � � � � getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 � � � � � "org/openide/awt/AcceleratorBinding setAccelerator ;(Ljavax/swing/Action;Lorg/openide/filesystems/FileObject;)V � � � K getToolbarPresenter � javax/swing/JButton
 � 
 � � � � � org/openide/awt/Actions connect 3(Ljavax/swing/AbstractButton;Ljavax/swing/Action;)V
 � � � n setBorderPainted � java/awt/Insets
 � �  � (IIII)V
 � � � � 	setMargin (Ljava/awt/Insets;)V	  � � � folder  Lorg/openide/loaders/DataFolder; � ,org/netbeans/modules/openide/loaders/AWTTask
 � �  � ;(Ljava/lang/Runnable;Lorg/openide/loaders/FolderInstance;)V	  � � � $assertionsDisabled Z
 � � � � V java/lang/Thread 	holdsLock � java/lang/AssertionError
 � 	  managed Ljava/util/ArrayList;
 1 
 p ; desiredAssertionStatus 	Signature +Ljava/util/ArrayList<Ljava/awt/Component;>; $Ljava/util/List<Ljava/lang/Object;>; CLjava/util/Map<Ljava/lang/Object;Lorg/openide/loaders/DataObject;>; <(Lorg/openide/awt/MenuBar;Lorg/openide/loaders/DataFolder;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/awt/MenuBar$MenuBarFolder; MethodParameters cleanUp it Ljava/util/Iterator; LocalVariableTypeTable *Ljava/util/Iterator<Ljava/awt/Component;>; StackMapTable java/lang/Object java/lang/Throwable c Ljava/awt/Component; index I noComponent Ljavax/swing/JComponent; instanceName #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; obj  Lorg/openide/loaders/DataObject; cookie $Lorg/openide/cookies/InstanceCookie; result Ljava/lang/Object; 
Exceptions/ java/io/IOException1  java/lang/ClassNotFoundException acceptCookie J(Lorg/openide/cookies/InstanceCookie;)Lorg/openide/cookies/InstanceCookie; cls Ljava/lang/Class; is acceptFolder F(Lorg/openide/loaders/DataFolder;)Lorg/openide/cookies/InstanceCookie; df createInstance 9([Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; 	component instance k cookies %[Lorg/openide/cookies/InstanceCookie; ll mb lo modified i j file a Ljavax/swing/Action; button Ljavax/swing/JButton; retVal 	getFolder "()Lorg/openide/loaders/DataFolder; postCreationTask -(Ljava/lang/Runnable;)Lorg/openide/util/Task; run Ljava/lang/Runnable; -()Ljava/util/ArrayList<Ljava/awt/Component;>; <clinit> 
SourceFile MenuBar.java InnerClasses MenuBarFolderZ "org/openide/util/actions/Presenter Toolbar LazyMenu^ +org/openide/awt/MenuBar$LazyMenu$MenuFolder 
MenuFolder 0       	   
  � � 	       	    � �             u     )*+� *,� *� Y� � � *� �  Y� "W*� #�         " # 
f $ & $' ((       )     ) � �    	  �       �     @*� � &YL�*� ,� 0M,� 6 � *� ,� < � ?� A���*� ,� E+ç N+�-��  
 7 :   : = :         - 
. / .1 52 ?3          @             �  7� K�   � D    �     7+� *� HL*� � &YM�*� +*� ,� L� PW*� ,+� TW,ç N,�-��   . 1   1 4 1         7 8 	: ; #< ,= 6>       7     7     	� '   ? �        � �    �     3+� *� HL*� � &YN�*� +� PW*� ,+� W-ç 
:-���   ( +   + / +         A B 	D E F &G 2H        3     3    3 !     	� !   ? �    	       � _    �     &*� � &YM�*� ,� ZW*� � ],ç N,�-��  
        #           K 
L M N %O       &     & !     �     �         J K    V     � `Y*� bL+� e+� k+�         R 	S T U          	 "#  $ t    0     '� o�         \         %    &    � �    -     '�         c         %    &    w x    e     *+,� uN*� -+� y W-�         k l m   *         '(    )*   +, -    .0   	'  )  %    &   23    �     2+�  M?,� �� �,� �� �,� �� � >� +� �         w x 
y z { (|   *    2     2)*   +45  ( 
6 �     � " p@� @ �-    .0   )  %    &   78    A     � �Y+� �� ��         �            9 �    9  %    &   :;   �    C� 1Y+�� �M+,� �*� N*� �:� � �:666� � � �,� � � �� � ,� � � �� � n,� � :`6		� � � 	� � � �� � 	�	���	� � � 	� "*� �����*� �:
*
� ���6����^� � � *� ��6���,� � �  *,� � � �:*� ��6���*� � � � :*� � � �*,� �� -� �-� �-�  -!  !#!      � ,  � 
� � � � � $� '� -� D� [� ^� h� z� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��������!�,�/�4�9�=�A�   z  � < 
 h a=,  n [>! 	 <   C    C?@  
9A �  /B   )C �  'D �  *E!  -F!      
9A  )C    - � $ � ' �� 0� � 'K-    .0   ?    � �   ?     �M+� ?� +� ?M� Y+� �� 4*� +� � � �N+� �� -� +� �-� ʸ �+� �� � M� !+� �� +� �N� �Y� �:-� �M,� י ,� �� �,� ׻ �Y� � �,�      F   � � 	� � � &� 1� <� F� P� U� ^� d� g� n� v� ��   >  &  G(  U HI  ^ 	JK    �     �',   �L     �  ?� * ��     '   MN    /     *� �         �          OP    >     
� �Y+*� �         �       
     
QR    Q  %    &    . /    r     2� �� *� � &� �� � �Y� �*�� *� 1Y��*��         � � "� -�       2      	   S T     4      '�� � � ��             @ U   VW   *   'X  `       �Y[	 � '\ 
] �_ 