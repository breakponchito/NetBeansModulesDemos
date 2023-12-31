����   4 {
      java/lang/Object <init> ()V	  	 
   1org/openide/loaders/TemplateWizardIteratorWrapper iterImpl ,Lorg/openide/loaders/TemplateWizardIterImpl;
      *org/openide/loaders/TemplateWizardIterImpl first
     setIterator 1(Lorg/openide/loaders/TemplateWizard$Iterator;Z)V
     getIterator /()Lorg/openide/loaders/TemplateWizard$Iterator;
     current &()Lorg/openide/WizardDescriptor$Panel;
     ! name ()Ljava/lang/String;
  # $ % hasNext ()Z
  ' ( % hasPrevious
  * +  	nextPanel
  - .  previousPanel
  0 1 2 stateChanged "(Ljavax/swing/event/ChangeEvent;)V
  4 5 6 addChangeListener %(Ljavax/swing/event/ChangeListener;)V
  8 9 6 removeChangeListener
  ; < = 
initialize !(Lorg/openide/WizardDescriptor;)V
  ? @  uninitialize
  B C D instantiate ()Ljava/util/Set; F >org/openide/WizardDescriptor$AsynchronousInstantiatingIterator H  javax/swing/event/ChangeListener /(Lorg/openide/loaders/TemplateWizardIterImpl;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/loaders/TemplateWizardIteratorWrapper; MethodParameters getOriginalIterImpl .()Lorg/openide/loaders/TemplateWizardIterImpl; it -Lorg/openide/loaders/TemplateWizard$Iterator; notify Z 	Signature F()Lorg/openide/WizardDescriptor$Panel<Lorg/openide/WizardDescriptor;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; p1 Ljavax/swing/event/ChangeEvent; listener "Ljavax/swing/event/ChangeListener; wiz Lorg/openide/WizardDescriptor; 
Exceptions b java/io/IOException 3()Ljava/util/Set<Lorg/openide/loaders/DataObject;>; �Ljava/lang/Object;Lorg/openide/WizardDescriptor$AsynchronousInstantiatingIterator<Lorg/openide/WizardDescriptor;>;Ljavax/swing/event/ChangeListener; 
SourceFile "TemplateWizardIteratorWrapper.java InnerClasses i +org/openide/loaders/TemplateWizard$Iterator k "org/openide/loaders/TemplateWizard Iterator n "org/openide/WizardDescriptor$Panel p org/openide/WizardDescriptor Panel !AsynchronousInstantiatingIterator t Oorg/openide/loaders/TemplateWizardIteratorWrapper$ProgressInstantiatingIterator ProgressInstantiatingIterator w Qorg/openide/loaders/TemplateWizardIteratorWrapper$BackgroundInstantiatingIterator BackgroundInstantiatingIterator z Sorg/openide/loaders/TemplateWizardIteratorWrapper$AsynchronousInstantiatingIterator      E G           I  J   F     
*� *+� �    K       %  & 	 ' L       
 M N     
    O        P Q  J   /     *� �    K       * L        M N       J   6     *� � �    K   
    0  1 L        M N       J   L     
*� +� �    K   
    6 	 7 L        
 M N     
 R S    
 T U  O   	 R   T       J   2     *� � �    K       < L        M N       J   2     *� � �    K       C L        M N   V    W X     Y      !  J   2     *� � �    K       K L        M N   X     Y    $ %  J   2     *� � "�    K       R L        M N   X     Y    ( %  J   2     *� � &�    K       Y L        M N   X     Y    +   J   6     *� � )�    K   
    a  b L        M N   X     Y    .   J   6     *� � ,�    K   
    i  j L        M N   X     Y    1 2  J   A     	*� +� /�    K   
    n  o L       	 M N     	 Z [  O    Z  X     Y    5 6  J   A     	*� +� 3�    K   
    u  v L       	 M N     	 \ ]  O    \   X     Y    9 6  J   A     	*� +� 7�    K   
    {  | L       	 M N     	 \ ]  O    \   X     Y    < =  J   A     	*� +� :�    K   
      � L       	 M N     	 ^ _  O    ^   X     Y    @ =  J   @     *� � >�    K   
    �  � L        M N      ^ _  O    ^   X     Y    C D  J   2     *� � A�    K       � L        M N   `     a V    c X     Y    V    d e    f g   2  h j l	 m o q	 E o r	 s  u  v  x  y  r 