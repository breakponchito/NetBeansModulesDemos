����   4 F
      java/lang/Object <init> ()V	  	 
   /org/openide/util/ImageUtilities$ToolTipImageKey image Ljava/awt/Image;	     str Ljava/lang/String;
      java/lang/String equals (Ljava/lang/Object;)Z
      java/lang/System identityHashCode (Ljava/lang/Object;)I
      hashCode ()I " java/lang/StringBuilder
 !  % ImageStringKey for 
 ! ' ( ) append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ! + ( , -(Ljava/lang/Object;)Ljava/lang/StringBuilder; .  + 
 ! 0 1 2 toString ()Ljava/lang/String; %(Ljava/awt/Image;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/util/ImageUtilities$ToolTipImageKey; MethodParameters other Ljava/lang/Object; k StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ImageUtilities.java InnerClasses D org/openide/util/ImageUtilities ToolTipImageKey                        3  4   Y     *� *+� *,� �    5      � � 	� � 6         7 8               9   	           4   �     -+� � �+� M*� ,� � � *� ,� � � �    5      � � 	� � 6        - 7 8     - : ;    < 8  =    	� ! @ 9    :   >     ?        4   :     *� � *� � ��    5      � 6        7 8   >     ?    1 2  4   M     #� !Y� #$� &*� � *-� &*� � &� /�    5      � 6       # 7 8   >     ?    @    A B   
   C E 
