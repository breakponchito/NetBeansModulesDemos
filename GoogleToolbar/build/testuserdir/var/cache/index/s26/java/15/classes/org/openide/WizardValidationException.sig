����   4 *
      java/lang/Exception <init> ()V
    	 (Ljava/lang/String;)V	      %org/openide/WizardValidationException source Ljavax/swing/JComponent;	     localizedMessage Ljava/lang/String;
     
getMessage ()Ljava/lang/String; Code LineNumberTable LocalVariableTable this 'Lorg/openide/WizardValidationException; ?(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/String;)V message MethodParameters 	getSource ()Ljavax/swing/JComponent; getLocalizedMessage StackMapTable % java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile WizardValidationException.java 1                        3     *� �       
    $  %                    d     *,� *+� 
*-� �           .  / 
 0  1    *                                           !     /     *� 
�           9              "      J     *� � 
*� � *� �           B             #    C $ &     '    (    )