����   4 &
      &org/openide/util/actions/ActionInvoker <init> ()V
  	 
   !org/openide/actions/ActionManager 
getDefault %()Lorg/openide/actions/ActionManager;
     invokeAction 3(Ljavax/swing/Action;Ljava/awt/event/ActionEvent;)V  6org/netbeans/modules/openide/actions/ActionsBridgeImpl Code LineNumberTable LocalVariableTable this 8Lorg/netbeans/modules/openide/actions/ActionsBridgeImpl; action Ljavax/swing/Action; ev Ljava/awt/event/ActionEvent; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation 
SourceFile ActionsBridgeImpl.java )Lorg/openide/util/lookup/ServiceProvider; service (Lorg/openide/util/actions/ActionInvoker; !               /     *� �                               K     	� +,� �       
    #  $         	       	      	       	              [ s    !    "      #  $c %