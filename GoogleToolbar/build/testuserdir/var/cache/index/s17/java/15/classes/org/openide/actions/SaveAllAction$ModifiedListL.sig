����   4 /	      /org/openide/actions/SaveAllAction$ModifiedListL this$0 #Lorg/openide/actions/SaveAllAction;
  	 
   java/lang/Object <init> ()V	      org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;  1org/openide/actions/SaveAllAction$ModifiedListL$1
     4(Lorg/openide/actions/SaveAllAction$ModifiedListL;)V
     writeAccess (Ljava/lang/Runnable;)V   javax/swing/event/ChangeListener &(Lorg/openide/actions/SaveAllAction;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/actions/SaveAllAction$ModifiedListL; MethodParameters stateChanged "(Ljavax/swing/event/ChangeEvent;)V evt Ljavax/swing/event/ChangeEvent; 
SourceFile SaveAllAction.java InnerClasses - !org/openide/actions/SaveAllAction ModifiedListL 0                   >     
*+� *� �            v !       
 " #     
    $    �  % &     G     � � Y*� � �        
    x  } !        " #      ' (  $    '   )    * +      , .        