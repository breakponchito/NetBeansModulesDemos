����   4 <  %org/openide/util/actions/SystemAction	      4org/openide/util/actions/NodeAction$DelegateAction$2 this$0 4Lorg/openide/util/actions/NodeAction$DelegateAction;	  
   val$old Z
      java/lang/Object <init> ()V
      2org/openide/util/actions/NodeAction$DelegateAction 
access$300 X(Lorg/openide/util/actions/NodeAction$DelegateAction;)Ljava/beans/PropertyChangeSupport;  enabled
     
access$200 7(Lorg/openide/util/actions/NodeAction$DelegateAction;)Z
   ! " # $  java/beans/PropertyChangeSupport firePropertyChange (Ljava/lang/String;ZZ)V & java/lang/Runnable 8(Lorg/openide/util/actions/NodeAction$DelegateAction;Z)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/util/actions/NodeAction$DelegateAction$2; MethodParameters 	Signature run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile NodeAction.java EnclosingMethod 6 7 resultChanged !(Lorg/openide/util/LookupEvent;)V InnerClasses : #org/openide/util/actions/NodeAction DelegateAction      %              '  (   C     *+� *� 	*� �    )      O *        + ,         -   	 �  .      /   (   F     *� � *� 	*� � � �    )   
   S T *        + ,   0     1    2    3 4     5 8      9 ;        