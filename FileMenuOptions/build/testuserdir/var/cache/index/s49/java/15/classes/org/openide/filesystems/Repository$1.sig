����   4 W	      $org/openide/filesystems/Repository$1 this$0 $Lorg/openide/filesystems/Repository;
  	 
   java/lang/Object <init> ()V
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;  
systemName
      java/lang/String equals (Ljava/lang/Object;)Z
     getOldValue ()Ljava/lang/Object;
    !  getNewValue
 # $ % & ' "org/openide/filesystems/Repository 
access$000 ;(Lorg/openide/filesystems/Repository;)Ljava/util/Hashtable;
 ) * + , - java/util/Hashtable get &(Ljava/lang/Object;)Ljava/lang/Object; /  java/beans/PropertyVetoException 1 java/lang/StringBuilder
 0 	 4 system name already exists: 
 0 6 7 8 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; :  -> 
 0 < =  toString
 . ?  @ 5(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V B !java/beans/VetoableChangeListener '(Lorg/openide/filesystems/Repository;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/Repository$1; MethodParameters vetoableChange #(Ljava/beans/PropertyChangeEvent;)V ov Ljava/lang/String; nv ev  Ljava/beans/PropertyChangeEvent; StackMapTable 
Exceptions 
SourceFile Repository.java EnclosingMethod InnerClasses      A          C  D   >     
*+� *� �    E       F       
 G H     
    I    �  J K  D   �     P+� � � F+� � M+� � N*� � "-� (� (� .Y� 0Y� 23� 5,� 59� 5-� 5� ;+� >��    E          * O F   *   ; L M   3 N M    P G H     P O P  Q    � O R     . I    O    S    T U    #   V   
        