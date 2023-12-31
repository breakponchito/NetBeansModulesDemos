����   46
      org/openide/util/BaseUtilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
  	 
   java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V	      &org/openide/filesystems/FileChangeImpl 
isOnTarget Z	     $assertionsDisabled  java/lang/AssertionError
     ()V	     path Ljava/io/File;	    ! " current $Lorg/openide/filesystems/FileObject;
 $ % & ' (  org/openide/filesystems/FileUtil normalizeFile (Ljava/io/File;)Ljava/io/File;	  * +  currentF
 $ - . / toFileObject 4(Ljava/io/File;)Lorg/openide/filesystems/FileObject;
 1 2 3 4 5 java/io/File equals (Ljava/lang/Object;)Z
 1 7 8 9 getParentFile ()Ljava/io/File;
 ; < = > ? "org/openide/filesystems/FileObject removeFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V
 ; A B ? addFileChangeListener
 ; D E F getChildren '()[Lorg/openide/filesystems/FileObject;
  H I J get ()Ljava/lang/Object; L *org/openide/filesystems/FileChangeListener
  N O  locateCurrent
 ; Q R S isFolder ()Z U !org/openide/filesystems/FileEvent
 T W  X '(Lorg/openide/filesystems/FileObject;)V K Z [ \ fileFolderCreated &(Lorg/openide/filesystems/FileEvent;)V K ^ _ \ fileDataCreated
 T a b J 	getSource d $org/openide/filesystems/DeepListener
 c f g h fileChanged '(Lorg/openide/filesystems/FileEvent;Z)V K j g \
  l m  
