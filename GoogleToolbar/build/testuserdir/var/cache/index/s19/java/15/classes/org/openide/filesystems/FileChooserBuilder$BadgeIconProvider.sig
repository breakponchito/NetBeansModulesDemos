����   4 ;
      java/lang/Object <init> ()V	  	 
   <org/openide/filesystems/FileChooserBuilder$BadgeIconProvider badger :Lorg/openide/filesystems/FileChooserBuilder$BadgeProvider;      8org/openide/filesystems/FileChooserBuilder$BadgeProvider getBadge "(Ljava/io/File;)Ljavax/swing/Icon;  5org/openide/filesystems/FileChooserBuilder$MergedIcon     
getXOffset ()I     
getYOffset
     )(Ljavax/swing/Icon;Ljavax/swing/Icon;II)V   7org/openide/filesystems/FileChooserBuilder$IconProvider =(Lorg/openide/filesystems/FileChooserBuilder$BadgeProvider;)V Code LineNumberTable LocalVariableTable this >Lorg/openide/filesystems/FileChooserBuilder$BadgeIconProvider; MethodParameters getIcon 4(Ljava/io/File;Ljavax/swing/Icon;)Ljavax/swing/Icon; file Ljava/io/File; orig Ljavax/swing/Icon; badge StackMapTable 1 javax/swing/Icon 
SourceFile FileChooserBuilder.java InnerClasses 6 *org/openide/filesystems/FileChooserBuilder BadgeIconProvider BadgeProvider 
MergedIcon IconProvider 0              !  "   F     
*� *+� �    #      R S 	T $       
 % &     
    '        ( )  "   �     1*� +�  N-� #,� � Y,-*� �  *� �  � �,�    #      W X Y &Z .Y /\ $   *    1 % &     1 * +    1 , -   & . -  /    � / 0 '   	 *   ,    2    3 4   "   5 7   5 8	  5 9 
  5 :