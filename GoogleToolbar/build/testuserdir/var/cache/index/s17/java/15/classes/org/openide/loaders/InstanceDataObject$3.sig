����   4 *	      (org/openide/loaders/InstanceDataObject$3 this$0 (Lorg/openide/loaders/InstanceDataObject;
  	 
   java/lang/Object <init> ()V  org/openide/loaders/DataObject  cookie
      &org/openide/loaders/InstanceDataObject firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V  org/openide/util/LookupListener +(Lorg/openide/loaders/InstanceDataObject;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/loaders/InstanceDataObject$3; MethodParameters resultChanged !(Lorg/openide/util/LookupEvent;)V lookupEvent Lorg/openide/util/LookupEvent; 
SourceFile InstanceDataObject.java EnclosingMethod (  initCookieResult InnerClasses                     >     
*+� *� �          �        
       
        �    !     D     *� � �       
   � �                " #      "    $    % &     ' )   
        