someChange
 c o p h fileDeleted K r p \
 c t _ h
 c v [ h
 x a y 'org/openide/filesystems/FileRenameEvent
 c { | } fileRenamed -(Lorg/openide/filesystems/FileRenameEvent;Z)V K  | � ,(Lorg/openide/filesystems/FileRenameEvent;)V
 � a � *org/openide/filesystems/FileAttributeEvent K � � � fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V
 $ � � � assertNormalized (Ljava/io/File;)Z	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � addFileChangeListener {0} @ {1} � java/lang/Object
 � � � � log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V	  � � � holders Ljava/util/Map; � � � I � java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object; � java/util/HashMap
 �  � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � java/lang/StringBuilder
 �  � Already listening to 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � 
new listener   :  � 
holder listener:  � "java/lang/IllegalArgumentException
 � � � � toString ()Ljava/lang/String;
 � �  � (Ljava/lang/String;)V
  �  � =(Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;)V
  � � S isMac
 $ � � � (Ljava/io/File;Z)Z � "removeFileChangeListener {0} @ {1} � Was not listening to  � � � 5 containsKey �  was not listening to  � 
; only to  � � � � keySet ()Ljava/util/Set; � � � � remove � � � S isEmpty
  � �  run
 c �  � p(Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;Ljava/io/FileFilter;Ljava/util/concurrent/Callable;)V
 c � �  init	 c � � � LOG Ljava/util/logging/Logger;
  � � � addFileChangeListenerImpl W(Ljava/util/logging/Logger;Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;)V
  � � � removeFileChangeListenerImpl �(Ljava/util/logging/Logger;Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;)Lorg/openide/filesystems/FileChangeListener;
 c �
 � �  S java/lang/Class desiredAssertionStatus java/util/WeakHashMap
  java/lang/Runnable 	Signature �Ljava/util/Map<Lorg/openide/filesystems/FileChangeListener;Ljava/util/Map<Ljava/io/File;Lorg/openide/filesystems/FileChangeImpl;>;>; Code LineNumberTable LocalVariableTable this (Lorg/openide/filesystems/FileChangeImpl; listener ,Lorg/openide/filesystems/FileChangeListener; StackMapTable MethodParameters 
oldCurrent wasOnTarget 
currentNew java/lang/Throwable fe #Lorg/openide/filesystems/FileEvent; )Lorg/openide/filesystems/FileRenameEvent; ,Lorg/openide/filesystems/FileAttributeEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; sb Ljava/lang/StringBuilder; f2H prev holder logger LocalVariableTypeTable GLjava/util/Map<Ljava/io/File;Lorg/openide/filesystems/FileChangeImpl;>; h addRecursiveListener �(Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;Ljava/io/FileFilter;Ljava/util/concurrent/Callable;)Lorg/openide/filesystems/DeepListener; recurseInto Ljava/io/FileFilter; stop Ljava/util/concurrent/Callable; deep &Lorg/openide/filesystems/DeepListener; 4Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>; �(Lorg/openide/filesystems/FileChangeListener;Ljava/io/File;Ljava/io/FileFilter;Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;)Lorg/openide/filesystems/DeepListener; removeRecursiveListener dl <clinit> �Ljava/lang/ref/WeakReference<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileChangeListener;Ljava/lang/Runnable; 
SourceFile FileChangeImpl.java 0    K   � �           ! "    +                � 	   �     %*+� � *� � � ,� � Y� �*,� �   
       .  +  /  0 $ 1        %     %    %       �    K 1     	        O  	       ~*� L**� � #� )**� )� ,� *� � **� *� )� 0� � **� )� 6� )*� )��ͱ� � *� � � Y� �*� +� +� +*� :*� *� @*� � CW�   
   B    4  5  7  8 " 9 1 : 4 < ? = F @ G C \ D d E h F m H u I } K       ~    y "     �  ;#  m  	  |     n*Y:�*� � ñ*� G� KL+� ñ*� =*� M*� Nç :��*� � -� )-� P� +� TY-� V� Y � +� TY-� V� ] �    4     4     1 4   4 9 4   
   >    Q  R  S  U  V  W   Y % Z ) [ . \ < ] G ` N a _ c m f   H     %    .  "    n   < 2  < 2   < 2 "    J �       �  �    K   �  �       � �    K ;  "  g \ 	   �     @+� `*� � 7*� � ,*� G� KM,� c� ,� c+� e� ,� 
,+� i � *� k�   
   * 
   i  j  k  l ! m - n 1 o 8 q ; r ? u           @     @     � - K� 
       p \ 	   �     =+� `*� � 4*� � )*� G� KM,� c� ,� c+� n� ,� 
,+� q *� k�   
   & 	   x  y  z  { ! | - } 1 ~ 8 � < �           =     =     � - K� 
       _ \ 	   �     @+� `*� � 7*� � ,*� G� KM,� c� ,� c+� s� ,� 
,+� ] � *� k�   
   * 
   �  �  �  � ! � - � 1 � 8 � ; � ? �           @     @     � - K� 
       [ \ 	   �     @+� `*� � 7*� � ,*� G� KM,� c� ,� c+� u� ,� 
,+� Y � *� k�   
   * 
   �  �  �  � ! � - � 1 � 8 � ; � ? �           @     @     � - K� 
       | � 	   �     =+� w*� � 4*� � )*� G� KM,� c� ,� c+� z� ,� 
,+� ~ *� k�   
   & 	   �  �  �  � ! � - � 1 � 8 � < �           =     =     � - K� 
       � � 	   �     &+� �*� � *� � *� G� KM,� 
,+� � �   
       �  �  �  �  � % �           &     &     %      ! �  	   T     *� � *� *� :*� �   
       �  �  �  �                     � � 	  �  	   ڲ � ,� �� � Y� �*� �� �� *� ��� �Y+SY,S� �� �Y:² �+� � � �:� � �Y� �:� �+� � W,� � � :� A� �Y� �:�� �,� �W�� �+� �W�� �� G� �W� �Y� · ƿ� Y+,� �N,-� � Wç :��-� M�  ; � �   � � �   
   R    �  �  � 4 � ; � I � N � W � c � p � u � ~ � � � � � � � � � � � � � � � � �   R  ~ 5  I ~ �  p W   � !    �" �     �    �    � ! #     I ~$    > � .  � �� O �   � K 1  � �   � K 1      "         � � 	  �     ܲ � ,� ̸ Ϛ � Y� �*� �� �� *� ��� �Y+SY,S� �� �YN² �+� � � �:� � �Y� �Y� �Զ �,� �� · ƿ,� � � 1� �Y� �Y� �+� �ٶ �,� �۶ �� � � �� · ƿ,� � � :� � � � �+� � W� �� G� K-ð:-��  = � �   � � �   
   >    �  � " � 7 � = � K � P � k � v � � � � � � � � � � � � �   4  K � �  � $%    �" �     �    �   #     K �$    * � 3 � �8�   �   � K 1 �    "        &' 	   �     � cY*+,-� �:� �� �+� ��   
       �  �  �  �   4               ()    *+   ,- #       *.         (  *     / 0 � 	   q     � cY*+� �M� �,+� �� cN-� ��   
       �  �  �     *              ,-   1-    	      2  	   B      � �� � � �Y�� ��   
   
    #  %    @    34   5