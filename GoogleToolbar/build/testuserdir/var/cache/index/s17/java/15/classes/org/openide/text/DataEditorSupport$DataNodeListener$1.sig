����   4 h	      5org/openide/text/DataEditorSupport$DataNodeListener$1 this$1 5Lorg/openide/text/DataEditorSupport$DataNodeListener;	   	 
 val$ev  Ljava/beans/PropertyChangeEvent;
      java/lang/Object <init> ()V  org/openide/nodes/Node  displayName
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
       java/lang/String equals (Ljava/lang/Object;)Z	 " # $ % & 3org/openide/text/DataEditorSupport$DataNodeListener this$0 $Lorg/openide/text/DataEditorSupport;
 ( ) * +  "org/openide/text/DataEditorSupport callUpdateTitles - icon
 ( / 0 1 
access$900 F(Lorg/openide/text/DataEditorSupport;)Lorg/openide/loaders/DataObject;
 3 4 5 6 7 org/openide/loaders/DataObject isValid ()Z	 " 9 : ; 	editorRef Ljava/lang/ref/Reference;
 = > ? @ A java/lang/ref/Reference get ()Ljava/lang/Object; C  org/openide/text/CloneableEditor
 3 E F G getNodeDelegate ()Lorg/openide/nodes/Node; I java/beans/BeanInfo
  K L M getIcon (I)Ljava/awt/Image;
 B O P Q setIcon (Ljava/awt/Image;)V S java/lang/Runnable X(Lorg/openide/text/DataEditorSupport$DataNodeListener;Ljava/beans/PropertyChangeEvent;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/text/DataEditorSupport$DataNodeListener$1; MethodParameters 	Signature run editor "Lorg/openide/text/CloneableEditor; StackMapTable 
SourceFile DataEditorSupport.java EnclosingMethod d e propertyChange #(Ljava/beans/PropertyChangeEvent;)V InnerClasses DataNodeListener      R  	 
           T  U   C     *+� *,� *� �    V      � W        X Y         Z   	 � 	 [      \   U   �     `*� � � � *� � !� ',*� � � � :*� � !� .� 2� **� � 8� <� BYL� +*� � !� .� D� J� N�    V      � � � (� J� _� W     G  ] ^    ` X Y   _    � E  `    a b    " c f     " ( g        