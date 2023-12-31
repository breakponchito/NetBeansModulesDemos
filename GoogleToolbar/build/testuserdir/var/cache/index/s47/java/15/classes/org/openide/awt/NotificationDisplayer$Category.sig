����   4 s
      java/lang/Object <init> ()V	  	 
   .org/openide/awt/NotificationDisplayer$Category name Ljava/lang/String;	     displayName	     description	     index I
      +org/openide/awt/NotificationCategoryFactory getInstance /()Lorg/openide/awt/NotificationCategoryFactory;
      getCategories ()Ljava/util/List; " java/util/ArrayList
 ! 	  % & ' ERROR 0Lorg/openide/awt/NotificationDisplayer$Category; ) * + , - java/util/List add (Ljava/lang/Object;)Z	  / 0 ' WARNING	  2 3 ' INFO
  5 6 7 	compareTo 3(Lorg/openide/awt/NotificationDisplayer$Category;)I 9 default_category_info ; %org/openide/awt/NotificationDisplayer = INFO_CATEGORY
 ? @ A B C org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; E INFO_CATEGORY_DESCRIPTION
  G  H 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V J default_category_warning L WARNING_CATEGORY N WARNING_CATEGORY_DESCRIPTION P default_category_error R ERROR_CATEGORY T ERROR_CATEGORY_DESCRIPTION V java/lang/Comparable Code LineNumberTable LocalVariableTable this MethodParameters getName ()Ljava/lang/String; getDisplayName setIndex (I)V getDescription other #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	Signature D()Ljava/util/List<Lorg/openide/awt/NotificationDisplayer$Category;>; getDefaultCategories defaultCategories Ljava/util/List; LocalVariableTypeTable BLjava/util/List<Lorg/openide/awt/NotificationDisplayer$Category;>; (Ljava/lang/Object;)I <clinit> ZLjava/lang/Object;Ljava/lang/Comparable<Lorg/openide/awt/NotificationDisplayer$Category;>; 
SourceFile NotificationDisplayer.java InnerClasses Category 1    U   3 '    0 '    & '                       
    H  W   l     *� *+� *,� *-� �    X       o  p 	 q  r  s Y   *     Z '                     [              \ ]  W   /     *� �    X       { Y        Z '    ^ ]  W   /     *� �    X       � Y        Z '     _ `  W   >     *� �    X   
    �  � Y        Z '         [        a ]  W   /     *� �    X       � Y        Z '    6 7  W   >     
*� +� d�    X       � Y       
 Z '     
 b '  [    b   c     d   	     W         � � �    X       � e    f  g    W   t     (� !Y� #K*� $� ( W*� .� ( W*� 1� ( W*�    X       �  �  �  � & � Y        h i   j        h k   e    fA 6 l  W   3     	*+� � 4�    X       a Y       	 Z '   [    b  c     d    m   W         O� Y8:<� >:D� >� F� 1� YI:K� >:M� >� F� .� YO:Q� >:S� >� F� $�    X       c  d  e + f 4 g E h N g  e    n o    p q   
   : r 