����   4.  5org/openide/text/PositionRef$Manager$DocumentRenderer
      java/lang/Object <init> ()V	  
   opCode I	     argKind +Lorg/openide/text/PositionRef$Manager$Kind;	      )org/openide/text/PositionRef$Manager$Kind mgr &Lorg/openide/text/PositionRef$Manager;	  
     /(ILorg/openide/text/PositionRef$Manager$Kind;)V	     argInsertAfter Z	    !  argInt	  # $ % argDoc !Ljavax/swing/text/StyledDocument;	  ' (  argToMemory	  * + , argPos Lorg/openide/text/PositionRef;
 . / 0 1 2 $org/openide/text/PositionRef$Manager 
access$300 I(Lorg/openide/text/PositionRef$Manager;)Ljavax/swing/text/StyledDocument;
 . 4 5 6 
access$000 ()Ljava/lang/ThreadLocal;
 8 9 : ; < java/lang/ThreadLocal get ()Ljava/lang/Object;
 8 > ? @ set (Ljava/lang/Object;)V B C D E F javax/swing/text/StyledDocument render (Ljava/lang/Runnable;)V
  H I  run
  K L < renderToObject	  N O P ioException Ljava/io/IOException;
  R E 	  T U V 	retObject Ljava/lang/Object;
  X Y Z renderToInt ()I	  \ ]  retInt	  _ `  retLine	  b c  	retColumn
  e f g toMemoryLockAcquired 6(Z)Lorg/openide/text/PositionRef$Manager$PositionKind; i 1org/openide/text/PositionRef$Manager$PositionKind
 h k l Z getLineLockAcquired
 h n o Z getColumnLockAcquired
  q r Z 	getOffset
  t u Z getLine
  w x Z 	getColumn
 . z { | getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;
 ~  � � � 'org/openide/text/CloneableEditorSupport openDocument #()Ljavax/swing/text/StyledDocument;
 � � � � � org/openide/text/NbDocument findLineNumber %(Ljavax/swing/text/StyledDocument;I)I
 � � � � findLineColumn
 � � � � findLineOffset
 . � � � 
access$100 :(Lorg/openide/text/PositionRef$Manager;)Ljava/lang/Object;
 . � � � 
access$500 X(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/PositionRef$Manager$ChainItem;	 � � � � � .org/openide/text/PositionRef$Manager$ChainItem next 0Lorg/openide/text/PositionRef$Manager$ChainItem;
 � 9 � org/openide/text/PositionRef
 � � � � 
access$600 K(Lorg/openide/text/PositionRef;)Lorg/openide/text/PositionRef$Manager$Kind;
  � � � isMemoryType ()Z
 � � � � 
access$700 !(Lorg/openide/text/PositionRef;)Z
 � � � � setKind .(Lorg/openide/text/PositionRef$Manager$Kind;)V
  � � � fromMemoryLockAcquired -()Lorg/openide/text/PositionRef$Manager$Kind;
 � � � � 
access$800 ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � java/lang/StringBuilder
 �  � (PositionRef.PROCESS_POSITIONS: toMemory=
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (Z)Ljava/lang/StringBuilder; � , refCount=
 � � � � (I)Ljava/lang/StringBuilder; � , emptyRefCount=
 � � � � toString ()Ljava/lang/String;
 � � � � fine (Ljava/lang/String;)V
 . � � � 
access$400 Q(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/CloneableEditorSupport;
 ~ � � � howToReproduceDeadlock40766 (Z)V
 . � � � 
access$900 F(Lorg/openide/text/PositionRef$Manager;)Ljava/lang/ref/ReferenceQueue;
 � �  � o(Lorg/openide/text/PositionRef;Ljava/lang/ref/ReferenceQueue;Lorg/openide/text/PositionRef$Manager$ChainItem;)V
  � � g toMemory � java/lang/IllegalStateException
 �  � java/io/IOException � java/lang/Runnable KIND_TO_MEMORY ConstantValue     POSITION_KIND_GET_LINE    POSITION_KIND_GET_COLUMN    POSITION_KIND_WRITE    OFFSET_KIND_GET_LINE    OFFSET_KIND_GET_COLUMN    LINE_KIND_GET_OFFSET    PROCESS_POSITIONS    ADD_POSITION    Code LineNumberTable LocalVariableTable this 7Lorg/openide/text/PositionRef$Manager$DocumentRenderer; MethodParameters 0(ILorg/openide/text/PositionRef$Manager$Kind;Z)V 0(ILorg/openide/text/PositionRef$Manager$Kind;I)V P(ILorg/openide/text/PositionRef$Manager$Kind;Ljavax/swing/text/StyledDocument;)V +(ILorg/openide/text/PositionRef$Manager;Z)V H(ILorg/openide/text/PositionRef$Manager;Lorg/openide/text/PositionRef;)V d prev StackMapTable java/lang/Throwable renderToObjectIOE o 
Exceptions renderToIntIOE i pos previous ref refCount emptyRefCount e 
SourceFile PositionRef.java InnerClasses Manager DocumentRenderer Kind PositionKind 	ChainItem 0    �   �   �    �  �   �    �  �   �    �  �   �        �       �       �       �    	   �   
                      (     !     + ,    $ %    U V    ]     `     c     O P           e     *� *� 	*,� *,� � �         w x 	y z {                         	             \     *,� *� �         ~  �   *                                           \     *,� *� �         � � �   *                      !            !         \     *,� *-� "�         � � �   *                      $ %           $         l     *� *� 	*,� *� &�         � � 	� � �   *                      �            �         l     *� *� 	*,� *-� )�         � � 	� � �   *                      + ,           +     E     �     G*� � -L� 3� 7M+� � 3+� =+*� A � � 3*� � =*� G� 3,� =� N� 3,� =-��   2 <      2   � � � � � $� .� 2� 9� <� D� F�        G    ? %   8 V     � $ B I	   <    a     *� JL*� M� *� M�+�         � � � �            V     �       �   L <    7     	*� Q*� S�      
   � �       	     Z    _     *� W<*� M� *� M��         � � � �                 �      �   Y Z    7     	*� Q*� [�      
   � �       	     u Z    /     *� ^�         �            x Z    /     *� a�         �           I    �  	  @*� 	�     *          4   F   W   h   �   �   �   �  �**� *� � d� S��**� � h� j� [��**� � h� m� [��**� � p� [**� � s� ^**� � v� a��**� � � y� }*� � �� [��**� � � y� }*� � �� [�s**� "*� � s� �*� � v`� [�V*� � �YL�*� � �M,� �N66-� k-� �� �:�� ,-� �� ��� D*� &� #� �� �� 0� �� �� d� �� � �� �� � �� �� �-M-� �N���� �� �� �� 3� �� �Y� �Ƕ �*� &� �ж �� �ն �� Ҷ ׶ �+ç 
:+��� �*� � �� �*� � �YL�*� � �� �*� � �� �Y*� )*� � �*� � �� �� � �*� � -� *� )*� )� �*� )� �� � �+ç 
:+��� � �Y� � 	L*+� M�  ���  ���  �!$  $($    69 �    � 5  � 8� G� J� X� [� i� l� w� �� �� �� �� �� �� �� �� �� �� �  � � 	#*5JUbdilx��!�&�(�)�*�,-/+1.56997:8?:   H  \  ,  � �! �  � �" �  � �#    �$  : % P   @     T 8#�     � �  � " �&� � ;     D� � g D� B � &   '(   *  . �)   .*   .+
 h .,  � .- 
