����   4 0
      java/lang/Object <init> ()V
  	 
   java/util/Collections unmodifiableSet  (Ljava/util/Set;)Ljava/util/Set;	      9org/netbeans/spi/project/DependencyProjectProvider$Result projects Ljava/util/Set;	     	recursive Z 	Signature 4Ljava/util/Set<+Lorg/netbeans/api/project/Project;>; (Ljava/util/Set;Z)V Code LineNumberTable LocalVariableTable this ;Lorg/netbeans/spi/project/DependencyProjectProvider$Result; LocalVariableTypeTable MethodParameters 8(Ljava/util/Set<+Lorg/netbeans/api/project/Project;>;Z)V $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; isRecursive ()Z getProjects ()Ljava/util/Set; 6()Ljava/util/Set<+Lorg/netbeans/api/project/Project;>; RuntimeInvisibleAnnotations 
SourceFile DependencyProjectProvider.java InnerClasses . 2org/netbeans/spi/project/DependencyProjectProvider Result 1                            n     *� *+� � *� �           <  =  >  ?                                         	           ! "   	  #      $ %     /     *� �           B              & '     /     *� �           F                 ( )     #    *    + ,   
   - / 