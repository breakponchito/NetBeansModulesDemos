����   4 0
      'org/openide/loaders/DataShadow$DSLookup compute \(Lorg/openide/loaders/DataShadow;Lorg/openide/loaders/DataObject;)[Lorg/openide/util/Lookup;
  	 
   #org/openide/util/lookup/ProxyLookup <init> ([Lorg/openide/util/Lookup;)V
     
setLookups  org/openide/util/Lookup
      org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;
      org/openide/loaders/DataObject 	getLookup ()Lorg/openide/util/Lookup; C(Lorg/openide/loaders/DataShadow;Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/loaders/DataShadow$DSLookup; ds  Lorg/openide/loaders/DataShadow; original  Lorg/openide/loaders/DataObject; MethodParameters refresh 
SourceFile DataShadow.java InnerClasses . org/openide/loaders/DataShadow DSLookup                 L     
*+,� � �        
   � 	� !        
 " #     
 $ %    
 & '  (   	 $   &    )      L     
*+,� � �        
   � 	� !        
 " #     
 $ %    
 & '  (   	 $   &   
       G     � Y*� SY+� S�           � !        $ %      & '  (   	 $   &    *    + ,   
   - / 
