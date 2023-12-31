����   4 �	      0org/openide/text/DocumentOpenClose$DocumentClose this$0 $Lorg/openide/text/DocumentOpenClose;
  	 
   java/lang/Object <init> ()V	     closeDoc !Ljavax/swing/text/StyledDocument;	     delayedClose Z	     readLockedRun
    	      "org/openide/text/DocumentOpenClose lock Ljava/lang/Object;	  ! "  	cancelled	  $ %  started
  ' ( ) 	setDocRef $(Ljavax/swing/text/StyledDocument;)V	  + , - ces )Lorg/openide/text/CloneableEditorSupport;
 / 0 1 2 3 'org/openide/text/CloneableEditorSupport setListeningOnEnv (Z)V 5 6 7 8 9 javax/swing/text/StyledDocument render (Ljava/lang/Runnable;)V
 / ; < = updateLineSet (Z)Lorg/openide/text/Line$Set;
  ? @ A updateLines %(Ljavax/swing/text/StyledDocument;Z)V	 C D E F G org/openide/text/DocumentStatus CLOSED !Lorg/openide/text/DocumentStatus;	  I J G documentStatus	  L M N activeCloseTask (Lorg/openide/util/RequestProcessor$Task;	  P Q R activeClose 2Lorg/openide/text/DocumentOpenClose$DocumentClose;	  T U  firingCloseDocument
 / W X A fireDocumentChange	  Z [   docOpenedWhenFiringCloseDocument
  ] ^ _ 
access$000 ()Ljava/util/logging/Logger;	 a b c d e java/util/logging/Level FINER Ljava/util/logging/Level;
 g h i j k java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z m java/lang/StringBuilder
 l 	 p -documentClose(): fireDocumentChange: success=
 l r s t append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 l v s w (Z)Ljava/lang/StringBuilder; y 

 l { | } toString ()Ljava/lang/String;
 g  � � finer (Ljava/lang/String;)V
 / � �  callNotifyUnmodified
 / � � � getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager; 5 � � � removeUndoableEditListener +(Ljavax/swing/event/UndoableEditListener;)V
 / � � � removeDocListener (Ljavax/swing/text/Document;)V
 / � � � getPositionManager (()Lorg/openide/text/PositionRef$Manager;
 � � � �  $org/openide/text/PositionRef$Manager documentClosed
 � � � �   org/openide/awt/UndoRedo$Manager discardAllEdits
 l �  � (I)V � 	closeDoc=
  � � � getSimpleName &(Ljava/lang/Object;)Ljava/lang/String; � , delayedClose= � , cancelled= � 
, started= � java/lang/Runnable I(Lorg/openide/text/DocumentOpenClose;Ljavax/swing/text/StyledDocument;Z)V Code LineNumberTable LocalVariableTable this MethodParameters run success StackMapTable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; cancel ()Z sb Ljava/lang/StringBuilder; 
SourceFile DocumentOpenClose.java InnerClasses DocumentClose � org/openide/text/Line$Set � org/openide/text/Line Set � &org/openide/util/RequestProcessor$Task � !org/openide/util/RequestProcessor Task � org/openide/awt/UndoRedo Manager � org/openide/text/PositionRef 0    �              "      %                 �  �   ^     *+� *� *,� *� �    �      � 	� � � �         � R               �            �   �     	  *� � *� *� �*� � YL�*�  � +ñ*� #+ç M+�,�*� � &*� � *� .*� *� � *� *� 4 *� � *� :W*� *� � >*� � YL�*� � B� H*� � K*� � O+ç N+�-�*� � S<*� � **� � V<*� � S*� � Y� \� `� f� c� \� lY� no� q� ux� q� z� ~� B:*� � S*� � Y� \� `� f� !� \� lY� no� q� ux� q� z� ~�� �:*� � Y:�*� � B� H*� � K*� � Oç :��*� � S6*� � **� � V6*� � S*� � Y� \� `� f� e� \� lY� no� q� ux� q� z� ~� C:*� � S*� � Y� \� `� f� "� \� lY� no� q� ux� q� z� ~���   $ /   % , /   / 2 /    � �   � � �   � � �   � � �   < u=  Jgj  joj  }��  ���  =?=    �   � 7  � � � � � � "� %� *� 4� <� G� L� S� ]� i� u� � �� �� �� �� �� �� �� �� �� �� �� �����7�:�=�J�T�\�d�r�z�}�������������������
��� �      � � �  } � �     � R   �   � �  I �� (� @     �� � W    �� ;   ��     B �� ,       �   �� � Z       �  �� <  �� �      �     �        �   �     M*� � *� �*� � $*� *� � *� �� � *� � **� � �*� � *� �� �*� � *� �� ��    �      � 
� � $� 2� ?� L� �       M � R   �    2   � �  �   �     #*� � YL�*� #� +ì*�  +ìM+�,�  
           !     �      � 
� � � � � �       # � R   �    �  H �  | }  �   �     E� lY ȷ �L+�� q*� � �� q�� q*� � u�� q*�  � u�� q*� #� uW+� z�    �      � � � )� 5� @  �       E � R    : � �  �     �    �    � �   *    �  � � �	 � � �  � � � 	 � � � 