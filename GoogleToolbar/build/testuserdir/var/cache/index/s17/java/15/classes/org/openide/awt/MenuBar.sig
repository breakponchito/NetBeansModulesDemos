����   4P
      javax/swing/JMenuBar <init> ()V
   	 org/openide/awt/MenuBar
       org/openide/filesystems/FileUtil getConfigRoot &()Lorg/openide/filesystems/FileObject;  Menu
     createFolder \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;  java/io/IOException
      org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V  java/lang/IllegalStateException ! No Menu/
  #  $ (Ljava/lang/String;)V
 & ' ( ) * org/openide/loaders/DataFolder 
findFolder F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataFolder;
  , - . startLoading #(Lorg/openide/loaders/DataFolder;)V
 0 1 2 3 4 java/awt/EventQueue isDispatchThread ()Z 6 org/openide/awt/MenuBar$1
 5 8  9 (Lorg/openide/awt/MenuBar;)V
 0 ; < = invokeLater (Ljava/lang/Runnable;)V
  ? @ A getAccessibleContext )()Ljavax/accessibility/AccessibleContext;
 & C D E getName ()Ljava/lang/String;
 G H I J $ %javax/accessibility/AccessibleContext setAccessibleDescription L !NbMainWindow.showCustomBackground
 N O P Q R javax/swing/UIManager get &(Ljava/lang/Object;)Ljava/lang/Object;
 N T U V 
getBoolean (Ljava/lang/Object;)Z
  X Y 4 isOpaque
  [ \  updateUI
 N ^ _ ` getLookAndFeel ()Ljavax/swing/LookAndFeel;
 b c d e E javax/swing/LookAndFeel getID g GTK
 i j k l V java/lang/String equals n Windows
 p q r s t javax/swing/BorderFactory createEmptyBorder ()Ljavax/swing/border/Border;
  v w x 	setBorder (Ljavax/swing/border/Border;)V
  z { | setBorderPainted (Z)V	  ~  � menuBarFolder 'Lorg/openide/awt/MenuBar$MenuBarFolder;
  � � � getTreeLock ()Ljava/lang/Object;
 � � � � V java/lang/Thread 	holdsLock
 � � � �  %org/openide/awt/MenuBar$MenuBarFolder waitFinished
  � � � getMenuCount ()I
 � � � � 4 org/openide/util/Utilities isMac � apple.laf.useScreenMenuBar
 � � � U � java/lang/Boolean (Ljava/lang/String;)Z � javax/swing/JMenu
  � � � addImpl *(Ljava/awt/Component;Ljava/lang/Object;I)V
 � � �  instanceFinished
 � � � � 	getFolder "()Lorg/openide/loaders/DataFolder; � � � � � java/io/ObjectOutput writeObject (Ljava/lang/Object;)V � � � � � java/io/ObjectInput 
readObject
 � �  � <(Lorg/openide/awt/MenuBar;Lorg/openide/loaders/DataFolder;)V � � � � � "org/openide/cookies/InstanceCookie instanceCreate	 � � � � �  org/openide/awt/MenuBar$LazyMenu 	SEPARATOR Ljavax/swing/JSeparator; � javax/swing/JSeparator
 �  � � � � V java/util/List add �  java/lang/ClassNotFoundException
 � � � � � java/lang/Throwable getCause ()Ljava/lang/Throwable;
 � � � E 
getMessage
 � �  � *(Ljava/lang/String;Ljava/lang/Throwable;)V
 � � � � getStackTrace  ()[Ljava/lang/StackTraceElement;
 � � � � � java/lang/Exception setStackTrace !([Ljava/lang/StackTraceElement;)V
 � � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � "org/openide/awt/AcceleratorBinding
 � C � java/lang/Class
 � � � � forName %(Ljava/lang/String;)Ljava/lang/Class; � %java/lang/ExceptionInInitializerError
 � �  
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	  � � � LOG Ljava/util/logging/Logger; java/io/Externalizable serialVersionUID J ConstantValue�xC�Ȯ�l Code LineNumberTable LocalVariableTable this Lorg/openide/awt/MenuBar; ex Ljava/io/IOException; root $Lorg/openide/filesystems/FileObject; fo folder  Lorg/openide/loaders/DataFolder; 	theFolder StackMapTable "org/openide/filesystems/FileObject MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; laf Ljava/lang/String; gtk Z windows c Ljava/awt/Component; 
constraint Ljava/lang/Object; idx I writeExternal (Ljava/io/ObjectOutput;)V out Ljava/io/ObjectOutput; 
Exceptions readExternal (Ljava/io/ObjectInput;)V in Ljava/io/ObjectInput; allInstances 8([Lorg/openide/cookies/InstanceCookie;Ljava/util/List;)V o e "Ljava/lang/ClassNotFoundException; t Ljava/lang/Throwable; newEx Ljava/lang/Exception; i arr %[Lorg/openide/cookies/InstanceCookie; list Ljava/util/List; LocalVariableTypeTable $Ljava/util/List<Ljava/lang/Object;>;? java/lang/Object9 	Signature L([Lorg/openide/cookies/InstanceCookie;Ljava/util/List<Ljava/lang/Object;>;)V <clinit> x 
SourceFile MenuBar.java InnerClasses MenuBarFolder LazyMenuK %org/openide/awt/MenuBar$LazySeparator LazySeparatorN &org/openide/awt/MenuBar$MarkedKeyEvent MarkedKeyEvent !        �         � �          3     *� �      
    {  |	       
     .   *     ^*� +M,� 1� 
N:-� :� 
:� � � Y � "�� %M*,� +� /� � 5Y*� 7� :+� *� >+� B� F�         F    �  �  � 
 �  �  �  �  �  � # � 2 � 8 � = � C � N � R � ] �	   >      *   '    ^
     ^   X    " �    & &  �        Y 4    Z     K� M� K� S� � �*� W�          � 	 �  �	       
      @         \     �     8� /� 4*� Z� ]� aL+f� h=+m� h>� � 
*� o� u� *� y�      * 
   �  � 
 �  �  �  � ' � . � 2 � 7 �	   *   &          8
      � . i�         � �    X     *� }� *� �� �� 
*� }� �*� ��          �  �  �	       
              � �    �     � �� �� �� +� �� �*+,� ��          �  �  �  �  �  �	   *    
          !"    #$          !  #          �     6     *� }� ��      
    �  �	       
   %&    F     +*� }� �� � �      
    �  �	       
     '( )        '   *+    F     *+� � � &� +�      
    �  �	       
     ,- )      �   ,     - .    F     *� �Y*+� �� }�      
    �  �	       
           ./   �     �M>*�� �:*2� � :� �� � �Y� �:+� � W� ::� 	::� J:� �� 1� ͙ � �Y� �,� �:� ۶ ߧ ,� �W� � �:���M���r,� ,� �   1 4 �  1 =     n    �  � 
 �  �  �  � ( � 1 � 4 � 6 � : � = � ? � C � H  L T \ k x 	 � � � � � � �	   \ 	  0"  6 12  ? 1  L C34   �56   �7$    �89     �:;   �6 <       �:=    > �  �� # �>�  @ � � �  �H �  �+		� �    	8  :  A   B C     q     "� � �W� K� �Y*� ��� � �� ��    	  �        n 	 q  o  p  u	      	D2      L �	 E   FG   *  5       � H  � I 
J L M O 