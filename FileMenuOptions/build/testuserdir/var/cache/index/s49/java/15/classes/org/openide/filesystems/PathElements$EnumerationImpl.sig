����   4 6
      java/lang/Object <init> ()V	  	 
   4org/openide/filesystems/PathElements$EnumerationImpl elements &Lorg/openide/filesystems/PathElements;	     pos I
      $org/openide/filesystems/PathElements contains (I)Z
     get (I)Ljava/lang/String;
     nextElement ()Ljava/lang/String;   java/util/Enumeration )(Lorg/openide/filesystems/PathElements;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/filesystems/PathElements$EnumerationImpl; MethodParameters hasMoreElements ()Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
Exceptions .  java/util/NoSuchElementException ()Ljava/lang/Object; 	Signature =Ljava/lang/Object;Ljava/util/Enumeration<Ljava/lang/String;>; 
SourceFile PathElements.java InnerClasses EnumerationImpl 0                    !  "   O     *� *+� *� �    #       h  i 	 j  k $        % &         '        ( )  "   6     *� *� � �    #       p $        % &   *     +       "   =     *� *Y� Z`� � �    #       v $        % &   ,     - *     +  A  /  "   /     *� �    #       d $        % &   *     +    0    1 2    3 4   
    5 