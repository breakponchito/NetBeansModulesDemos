����   4 0	      "org/openide/windows/TopComponent$4 this$0 "Lorg/openide/windows/TopComponent;	   	 
 val$highlight Z
      java/lang/Object <init> ()V
      !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
     topComponentAttentionHighlight &(Lorg/openide/windows/TopComponent;Z)V  java/lang/Runnable Code LineNumberTable LocalVariableTable this $Lorg/openide/windows/TopComponent$4; MethodParameters 	Signature run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TopComponent.java EnclosingMethod +  org/openide/windows/TopComponent - . setAttentionHighlight (Z)V InnerClasses        	 
                C     *+� *� *� �          �           !         "   	 � 	 #      $      =     � *� *� � �       
   � �           !   %     &    '    ( )    * , /   
        