����   4 �
      Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$ActionStateUpdater schedule ()V	   	 
 this$0 ;Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;
      java/lang/Object <init>
      9org/netbeans/modules/openide/explorer/ExplorerActionsImpl 
access$500 %()Lorg/openide/util/RequestProcessor;
      !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;	     timer (Lorg/openide/util/RequestProcessor$Task;
 ! " # $ % org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;	  ' ( ) weakL #Ljava/beans/PropertyChangeListener;
 + , - . / $org/openide/explorer/ExplorerManager addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 + 1 2 / removePropertyChangeListener
 4 5 6 7 8 &org/openide/util/RequestProcessor$Task getDelay ()I
 : ; < = > java/awt/EventQueue isDispatchThread ()Z
  @ A  syncActions
  C D E updateActions (Z)V
 : G H I invokeLater (Ljava/lang/Runnable;)V
  K L  registerListener
  N O  updateTrans	  Q R S flavL &Ljava/awt/datatransfer/FlavorListener;
  U V W getClipboard #()Ljava/awt/datatransfer/Clipboard; Y $java/awt/datatransfer/FlavorListener
 ! [  \ W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
 ^ _ ` a b java/awt/datatransfer/Clipboard addFlavorListener )(Ljava/awt/datatransfer/FlavorListener;)V
 ^ d e f getContents 8(Ljava/lang/Object;)Ljava/awt/datatransfer/Transferable;	  h i j trans $Ljava/awt/datatransfer/Transferable;       d
 4 n o p waitFinished (J)Z r java/lang/InterruptedException
  t u v 
access$200 ()Ljava/util/logging/Logger;	 x y z { | java/util/logging/Level FINE Ljava/util/logging/Level;
 ~  � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 4 � o 
  � � � 
access$600 �(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;)Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$CopyCutActionPerformer;
 � � � � E Porg/netbeans/modules/openide/explorer/ExplorerActionsImpl$CopyCutActionPerformer 	toEnabled
  � � � 
access$700
  � � � 
access$800 �(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;)Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$DeleteActionPerformer;
 � � � Oorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$DeleteActionPerformer
  � � � 
access$900
  � � � access$1000 �(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;)Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$OwnPaste;
 � � � Borg/netbeans/modules/openide/explorer/ExplorerActionsImpl$OwnPaste
 4 �  � (I)V � !java/beans/PropertyChangeListener � java/lang/Runnable d(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;Lorg/openide/explorer/ExplorerManager;)V Code LineNumberTable LocalVariableTable this NLorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$ActionStateUpdater; m &Lorg/openide/explorer/ExplorerManager; MethodParameters unlisten )(Lorg/openide/explorer/ExplorerManager;)V updateScheduled StackMapTable #(Ljava/beans/PropertyChangeEvent;)V e  Ljava/beans/PropertyChangeEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; flavorsChanged &(Ljava/awt/datatransfer/FlavorEvent;)V ev #Ljava/awt/datatransfer/FlavorEvent; run c !Ljava/awt/datatransfer/Clipboard; 	clipboard t � "java/awt/datatransfer/Transferable � java/lang/Throwable getTransferable &()Ljava/awt/datatransfer/Transferable; update ex  Ljava/lang/InterruptedException; 
access$000 Q(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$ActionStateUpdater;)V x0 
SourceFile ExplorerActionsImpl.java InnerClasses ActionStateUpdater Task CopyCutActionPerformer DeleteActionPerformer OwnPaste      � X �        ( )    R S    i j   	 
       �  �   j     &*+� *� *� *� � **,�  � &,*� &� *�    �       	   % �       & � �     & � �  �   	 	 �     � �  �   A     	+*� &� 0�    �   
     �       	 � �     	 � �  �    �     � >  �   E     *� � 3� � �    �      " �        � �   �    @ ! $ �  �   =     *� �    �   
   ' ( �        � �      � �  �    �   �     �    � �  �   =     *� �    �   
   , - �        � �      � �  �    �   �     �    �   �   �     1� 9� *� � ?� #*� � B*� F*� J*� M*� � B*� F�    �   & 	  1 2 4 5 6  7 $8 ,9 0; �       1 � �   �     �     �    L   �   w     &*� P� !� TL+� *X*+� Z� X� P+*� P� ]�    �      > ? @ A B %E �       � �    & � �   �    %  O   �   �     (� TL+� �+*� � cM*YN�*,� g-ç 
:-���          $      �   "   H I J 	L M N O 'P �        ( � �    $ � �    � j  �   ! � 	 ^�    ^ �   ��   � �  �   /     *� g�    �      S �        � �    �   �   �     +� 9�  *�  k� mW� L� s� w+� }� 
*� � ��     q  �   "   X Z ] [ \  ] #_ *a �       � �    + � �   �    T q     �   �     D*� � �� �*� � �� �*� � �� �*� � �� �*� � �� �*� F*� � ��    �   "   d e f !g ,h 7i ;j Ck �       D � �    o   �   6     *� � ��    �   
   n o �        � �   � �  �   /     *� �    �       �        � �    �    � �   *    �  4  �  �  �  �  �  �  � 