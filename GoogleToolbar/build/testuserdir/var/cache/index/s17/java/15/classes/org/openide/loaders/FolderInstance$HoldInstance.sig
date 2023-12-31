����   4 �	      /org/openide/loaders/FolderInstance$HoldInstance this$0 $Lorg/openide/loaders/FolderInstance;
  	 
   java/lang/Object <init> ()V	     cookie $Lorg/openide/cookies/InstanceCookie;	     source  Lorg/openide/loaders/DataObject;  org/openide/util/Task  org/openide/util/TaskListener
      org/openide/util/WeakListeners create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
    ! " addTaskListener "(Lorg/openide/util/TaskListener;)V $ % & ' ( "org/openide/cookies/InstanceCookie instanceName ()Ljava/lang/String; * %org/openide/cookies/InstanceCookie$Of ) , - . 
instanceOf (Ljava/lang/Class;)Z $ 0 1 2 instanceClass ()Ljava/lang/Class;
 4 5 6 7 . java/lang/Class isAssignableFrom 9 java/io/IOException ;  java/lang/ClassNotFoundException
 = > ? @ A "org/openide/loaders/FolderInstance instanceForCookie X(Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object;
 = C D  checkRecreate F java/lang/StringBuilder
 E 	
  I J ( toString
 E L M N append -(Ljava/lang/String;)Ljava/lang/StringBuilder; P [
 R S T U V org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 X Y Z [ ( "org/openide/filesystems/FileObject getPath ] null _ ]
 E I k(Lorg/openide/loaders/FolderInstance;Lorg/openide/loaders/DataObject;Lorg/openide/cookies/InstanceCookie;)V Code LineNumberTable LocalVariableTable t Lorg/openide/util/Task; this 1Lorg/openide/loaders/FolderInstance$HoldInstance; StackMapTable MethodParameters of 'Lorg/openide/cookies/InstanceCookie$Of; clazz Ljava/lang/Class; ex Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; type LocalVariableTypeTable Ljava/lang/Class<*>; 	Signature (Ljava/lang/Class<*>;)Z 
Exceptions instanceCreate ()Ljava/lang/Object; taskFinished (Lorg/openide/util/Task;)V task getTask ()Lorg/openide/util/Task; � java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FolderInstance.java InnerClasses HoldInstance Of      )                    a  b   �     1*+� *� *-� *,� -� � -� :*� � � �    c      ' 	( ) + .  / 01 d   *     e f    1 g h     1      1    i    � 0   = R $   j            ' (  b   4     
*� � # �    c      7 d       
 g h    - .  b   �     0*� � )� *� � )M,+� + �*� � / M+,� 3�M�M�   ) * 8  ) - :  c   & 	  G 
H I M $N *O +P -Q .R d   >    k l  $  m n  +  o p  .  o q    0 g h     0 r n  s     $  m t    0 r t  i    O 8B : j    r   u    v  1 2  b   4     
*� � / �    c      _ d       
 g h   w     8 :  x y  b   T     *� � �*� *� *� � <�    c      i j 	l d        g h   i    	 w     8 :  z {  b   @     *� � B�    c   
   s t d        g h      | f  j    |    } ~  b   O     *� � � *� � ��    c      y 
| ~ d        g h   i      J (  b   {     5� EY� G*� H� KO� K*� � *� � Q� W� \� K^� K� `�    c      � d       5 g h   i    g E�     E  �     �    �    � �      = �  ) $ �	