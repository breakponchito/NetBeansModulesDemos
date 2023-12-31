����   4 K
      java/lang/Object <init> ()V	  	 
   :org/openide/explorer/view/TreeTableView$TreeColumnProperty p !Lorg/openide/nodes/Node$Property;  (org/openide/explorer/view/NodeTableModel  ComparableColumnTTV
      org/openide/nodes/Node$Property getValue &(Ljava/lang/String;)Ljava/lang/Object;  java/lang/Boolean
     booleanValue ()Z  SortingColumnTTV	    ! " TRUE Ljava/lang/Boolean;	  $ % " FALSE
  ' ( ) setValue '(Ljava/lang/String;Ljava/lang/Object;)V + DescendingOrderTTV Code LineNumberTable LocalVariableTable this <Lorg/openide/explorer/view/TreeTableView$TreeColumnProperty; setProperty $(Lorg/openide/nodes/Node$Property;)V MethodParameters isComparable o Ljava/lang/Object; StackMapTable isSortingColumn setSortingColumn (Z)V sorting Z > java/lang/String isSortOrderDescending setSortOrderDescending 
descending 
SourceFile TreeTableView.java InnerClasses F 'org/openide/explorer/view/TreeTableView TreeColumnProperty I org/openide/nodes/Node Property                   ,   <     
*� *� �    -      
  	 .       
 / 0     1 2  ,   >     *+� �    -   
     .        / 0         3         4   ,   {     $*� � �*� � L+� � +� � ��    -        	   " .       $ / 0     5 6  7   	 	�     8   ,   {     $*� � �*� � L+� � +� � ��    -        ! 	$ & ' "* .       $ / 0     5 6  7   	 	�     9 :  ,   �     *� � �*� � 	� � � #� &�    -      . / 2 3 .        / 0      ; <  7   ( �      =�      =  3    ;     ?   ,   {     $*� � �*� *� L+� � +� � ��    -      6 7 	: < = "@ .       $ / 0     5 6  7   	 	�     @ :  ,   �     *� � �*� *� 	� � � #� &�    -      D E H I .        / 0      A <  7   ( �      =�      =  3    A    B    C D      E G 
  H J	