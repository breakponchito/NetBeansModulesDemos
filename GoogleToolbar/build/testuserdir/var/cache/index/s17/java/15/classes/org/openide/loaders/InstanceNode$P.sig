����   4 �
      org/openide/nodes/Node$Property getValueType ()Ljava/lang/Class;
   	 
 <init> (Ljava/lang/Class;)V	      "org/openide/loaders/InstanceNode$P del !Lorg/openide/nodes/Node$Property;	     t (Lorg/openide/loaders/InstanceDataObject;
     setName (Ljava/lang/String;)V
     restoreDefaultValue ()V
      setValue '(Ljava/lang/String;Ljava/lang/Object;)V
  " # $ supportsDefaultValue ()Z
  & ' $ canRead
  ) * + getPropertyEditor ()Ljava/beans/PropertyEditor;
  - . $ isHidden
  0 1 2 getValue ()Ljava/lang/Object;
  4 5 6 	setExpert (Z)V
  8  9 (Ljava/lang/Object;)V
 ; < = >  &org/openide/loaders/InstanceDataObject scheduleSave
  @ A  setShortDescription
  C D $ isExpert
  F G $ canWrite
  I J K getDisplayName ()Ljava/lang/String;
  M N O attributeNames ()Ljava/util/Enumeration;
  Q R K getShortDescription
  T U K getName
  W X 6 	setHidden
  Z [  setDisplayName
  ] ^ $ isPreferred
  ` 1 a &(Ljava/lang/String;)Ljava/lang/Object;
  c d 6 setPreferred 	Signature &Lorg/openide/nodes/Node$Property<TT;>; L(Lorg/openide/nodes/Node$Property;Lorg/openide/loaders/InstanceDataObject;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/InstanceNode$P; LocalVariableTypeTable )Lorg/openide/loaders/InstanceNode$P<TT;>; MethodParameters Q(Lorg/openide/nodes/Node$Property<TT;>;Lorg/openide/loaders/InstanceDataObject;)V str Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
Exceptions w  java/lang/IllegalAccessException y +java/lang/reflect/InvocationTargetException obj Ljava/lang/Object; ()TT; param Z val TT; � "java/lang/IllegalArgumentException (TT;)V ()Ljava/lang/Class<TT;>; -()Ljava/util/Enumeration<Ljava/lang/String;>; <<T:Ljava/lang/Object;>Lorg/openide/nodes/Node$Property<TT;>; 
SourceFile InstanceNode.java InnerClasses � org/openide/nodes/Node Property �  org/openide/loaders/InstanceNode P 0          e    f        	 g  h   y     *+� � *+� *,� �    i      � � � � j         k l               m        k n       f  o   	       e    p     h   S     	*� +� �    i   
   � � j       	 k l     	 q r  m       	 k n   o    q   s     t       h   H     *� � �    i   
   � � j        k l   m        k n   u     v x s     t        h   ^     
*� +,� �    i   
   � 	� j        
 k l     
 q r    
 z {  m       
 k n   o   	 q   z   s     t    # $  h   D     *� � !�    i      � j        k l   m        k n   s     t    ' $  h   D     *� � %�    i      � j        k l   m        k n    * +  h   D     *� � (�    i      � j        k l   m        k n   s     t    . $  h   D     *� � ,�    i      � j        k l   m        k n   s     t    1 2  h   D     *� � /�    i      � j        k l   m        k n   u     v x e    |  5 6  h   S     	*� � 3�    i   
   � � j       	 k l     	 } ~  m       	 k n   o    }   s     t     9  h   h     *� +� 7*� � :�    i      � � � j        k l       {  m        k n       �  u     v � x o       e    �  A   h   S     	*� +� ?�    i   
   � � j       	 k l     	 q r  m       	 k n   o    q   s     t    D $  h   D     *� � B�    i      � j        k l   m        k n   s     t    G $  h   D     *� � E�    i      � j        k l   m        k n       h   D     *� � �    i      � j        k l   m        k n   e    � s     t    J K  h   D     *� � H�    i      � j        k l   m        k n   s     t    N O  h   D     *� � L�    i      � j        k l   m        k n   e    � s     t    R K  h   D     *� � P�    i      � j        k l   m        k n   s     t    U K  h   D     *� � S�    i        j        k l   m        k n   s     t    X 6  h   S     	*� � V�    i   
     j       	 k l     	 } ~  m       	 k n   o    }   s     t    [   h   S     	*� +� Y�    i   
   
  j       	 k l     	 q r  m       	 k n   o    q   s     t    ^ $  h   D     *� � \�    i       j        k l   m        k n   s     t    1 a  h   O     	*� +� _�    i       j       	 k l     	 q r  m       	 k n   o    q   s     t    d 6  h   S     	*� � b�    i   
     j       	 k l     	 } ~  m       	 k n   o    }   s     t    e    � �    � �      � �	  � � 