����   4 Y	      3org/openide/text/EditorSupport$Del$DataNodeListener editor "Lorg/openide/text/CloneableEditor;	   	 
 this$1 $Lorg/openide/text/EditorSupport$Del;
      org/openide/nodes/NodeAdapter <init> ()V  org/openide/nodes/Node  displayName
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
       java/lang/String equals (Ljava/lang/Object;)Z
 " # $ %  "org/openide/text/EditorSupport$Del updateTitles ' icon
 " ) * + getDataObject "()Lorg/openide/loaders/DataObject;
 - . / 0 1 org/openide/loaders/DataObject isValid ()Z	 3 4 5 6 7 org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; 9 5org/openide/text/EditorSupport$Del$DataNodeListener$1
 8 ;  < X(Lorg/openide/text/EditorSupport$Del$DataNodeListener;Lorg/openide/loaders/DataObject;)V
 3 > ? @ writeAccess (Ljava/lang/Runnable;)V I(Lorg/openide/text/EditorSupport$Del;Lorg/openide/text/CloneableEditor;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/text/EditorSupport$Del$DataNodeListener; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V obj  Lorg/openide/loaders/DataObject; ev  Ljava/beans/PropertyChangeEvent; StackMapTable 
access$100 Y(Lorg/openide/text/EditorSupport$Del$DataNodeListener;)Lorg/openide/text/CloneableEditor; x0 
SourceFile EditorSupport.java InnerClasses V org/openide/text/EditorSupport Del DataNodeListener 0           	 
       A  B   K     *+� *� *,� �    C      � 	�   D        E F         G   	 	     H I  B   �     >+� � � 
*� � !&+� � � !*� � (M,� ,� � 2� 8Y*,� :� =�    C          ' .	 = D      '  J K    > E F     > L M  N    ) G    L   O P  B   /     *� �    C      � D        Q F    R    S T     " U W   " X  8      