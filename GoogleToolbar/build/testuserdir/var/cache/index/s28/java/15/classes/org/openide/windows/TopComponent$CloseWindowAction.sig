����   4 +
      javax/swing/AbstractAction <init> ()V	  	 
   2org/openide/windows/TopComponent$CloseWindowAction am 'Lorg/openide/windows/DelegateActionMap;
      %org/openide/windows/DelegateActionMap getComponent ()Ljavax/swing/JComponent;   org/openide/windows/TopComponent
     close ()Z *(Lorg/openide/windows/DelegateActionMap;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/windows/TopComponent$CloseWindowAction; MethodParameters actionPerformed (Ljava/awt/event/ActionEvent;)V evt Ljava/awt/event/ActionEvent; self "Lorg/openide/windows/TopComponent; StackMapTable 
SourceFile TopComponent.java InnerClasses CloseWindowAction                      F     
*� *+� �          � � 	�        
       
              !     m     *� � � M,� ,� W�          � � � �                 " #   
 $ %  &    �       "    '    ( )   
    * 
