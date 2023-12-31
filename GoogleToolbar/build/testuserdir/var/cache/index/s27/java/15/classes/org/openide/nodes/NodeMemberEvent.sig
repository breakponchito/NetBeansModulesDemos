����   4 �
      org/openide/nodes/NodeEvent <init> (Lorg/openide/nodes/Node;)V	  	 
   !org/openide/nodes/NodeMemberEvent add Z	     delta [Lorg/openide/nodes/Node;
      java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;	     prevSnapshot Ljava/util/List;
       org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
 " # $ % & org/openide/nodes/Children snapshot ()Ljava/util/List;	  ( )  currSnapshot	  + , - indices [I
  / 0 1 sort ([I)V	  3 4  $assertionsDisabled 6 java/lang/AssertionError 8  Well, indices cannot be null now
 5 :  ; (Ljava/lang/Object;)V
  = > & getPrevSnapshot @ A B C D java/util/List get (I)Ljava/lang/Object; F java/util/HashSet
 E H  I (Ljava/util/Collection;)V @ K L M size ()I O P Q R S java/util/Set contains (Ljava/lang/Object;)Z U java/lang/StringBuilder
 T W  X (I)V Z ESome of a set of deleted nodes are not present in the original ones.

 T \ ] ^ append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ` USee #15478; you may need to check that your Children.Keys keys are safely comparable. b 
i: 
 T d ] e (I)Ljava/lang/StringBuilder; g 
j:  i 
This: 
 T k ] l -(Ljava/lang/Object;)Ljava/lang/StringBuilder; n 
Current state:
 p 
Delta:
 r java/lang/IllegalStateException
 T t u v toString ()Ljava/lang/String;
 q x  y (Ljava/lang/String;)V
 T {  | ()V
 ~  � � � java/lang/Object getClass ()Ljava/lang/Class;
 � � � � v java/lang/Class getName � [node=
  � � � 	getSource ()Ljava/lang/Object; � , add=
  � � � 
isAddEvent ()Z
 T � ] � (Z)Ljava/lang/StringBuilder;
  � � � getDeltaIndices ()[I � 
   �  at  �  =  � 
] � 
curr. snapshot:  @  � 
 � 
prev. snapshot:  @ 
 � � � � desiredAssertionStatus serialVersionUID J ConstantValue��Bb쭏r 	Signature *Ljava/util/List<Lorg/openide/nodes/Node;>; sourceEntry "Lorg/openide/nodes/Children$Entry; N(Lorg/openide/nodes/Node;Z[Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/nodes/NodeMemberEvent; n Lorg/openide/nodes/Node; from StackMapTable  MethodParameters getSnapshot ,()Ljava/util/List<Lorg/openide/nodes/Node;>; >(Lorg/openide/nodes/Node;Z[ILjava/util/List;Ljava/util/List;)V current previous LocalVariableTypeTable r(Lorg/openide/nodes/Node;Z[ILjava/util/List<Lorg/openide/nodes/Node;>;Ljava/util/List<Lorg/openide/nodes/Node;>;)V getDelta ()[Lorg/openide/nodes/Node; i I l arr m Ljava/lang/StringBuilder; nodes list set Ljava/util/Set; j )Ljava/util/Set<Lorg/openide/nodes/Node;>; sb 
deltaNodes deltaIndices - #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile NodeMemberEvent.java InnerClasses �  org/openide/nodes/Children$Entry Entry !       � �  �    �            , -    )   �    �     �    �   � �   4    	    �  �   �     -*+� *� *-� *� � � � *+� � !� '�    �       :  ; 
 <  = ! > , ? �   4    - � �     - � �    -      -      - �   �   3 �     � �  �      � �   @ �    �         �    � &  �   /     *� '�    �       G �        � �   �    �  � �  �   /     *� �    �       O �        � �      �  �   �     #*+� *� *-� **� *� .*� '*� �    �       X  Y 
 Z  [  \  ] " ^ �   >    # � �     # � �    #      # , -    # �     # �   �       # � �    # � �  �    �      ,   �   �   �    �   > &  �   J     *� � 
*� '� *� �    �       a �        � �   �    C @ �    �  � �  �   �     V*� � M� 2� *� *� � 5Y7� 9�*� <L*� *�� M>,�� ,+*� *.� ? � S����*,� *� �    �   & 	   h  i  j # l , m 4 n F m L p Q r �   *  .  � �  # . �   , % �     V � �   �     # . � �  �    �  @ �� �  ! � �  �  �     �*� *� *� *�*� <L*� � M� EY,� GN**� ��
� *66+� J � 0*� *�� &-+� ? � N � *� *�O����*� �� p� TY� V:Y� [W_� [Wa� [� cWf� [� cWh� [*� jWm� [W+� jWo� [W,� jW� qY� s� w�*� *�    �   f    y  z  }    � " � - � 0 � 3 � H � Y � e � k � u � � � � � � � � � � � � � � � � � � � � � � � �   H  � a � �    � � �    � �    � �   " � � �  0 � � �  3 � � �  �       � � �   � � �  " � � �  �    � &   @ @ O  1� v  u v  �  �    � TY� zL+*� }� �� [W+�� [W+*� �� jW+�� [W+*� �� �W*� M*� �N6-�� ;+�� [W+� cW+�� [W+-.� cW,� +�� [W+,2� jW����+�� [W+� TY� z�� [*� '� � � �� [� s� [W+� TY� z�� [*� '� j� s� [W+� TY� z�� [*� <� � � �� [� s� [W+� TY� z�� [*� <� j� s� [W+� s�    �   ^    �  �  �  � $ � + � 4 � 9 � > � H � O � V � ] � f � j � q � z � � � � � � � � � � � � �   4  A ? � �    � �     � �  9 � �   > � � -  �    � A   T � �  8�  �     �    � |  �   4      � �� � � 2�    �        �    @  �    � �   
  � " �