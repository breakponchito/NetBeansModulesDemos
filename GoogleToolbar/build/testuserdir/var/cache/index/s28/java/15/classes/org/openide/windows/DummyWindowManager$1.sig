����   4 ;	      (org/openide/windows/DummyWindowManager$1 this$0 (Lorg/openide/windows/DummyWindowManager;	   	 
 val$ref Ljava/lang/ref/WeakReference;
      java/awt/event/WindowAdapter <init> ()V
      java/lang/ref/WeakReference get ()Ljava/lang/Object;   org/openide/windows/TopComponent
     close ()Z
     requestActive H(Lorg/openide/windows/DummyWindowManager;Ljava/lang/ref/WeakReference;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/windows/DummyWindowManager$1; MethodParameters windowClosing (Ljava/awt/event/WindowEvent;)V ev Ljava/awt/event/WindowEvent; tc "Lorg/openide/windows/TopComponent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; windowActivated e 
SourceFile DummyWindowManager.java EnclosingMethod 6 &org/openide/windows/DummyWindowManager 8 9 topComponentOpen %(Lorg/openide/windows/TopComponent;)V InnerClasses        	 
              !   C     *+� *,� *� �    "      E #        $ %         &   	 � 	  ' (  !   r     *� � � M,� �,� W�    "      H J K N O #         $ %      ) *    + ,  -    �   &    )   .     /    0 (  !   q     *� � � M,� �,� �    "      S U V Y Z #         $ %      1 *   
 + ,  -    �   &    1   .     /    2    3 4    5 7 :   
        