����   4 S	      %org/openide/awt/ListPane$DataListener this$0 Lorg/openide/awt/ListPane;
  	 
   java/lang/Object <init> ()V	      org/openide/awt/ListPane updateLayoutStateNeeded Z
      javax/swing/event/ListDataEvent 	getIndex0 ()I
     	getIndex1
      ! java/lang/Math min (II)I
  # $ ! max
  & ' ( getSelectionModel "()Ljavax/swing/ListSelectionModel; * + , - . javax/swing/ListSelectionModel insertIndexInterval (IIZ)V * 0 1 2 removeIndexInterval (II)V 4 "javax/swing/event/ListDataListener 6 java/io/Serializable serialVersionUID J ConstantValue���YQh�� (Lorg/openide/awt/ListPane;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/awt/ListPane$DataListener; MethodParameters intervalAdded $(Ljavax/swing/event/ListDataEvent;)V e !Ljavax/swing/event/ListDataEvent; minIndex I maxIndex sm  Ljavax/swing/ListSelectionModel; StackMapTable intervalRemoved contentsChanged 
SourceFile ListPane.java InnerClasses DataListener      3 5   7 8  9    :         <  =   8     
*+� *� �    >   
   - 	. ?       
 @ A   B      C D  =   �     ;*� � +� +� � =+� +� � ">*� � %:� d� ) �    >      1 3 4  8 ): .; := ?   4    ; @ A     ; E F   ' G H     I H  )  J K  L   
 � : * B    E    M D  =        #*� � *� � %M,� ,+� +� � / �    >      @ C E F "H ?        # @ A     # E F    J K  L    � " * B    E    N D  =   A     	*� � �    >   
   K L ?       	 @ A     	 E F  B    E    O    P Q   
    R 