����   4 8
      Aorg/netbeans/api/progress/aggregate/BasicAggregateProgressFactory <init> ()V
   	 
 createHandle �(Ljava/lang/String;[Lorg/netbeans/api/progress/aggregate/ProgressContributor;Lorg/openide/util/Cancellable;Ljavax/swing/Action;)Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle;
    
 createSystemHandle
      <org/netbeans/api/progress/aggregate/AggregateProgressFactory getProgressHandle i(Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle;)Lorg/netbeans/api/progress/ProgressHandle;
      /org/netbeans/api/progress/ProgressHandleFactory createProgressComponent D(Lorg/netbeans/api/progress/ProgressHandle;)Ljavax/swing/JComponent;
     createMainLabelComponent @(Lorg/netbeans/api/progress/ProgressHandle;)Ljavax/swing/JLabel;
      createDetailLabelComponent Code LineNumberTable LocalVariableTable this >Lorg/netbeans/api/progress/aggregate/AggregateProgressFactory; displayName Ljava/lang/String; contributors :[Lorg/netbeans/api/progress/aggregate/ProgressContributor; allowToCancel Lorg/openide/util/Cancellable; 
linkOutput Ljavax/swing/Action; MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; W(Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle;)Ljavax/swing/JComponent; handle =Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle; S(Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle;)Ljavax/swing/JLabel; 
SourceFile AggregateProgressFactory.java 1            !   3     *� �    "   
    &  ' #        $ %   	 	 
  !   P     *+,-� �    "       8 #   *     & '      ( )     * +     , -  .    &   (   *   ,   /     0     1   	  
  !   P     *+,-� �    "       J #   *     & '      ( )     * +     , -  .    &   (   *   ,   /     0     1   	  2  !   2     *� � �    "       T #        3 4   .    3   	  5  !   2     *� � �    "       ^ #        3 4   .    3   	   5  !   2     *� � �    "       h #        3 4   .    3    6    7