����   4 �	      +org/openide/actions/WorkspaceSwitchAction$2 this$0 +Lorg/openide/actions/WorkspaceSwitchAction;	   	 
 val$currentDeskRef  [Lorg/openide/windows/Workspace;	     val$workspace2Menu Ljava/util/Hashtable;	     val$menu2Workspace	     val$workspace2Listener	     val$menu Ljavax/swing/JMenu;
      java/lang/Object <init> ()V
   ! " # $ java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String; & !org/openide/windows/WindowManager ( currentWorkspace
 * + , - . java/lang/String equals (Ljava/lang/Object;)Z
   0 1 2 getNewValue ()Ljava/lang/Object; 4 org/openide/windows/Workspace
 6 7 8 9 : java/util/Hashtable get &(Ljava/lang/Object;)Ljava/lang/Object; <  javax/swing/JRadioButtonMenuItem
 ; > ? @ setSelected (Z)V B 
workspaces 

   E F 2 getOldValue
 H I J K L java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; N O P Q R java/util/List indexOf (Ljava/lang/Object;)I
 T U V W X )org/openide/actions/WorkspaceSwitchAction detachWorkspace t(Lorg/openide/windows/Workspace;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljavax/swing/JMenu;)V
 T Z [ \ attachWorkspace �(Lorg/openide/windows/Workspace;[Lorg/openide/windows/Workspace;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljavax/swing/JMenu;)V ^ !java/beans/PropertyChangeListener �(Lorg/openide/actions/WorkspaceSwitchAction;[Lorg/openide/windows/Workspace;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljavax/swing/JMenu;)V Code LineNumberTable LocalVariableTable this -Lorg/openide/actions/WorkspaceSwitchAction$2; MethodParameters 	Signature propertyChange #(Ljava/beans/PropertyChangeEvent;)V newDesk Lorg/openide/windows/Workspace; menu2 "Ljavax/swing/JRadioButtonMenuItem; i I newWorkspaces oldWorkspaces newList Ljava/util/List; oldList che  Ljava/beans/PropertyChangeEvent; LocalVariableTypeTable 1Ljava/util/List<Lorg/openide/windows/Workspace;>; StackMapTable 
SourceFile WorkspaceSwitchAction.java EnclosingMethod } ~ getWorkspacePoolListener �(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;[Lorg/openide/windows/Workspace;Ljavax/swing/JMenu;)Ljava/beans/PropertyChangeListener; InnerClasses      ]  	 
                           _  `   Z     &*+� *,� *-� *� *� *� *� �    a       � b       & c d     &    e    � 	     f      g h  `  ?     �+� '� )� O+� /� 3M*� 2,� �*� *� 2� 5� ;N-� -� =*� ,S*� ,� 5� ;N-� -� =� �+� A� )� �+� /� CM+� D� CN,� G:-� G:6-�� 2-2� M � *� -2*� *� *� *� � S����6,�� 6,2� M � "*� ,2*� *� *� *� *� � Y���ɱ    a   f    �  �  �  �  � 0 � 4 � 9 � @ � L � P � U � d � l � t � z � � � � � � � � � � � � � � � � � � � b   f 
  A i j  0 % k l  � 6 m n  � : m n  l � o 
  t � p 
  z | q r  � v s r    � c d     � t u  v     z | q w  � v s w  x   B 
�  3�  ;� � *     C C N N  /� � 3�        e    t    y    z {    T |    
        