����   4 H
      java/lang/Object <init> ()V  5org/netbeans/spi/project/support/DelegatingLookupImpl
 
     org/openide/util/lookup/Lookups forPath -(Ljava/lang/String;)Lorg/openide/util/Lookup;
     G(Lorg/openide/util/Lookup;Lorg/openide/util/Lookup;Ljava/lang/String;)V  <multiplePaths>  Dorg/netbeans/spi/project/support/LookupProviderSupport$SourcesMerger
     =(Lorg/netbeans/spi/project/support/LookupProviderSupport$1;)V  Korg/netbeans/spi/project/support/LookupProviderSupport$ActionProviderMerger
    Morg/netbeans/spi/project/support/LookupProviderSupport$SharabilityQueryMerger
     6org/netbeans/spi/project/support/LookupProviderSupport Code LineNumberTable LocalVariableTable this 8Lorg/netbeans/spi/project/support/LookupProviderSupport; createCompositeLookup F(Lorg/openide/util/Lookup;Ljava/lang/String;)Lorg/openide/util/Lookup; 
baseLookup Lorg/openide/util/Lookup; 
folderPath Ljava/lang/String; MethodParameters M(Lorg/openide/util/Lookup;Lorg/openide/util/Lookup;)Lorg/openide/util/Lookup; 	providers createSourcesMerger )()Lorg/netbeans/spi/project/LookupMerger; 	Signature M()Lorg/netbeans/spi/project/LookupMerger<Lorg/netbeans/api/project/Sources;>; createActionProviderMerger T()Lorg/netbeans/spi/project/LookupMerger<Lorg/netbeans/spi/project/ActionProvider;>; createSharabilityQueryMerger e()Lorg/netbeans/spi/project/LookupMerger<Lorg/netbeans/spi/queries/SharabilityQueryImplementation2;>; 
SourceFile LookupProviderSupport.java InnerClasses SourcesMerger < 8org/netbeans/spi/project/support/LookupProviderSupport$1 ActionProviderMerger SharabilityQueryMerger @ \org/netbeans/spi/project/support/LookupProviderSupport$MergedSharabilityQueryImplementation2 %MergedSharabilityQueryImplementation2 C Korg/netbeans/spi/project/support/LookupProviderSupport$MergedActionProvider MergedActionProvider F Borg/netbeans/spi/project/support/LookupProviderSupport$SourcesImpl SourcesImpl 1            !   3     *� �    "   
    5  6 #        $ %   	 & '  !   B     � Y*+� 	+� �    "       F #        ( )      * +  ,   	 (   *   	 & -  !   @     � Y*+� �    "       V #        ( )      . )  ,   	 (   .   	 / 0  !   !      	� Y� �    "       a 1    2 	 3 0  !   !      	� Y� �    "       m 1    4 	 5 0  !   !      	� Y� �    "       y 1    6  7    8 9   :    : 
 ;       =    >  ?  A  B  D  E  G 
