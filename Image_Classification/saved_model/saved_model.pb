��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.19.02v2.19.0-rc0-6-ge36baa302928��

�
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_1/bias/*
dtype0*
shape:*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_1/kernel/*
dtype0*
shape:	�**
shared_namesequential/dense_1/kernel
�
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_class
loc:@Variable_1*
_output_shapes
:	�*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
�
sequential/dense/biasVarHandleOp*
_output_shapes
: *&

debug_namesequential/dense/bias/*
dtype0*
shape:�*&
shared_namesequential/dense/bias
|
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes	
:�*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential/dense/bias*
_class
loc:@Variable_2*
_output_shapes	
:�*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:�*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
f
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes	
:�*
dtype0
�
sequential/dense/kernelVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense/kernel/*
dtype0*
shape:
��*(
shared_namesequential/dense/kernel
�
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel* 
_output_shapes
:
��*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential/dense/kernel*
_class
loc:@Variable_3* 
_output_shapes
:
��*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:
��*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
k
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3* 
_output_shapes
:
��*
dtype0
�
sequential/conv2d_5/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_5/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_5/bias
�
,sequential/conv2d_5/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_5/bias*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_5/bias*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_5/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_5/kernel/*
dtype0*
shape:��*+
shared_namesequential/conv2d_5/kernel
�
.sequential/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_5/kernel*(
_output_shapes
:��*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_5/kernel*
_class
loc:@Variable_5*(
_output_shapes
:��*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:��*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
s
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*(
_output_shapes
:��*
dtype0
�
sequential/conv2d_4/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_4/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_4/bias
�
,sequential/conv2d_4/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_4/bias*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_4/bias*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_4/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_4/kernel/*
dtype0*
shape:��*+
shared_namesequential/conv2d_4/kernel
�
.sequential/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_4/kernel*(
_output_shapes
:��*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_4/kernel*
_class
loc:@Variable_7*(
_output_shapes
:��*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:��*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
s
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*(
_output_shapes
:��*
dtype0
�
sequential/conv2d_3/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_3/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_3/bias
�
,sequential/conv2d_3/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_3/bias*
_output_shapes	
:�*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_3/bias*
_class
loc:@Variable_8*
_output_shapes	
:�*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:�*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
f
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_3/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_3/kernel/*
dtype0*
shape:��*+
shared_namesequential/conv2d_3/kernel
�
.sequential/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_3/kernel*(
_output_shapes
:��*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_3/kernel*
_class
loc:@Variable_9*(
_output_shapes
:��*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:��*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
s
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*(
_output_shapes
:��*
dtype0
�
sequential/conv2d_2/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_2/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_2/bias
�
,sequential/conv2d_2/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_class
loc:@Variable_10*
_output_shapes	
:�*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:�*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
h
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_2/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_2/kernel/*
dtype0*
shape:��*+
shared_namesequential/conv2d_2/kernel
�
.sequential/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*(
_output_shapes
:��*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*
_class
loc:@Variable_11*(
_output_shapes
:��*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:��*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
u
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*(
_output_shapes
:��*
dtype0
�
sequential/conv2d_1/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_1/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_1/bias
�
,sequential/conv2d_1/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_output_shapes	
:�*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_class
loc:@Variable_12*
_output_shapes	
:�*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:�*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
h
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_1/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_1/kernel/*
dtype0*
shape:�*+
shared_namesequential/conv2d_1/kernel
�
.sequential/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*'
_output_shapes
:�*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*
_class
loc:@Variable_13*'
_output_shapes
:�*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:�*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
t
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*'
_output_shapes
:�*
dtype0
�
sequential/conv2d/biasVarHandleOp*
_output_shapes
: *'

debug_namesequential/conv2d/bias/*
dtype0*
shape:*'
shared_namesequential/conv2d/bias
}
*sequential/conv2d/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_output_shapes
:*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_class
loc:@Variable_14*
_output_shapes
:*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:*
dtype0
�
sequential/conv2d/kernelVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d/kernel/*
dtype0*
shape:*)
shared_namesequential/conv2d/kernel
�
,sequential/conv2d/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d/kernel*&
_output_shapes
:*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/kernel*
_class
loc:@Variable_15*&
_output_shapes
:*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape:*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
s
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*&
_output_shapes
:*
dtype0
�
%adam/sequential_dense_1_bias_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_1_bias_velocity/*
dtype0*
shape:*6
shared_name'%adam/sequential_dense_1_bias_velocity
�
9adam/sequential_dense_1_bias_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_velocity*
_class
loc:@Variable_16*
_output_shapes
:*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape:*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
:*
dtype0
�
%adam/sequential_dense_1_bias_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_1_bias_momentum/*
dtype0*
shape:*6
shared_name'%adam/sequential_dense_1_bias_momentum
�
9adam/sequential_dense_1_bias_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_1_bias_momentum*
_class
loc:@Variable_17*
_output_shapes
:*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape:*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
g
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
:*
dtype0
�
'adam/sequential_dense_1_kernel_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_1_kernel_velocity/*
dtype0*
shape:	�*8
shared_name)'adam/sequential_dense_1_kernel_velocity
�
;adam/sequential_dense_1_kernel_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_velocity*
_output_shapes
:	�*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_velocity*
_class
loc:@Variable_18*
_output_shapes
:	�*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:	�*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
l
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
:	�*
dtype0
�
'adam/sequential_dense_1_kernel_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_dense_1_kernel_momentum/*
dtype0*
shape:	�*8
shared_name)'adam/sequential_dense_1_kernel_momentum
�
;adam/sequential_dense_1_kernel_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_momentum*
_output_shapes
:	�*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOp'adam/sequential_dense_1_kernel_momentum*
_class
loc:@Variable_19*
_output_shapes
:	�*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:	�*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
l
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes
:	�*
dtype0
�
#adam/sequential_dense_bias_velocityVarHandleOp*
_output_shapes
: *4

debug_name&$adam/sequential_dense_bias_velocity/*
dtype0*
shape:�*4
shared_name%#adam/sequential_dense_bias_velocity
�
7adam/sequential_dense_bias_velocity/Read/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_velocity*
_class
loc:@Variable_20*
_output_shapes	
:�*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:�*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
h
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes	
:�*
dtype0
�
#adam/sequential_dense_bias_momentumVarHandleOp*
_output_shapes
: *4

debug_name&$adam/sequential_dense_bias_momentum/*
dtype0*
shape:�*4
shared_name%#adam/sequential_dense_bias_momentum
�
7adam/sequential_dense_bias_momentum/Read/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOp#adam/sequential_dense_bias_momentum*
_class
loc:@Variable_21*
_output_shapes	
:�*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:�*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
h
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*
_output_shapes	
:�*
dtype0
�
%adam/sequential_dense_kernel_velocityVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_kernel_velocity/*
dtype0*
shape:
��*6
shared_name'%adam/sequential_dense_kernel_velocity
�
9adam/sequential_dense_kernel_velocity/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_velocity* 
_output_shapes
:
��*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_velocity*
_class
loc:@Variable_22* 
_output_shapes
:
��*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:
��*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
m
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22* 
_output_shapes
:
��*
dtype0
�
%adam/sequential_dense_kernel_momentumVarHandleOp*
_output_shapes
: *6

debug_name(&adam/sequential_dense_kernel_momentum/*
dtype0*
shape:
��*6
shared_name'%adam/sequential_dense_kernel_momentum
�
9adam/sequential_dense_kernel_momentum/Read/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_momentum* 
_output_shapes
:
��*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOp%adam/sequential_dense_kernel_momentum*
_class
loc:@Variable_23* 
_output_shapes
:
��*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:
��*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
m
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23* 
_output_shapes
:
��*
dtype0
�
&adam/sequential_conv2d_5_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_5_bias_velocity/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_5_bias_velocity
�
:adam/sequential_conv2d_5_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_5_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_5_bias_velocity*
_class
loc:@Variable_24*
_output_shapes	
:�*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:�*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
h
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes	
:�*
dtype0
�
&adam/sequential_conv2d_5_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_5_bias_momentum/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_5_bias_momentum
�
:adam/sequential_conv2d_5_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_5_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_5_bias_momentum*
_class
loc:@Variable_25*
_output_shapes	
:�*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:�*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
h
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes	
:�*
dtype0
�
(adam/sequential_conv2d_5_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_5_kernel_velocity/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_5_kernel_velocity
�
<adam/sequential_conv2d_5_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_5_kernel_velocity*(
_output_shapes
:��*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_5_kernel_velocity*
_class
loc:@Variable_26*(
_output_shapes
:��*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:��*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
u
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*(
_output_shapes
:��*
dtype0
�
(adam/sequential_conv2d_5_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_5_kernel_momentum/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_5_kernel_momentum
�
<adam/sequential_conv2d_5_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_5_kernel_momentum*(
_output_shapes
:��*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_5_kernel_momentum*
_class
loc:@Variable_27*(
_output_shapes
:��*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape:��*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
u
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*(
_output_shapes
:��*
dtype0
�
&adam/sequential_conv2d_4_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_4_bias_velocity/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_4_bias_velocity
�
:adam/sequential_conv2d_4_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_4_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_4_bias_velocity*
_class
loc:@Variable_28*
_output_shapes	
:�*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:�*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
h
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes	
:�*
dtype0
�
&adam/sequential_conv2d_4_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_4_bias_momentum/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_4_bias_momentum
�
:adam/sequential_conv2d_4_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_4_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_4_bias_momentum*
_class
loc:@Variable_29*
_output_shapes	
:�*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:�*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
h
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes	
:�*
dtype0
�
(adam/sequential_conv2d_4_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_4_kernel_velocity/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_4_kernel_velocity
�
<adam/sequential_conv2d_4_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_4_kernel_velocity*(
_output_shapes
:��*
dtype0
�
&Variable_30/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_4_kernel_velocity*
_class
loc:@Variable_30*(
_output_shapes
:��*
dtype0
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0*
shape:��*
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0
u
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30*(
_output_shapes
:��*
dtype0
�
(adam/sequential_conv2d_4_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_4_kernel_momentum/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_4_kernel_momentum
�
<adam/sequential_conv2d_4_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_4_kernel_momentum*(
_output_shapes
:��*
dtype0
�
&Variable_31/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_4_kernel_momentum*
_class
loc:@Variable_31*(
_output_shapes
:��*
dtype0
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0*
shape:��*
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0
u
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*(
_output_shapes
:��*
dtype0
�
&adam/sequential_conv2d_3_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_3_bias_velocity/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_3_bias_velocity
�
:adam/sequential_conv2d_3_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_3_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_3_bias_velocity*
_class
loc:@Variable_32*
_output_shapes	
:�*
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape:�*
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
h
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*
_output_shapes	
:�*
dtype0
�
&adam/sequential_conv2d_3_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_3_bias_momentum/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_3_bias_momentum
�
:adam/sequential_conv2d_3_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_3_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_33/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_3_bias_momentum*
_class
loc:@Variable_33*
_output_shapes	
:�*
dtype0
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0*
shape:�*
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0
h
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes	
:�*
dtype0
�
(adam/sequential_conv2d_3_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_3_kernel_velocity/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_3_kernel_velocity
�
<adam/sequential_conv2d_3_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_3_kernel_velocity*(
_output_shapes
:��*
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_3_kernel_velocity*
_class
loc:@Variable_34*(
_output_shapes
:��*
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape:��*
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
u
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34*(
_output_shapes
:��*
dtype0
�
(adam/sequential_conv2d_3_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_3_kernel_momentum/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_3_kernel_momentum
�
<adam/sequential_conv2d_3_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_3_kernel_momentum*(
_output_shapes
:��*
dtype0
�
&Variable_35/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_3_kernel_momentum*
_class
loc:@Variable_35*(
_output_shapes
:��*
dtype0
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0*
shape:��*
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0
u
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35*(
_output_shapes
:��*
dtype0
�
&adam/sequential_conv2d_2_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_2_bias_velocity/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_2_bias_velocity
�
:adam/sequential_conv2d_2_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_36/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_velocity*
_class
loc:@Variable_36*
_output_shapes	
:�*
dtype0
�
Variable_36VarHandleOp*
_class
loc:@Variable_36*
_output_shapes
: *

debug_nameVariable_36/*
dtype0*
shape:�*
shared_nameVariable_36
g
,Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_36*
_output_shapes
: 
h
Variable_36/AssignAssignVariableOpVariable_36&Variable_36/Initializer/ReadVariableOp*
dtype0
h
Variable_36/Read/ReadVariableOpReadVariableOpVariable_36*
_output_shapes	
:�*
dtype0
�
&adam/sequential_conv2d_2_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_2_bias_momentum/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_2_bias_momentum
�
:adam/sequential_conv2d_2_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_37/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_2_bias_momentum*
_class
loc:@Variable_37*
_output_shapes	
:�*
dtype0
�
Variable_37VarHandleOp*
_class
loc:@Variable_37*
_output_shapes
: *

debug_nameVariable_37/*
dtype0*
shape:�*
shared_nameVariable_37
g
,Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_37*
_output_shapes
: 
h
Variable_37/AssignAssignVariableOpVariable_37&Variable_37/Initializer/ReadVariableOp*
dtype0
h
Variable_37/Read/ReadVariableOpReadVariableOpVariable_37*
_output_shapes	
:�*
dtype0
�
(adam/sequential_conv2d_2_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_2_kernel_velocity/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_2_kernel_velocity
�
<adam/sequential_conv2d_2_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_velocity*(
_output_shapes
:��*
dtype0
�
&Variable_38/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_velocity*
_class
loc:@Variable_38*(
_output_shapes
:��*
dtype0
�
Variable_38VarHandleOp*
_class
loc:@Variable_38*
_output_shapes
: *

debug_nameVariable_38/*
dtype0*
shape:��*
shared_nameVariable_38
g
,Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_38*
_output_shapes
: 
h
Variable_38/AssignAssignVariableOpVariable_38&Variable_38/Initializer/ReadVariableOp*
dtype0
u
Variable_38/Read/ReadVariableOpReadVariableOpVariable_38*(
_output_shapes
:��*
dtype0
�
(adam/sequential_conv2d_2_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_2_kernel_momentum/*
dtype0*
shape:��*9
shared_name*(adam/sequential_conv2d_2_kernel_momentum
�
<adam/sequential_conv2d_2_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_momentum*(
_output_shapes
:��*
dtype0
�
&Variable_39/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_2_kernel_momentum*
_class
loc:@Variable_39*(
_output_shapes
:��*
dtype0
�
Variable_39VarHandleOp*
_class
loc:@Variable_39*
_output_shapes
: *

debug_nameVariable_39/*
dtype0*
shape:��*
shared_nameVariable_39
g
,Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_39*
_output_shapes
: 
h
Variable_39/AssignAssignVariableOpVariable_39&Variable_39/Initializer/ReadVariableOp*
dtype0
u
Variable_39/Read/ReadVariableOpReadVariableOpVariable_39*(
_output_shapes
:��*
dtype0
�
&adam/sequential_conv2d_1_bias_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_1_bias_velocity/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_1_bias_velocity
�
:adam/sequential_conv2d_1_bias_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_40/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_velocity*
_class
loc:@Variable_40*
_output_shapes	
:�*
dtype0
�
Variable_40VarHandleOp*
_class
loc:@Variable_40*
_output_shapes
: *

debug_nameVariable_40/*
dtype0*
shape:�*
shared_nameVariable_40
g
,Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_40*
_output_shapes
: 
h
Variable_40/AssignAssignVariableOpVariable_40&Variable_40/Initializer/ReadVariableOp*
dtype0
h
Variable_40/Read/ReadVariableOpReadVariableOpVariable_40*
_output_shapes	
:�*
dtype0
�
&adam/sequential_conv2d_1_bias_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_1_bias_momentum/*
dtype0*
shape:�*7
shared_name(&adam/sequential_conv2d_1_bias_momentum
�
:adam/sequential_conv2d_1_bias_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_41/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_1_bias_momentum*
_class
loc:@Variable_41*
_output_shapes	
:�*
dtype0
�
Variable_41VarHandleOp*
_class
loc:@Variable_41*
_output_shapes
: *

debug_nameVariable_41/*
dtype0*
shape:�*
shared_nameVariable_41
g
,Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_41*
_output_shapes
: 
h
Variable_41/AssignAssignVariableOpVariable_41&Variable_41/Initializer/ReadVariableOp*
dtype0
h
Variable_41/Read/ReadVariableOpReadVariableOpVariable_41*
_output_shapes	
:�*
dtype0
�
(adam/sequential_conv2d_1_kernel_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_1_kernel_velocity/*
dtype0*
shape:�*9
shared_name*(adam/sequential_conv2d_1_kernel_velocity
�
<adam/sequential_conv2d_1_kernel_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_velocity*'
_output_shapes
:�*
dtype0
�
&Variable_42/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_velocity*
_class
loc:@Variable_42*'
_output_shapes
:�*
dtype0
�
Variable_42VarHandleOp*
_class
loc:@Variable_42*
_output_shapes
: *

debug_nameVariable_42/*
dtype0*
shape:�*
shared_nameVariable_42
g
,Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_42*
_output_shapes
: 
h
Variable_42/AssignAssignVariableOpVariable_42&Variable_42/Initializer/ReadVariableOp*
dtype0
t
Variable_42/Read/ReadVariableOpReadVariableOpVariable_42*'
_output_shapes
:�*
dtype0
�
(adam/sequential_conv2d_1_kernel_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_conv2d_1_kernel_momentum/*
dtype0*
shape:�*9
shared_name*(adam/sequential_conv2d_1_kernel_momentum
�
<adam/sequential_conv2d_1_kernel_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_momentum*'
_output_shapes
:�*
dtype0
�
&Variable_43/Initializer/ReadVariableOpReadVariableOp(adam/sequential_conv2d_1_kernel_momentum*
_class
loc:@Variable_43*'
_output_shapes
:�*
dtype0
�
Variable_43VarHandleOp*
_class
loc:@Variable_43*
_output_shapes
: *

debug_nameVariable_43/*
dtype0*
shape:�*
shared_nameVariable_43
g
,Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_43*
_output_shapes
: 
h
Variable_43/AssignAssignVariableOpVariable_43&Variable_43/Initializer/ReadVariableOp*
dtype0
t
Variable_43/Read/ReadVariableOpReadVariableOpVariable_43*'
_output_shapes
:�*
dtype0
�
$adam/sequential_conv2d_bias_velocityVarHandleOp*
_output_shapes
: *5

debug_name'%adam/sequential_conv2d_bias_velocity/*
dtype0*
shape:*5
shared_name&$adam/sequential_conv2d_bias_velocity
�
8adam/sequential_conv2d_bias_velocity/Read/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_44/Initializer/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_velocity*
_class
loc:@Variable_44*
_output_shapes
:*
dtype0
�
Variable_44VarHandleOp*
_class
loc:@Variable_44*
_output_shapes
: *

debug_nameVariable_44/*
dtype0*
shape:*
shared_nameVariable_44
g
,Variable_44/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_44*
_output_shapes
: 
h
Variable_44/AssignAssignVariableOpVariable_44&Variable_44/Initializer/ReadVariableOp*
dtype0
g
Variable_44/Read/ReadVariableOpReadVariableOpVariable_44*
_output_shapes
:*
dtype0
�
$adam/sequential_conv2d_bias_momentumVarHandleOp*
_output_shapes
: *5

debug_name'%adam/sequential_conv2d_bias_momentum/*
dtype0*
shape:*5
shared_name&$adam/sequential_conv2d_bias_momentum
�
8adam/sequential_conv2d_bias_momentum/Read/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_45/Initializer/ReadVariableOpReadVariableOp$adam/sequential_conv2d_bias_momentum*
_class
loc:@Variable_45*
_output_shapes
:*
dtype0
�
Variable_45VarHandleOp*
_class
loc:@Variable_45*
_output_shapes
: *

debug_nameVariable_45/*
dtype0*
shape:*
shared_nameVariable_45
g
,Variable_45/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_45*
_output_shapes
: 
h
Variable_45/AssignAssignVariableOpVariable_45&Variable_45/Initializer/ReadVariableOp*
dtype0
g
Variable_45/Read/ReadVariableOpReadVariableOpVariable_45*
_output_shapes
:*
dtype0
�
&adam/sequential_conv2d_kernel_velocityVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_kernel_velocity/*
dtype0*
shape:*7
shared_name(&adam/sequential_conv2d_kernel_velocity
�
:adam/sequential_conv2d_kernel_velocity/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_velocity*&
_output_shapes
:*
dtype0
�
&Variable_46/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_velocity*
_class
loc:@Variable_46*&
_output_shapes
:*
dtype0
�
Variable_46VarHandleOp*
_class
loc:@Variable_46*
_output_shapes
: *

debug_nameVariable_46/*
dtype0*
shape:*
shared_nameVariable_46
g
,Variable_46/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_46*
_output_shapes
: 
h
Variable_46/AssignAssignVariableOpVariable_46&Variable_46/Initializer/ReadVariableOp*
dtype0
s
Variable_46/Read/ReadVariableOpReadVariableOpVariable_46*&
_output_shapes
:*
dtype0
�
&adam/sequential_conv2d_kernel_momentumVarHandleOp*
_output_shapes
: *7

debug_name)'adam/sequential_conv2d_kernel_momentum/*
dtype0*
shape:*7
shared_name(&adam/sequential_conv2d_kernel_momentum
�
:adam/sequential_conv2d_kernel_momentum/Read/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_momentum*&
_output_shapes
:*
dtype0
�
&Variable_47/Initializer/ReadVariableOpReadVariableOp&adam/sequential_conv2d_kernel_momentum*
_class
loc:@Variable_47*&
_output_shapes
:*
dtype0
�
Variable_47VarHandleOp*
_class
loc:@Variable_47*
_output_shapes
: *

debug_nameVariable_47/*
dtype0*
shape:*
shared_nameVariable_47
g
,Variable_47/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_47*
_output_shapes
: 
h
Variable_47/AssignAssignVariableOpVariable_47&Variable_47/Initializer/ReadVariableOp*
dtype0
s
Variable_47/Read/ReadVariableOpReadVariableOpVariable_47*&
_output_shapes
:*
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_48/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_48*
_output_shapes
: *
dtype0
�
Variable_48VarHandleOp*
_class
loc:@Variable_48*
_output_shapes
: *

debug_nameVariable_48/*
dtype0*
shape: *
shared_nameVariable_48
g
,Variable_48/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_48*
_output_shapes
: 
h
Variable_48/AssignAssignVariableOpVariable_48&Variable_48/Initializer/ReadVariableOp*
dtype0
c
Variable_48/Read/ReadVariableOpReadVariableOpVariable_48*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
&Variable_49/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_49*
_output_shapes
: *
dtype0	
�
Variable_49VarHandleOp*
_class
loc:@Variable_49*
_output_shapes
: *

debug_nameVariable_49/*
dtype0	*
shape: *
shared_nameVariable_49
g
,Variable_49/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_49*
_output_shapes
: 
h
Variable_49/AssignAssignVariableOpVariable_49&Variable_49/Initializer/ReadVariableOp*
dtype0	
c
Variable_49/Read/ReadVariableOpReadVariableOpVariable_49*
_output_shapes
: *
dtype0	
w
serving_default_inputsPlaceholder*&
_output_shapes
:   *
dtype0*
shape:   
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential/conv2d/kernelsequential/conv2d/biassequential/conv2d_1/kernelsequential/conv2d_1/biassequential/conv2d_2/kernelsequential/conv2d_2/biassequential/conv2d_3/kernelsequential/conv2d_3/biassequential/conv2d_4/kernelsequential/conv2d_4/biassequential/conv2d_5/kernelsequential/conv2d_5/biassequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *=
f8R6
4__inference_signature_wrapper_serving_default_511007

NoOpNoOp
�A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�@
value�@B�@ B�@
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities*

trace_0* 
* 
* 
* 
* 
* 
r
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14*
* 

-serving_default* 
* 
* 
* 
* 
* 
r
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14*
r
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14*
* 
* 

.trace_0* 
�
0
1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33*
z
O0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15*
* 
UO
VARIABLE_VALUEVariable_490optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEVariable_483optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
]
__inbound_nodes
`_outbound_nodes
a_losses
b	_loss_ids
c_losses_override* 
�
O_kernel
Pbias
d_inbound_nodes
e_outbound_nodes
f_losses
g	_loss_ids
h_losses_override
i_build_shapes_dict*
�
Q_kernel
Rbias
j_inbound_nodes
k_outbound_nodes
l_losses
m	_loss_ids
n_losses_override
o_build_shapes_dict*
]
p_inbound_nodes
q_outbound_nodes
r_losses
s	_loss_ids
t_losses_override* 
�
S_kernel
Tbias
u_inbound_nodes
v_outbound_nodes
w_losses
x	_loss_ids
y_losses_override
z_build_shapes_dict*
]
{_inbound_nodes
|_outbound_nodes
}_losses
~	_loss_ids
_losses_override* 
�
U_kernel
Vbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
W_kernel
Xbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
Y_kernel
Zbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
[_kernel
\bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
�
]_kernel
^bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
* 
* 
VP
VARIABLE_VALUEVariable_471optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_461optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_451optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_441optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_431optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_421optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_411optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_401optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_392optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_382optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_372optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_362optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_352optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_342optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_332optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_322optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_312optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_302optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_292optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_282optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_272optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_262optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_252optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_242optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_232optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_222optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_212optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_202optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_192optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_182optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_172optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_162optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_15;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_14;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_13;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_12;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_11;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_10;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_9;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_8;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_7;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_6;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_5<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_4<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_3<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_2<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_1<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEVariable<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *(
f#R!
__inference__traced_save_511606
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference__traced_restore_511765��
�v
�
"__inference_serving_default_511084

inputsS
9functional_1_conv2d_1_convolution_readvariableop_resource:C
5functional_1_conv2d_1_reshape_readvariableop_resource:V
;functional_1_conv2d_1_2_convolution_readvariableop_resource:�F
7functional_1_conv2d_1_2_reshape_readvariableop_resource:	�W
;functional_1_conv2d_2_1_convolution_readvariableop_resource:��F
7functional_1_conv2d_2_1_reshape_readvariableop_resource:	�W
;functional_1_conv2d_3_1_convolution_readvariableop_resource:��F
7functional_1_conv2d_3_1_reshape_readvariableop_resource:	�W
;functional_1_conv2d_4_1_convolution_readvariableop_resource:��F
7functional_1_conv2d_4_1_reshape_readvariableop_resource:	�W
;functional_1_conv2d_5_1_convolution_readvariableop_resource:��F
7functional_1_conv2d_5_1_reshape_readvariableop_resource:	�E
1functional_1_dense_1_cast_readvariableop_resource:
��?
0functional_1_dense_1_add_readvariableop_resource:	�F
3functional_1_dense_1_2_cast_readvariableop_resource:	�@
2functional_1_dense_1_2_add_readvariableop_resource:
identity��,functional_1/conv2d_1/Reshape/ReadVariableOp�0functional_1/conv2d_1/convolution/ReadVariableOp�.functional_1/conv2d_1_2/Reshape/ReadVariableOp�2functional_1/conv2d_1_2/convolution/ReadVariableOp�.functional_1/conv2d_2_1/Reshape/ReadVariableOp�2functional_1/conv2d_2_1/convolution/ReadVariableOp�.functional_1/conv2d_3_1/Reshape/ReadVariableOp�2functional_1/conv2d_3_1/convolution/ReadVariableOp�.functional_1/conv2d_4_1/Reshape/ReadVariableOp�2functional_1/conv2d_4_1/convolution/ReadVariableOp�.functional_1/conv2d_5_1/Reshape/ReadVariableOp�2functional_1/conv2d_5_1/convolution/ReadVariableOp�'functional_1/dense_1/Add/ReadVariableOp�(functional_1/dense_1/Cast/ReadVariableOp�)functional_1/dense_1_2/Add/ReadVariableOp�*functional_1/dense_1_2/Cast/ReadVariableOp�
0functional_1/conv2d_1/convolution/ReadVariableOpReadVariableOp9functional_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
!functional_1/conv2d_1/convolutionConv2Dinputs8functional_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*&
_output_shapes
:   *
paddingSAME*
strides
�
,functional_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp5functional_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0|
#functional_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
functional_1/conv2d_1/ReshapeReshape4functional_1/conv2d_1/Reshape/ReadVariableOp:value:0,functional_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
functional_1/conv2d_1/addAddV2*functional_1/conv2d_1/convolution:output:0&functional_1/conv2d_1/Reshape:output:0*
T0*&
_output_shapes
:   r
functional_1/conv2d_1/ReluRelufunctional_1/conv2d_1/add:z:0*
T0*&
_output_shapes
:   �
2functional_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_1_2_convolution_readvariableop_resource*'
_output_shapes
:�*
dtype0�
#functional_1/conv2d_1_2/convolutionConv2D(functional_1/conv2d_1/Relu:activations:0:functional_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
:   �*
paddingSAME*
strides
�
.functional_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%functional_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
functional_1/conv2d_1_2/ReshapeReshape6functional_1/conv2d_1_2/Reshape/ReadVariableOp:value:0.functional_1/conv2d_1_2/Reshape/shape:output:0*
T0*'
_output_shapes
:��
functional_1/conv2d_1_2/addAddV2,functional_1/conv2d_1_2/convolution:output:0(functional_1/conv2d_1_2/Reshape:output:0*
T0*'
_output_shapes
:   �w
functional_1/conv2d_1_2/ReluRelufunctional_1/conv2d_1_2/add:z:0*
T0*'
_output_shapes
:   ��
&functional_1/max_pooling2d_1/MaxPool2dMaxPool*functional_1/conv2d_1_2/Relu:activations:0*'
_output_shapes
: �*
ksize
*
paddingVALID*
strides
�
2functional_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_2_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#functional_1/conv2d_2_1/convolutionConv2D/functional_1/max_pooling2d_1/MaxPool2d:output:0:functional_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingVALID*
strides
�
.functional_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%functional_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
functional_1/conv2d_2_1/ReshapeReshape6functional_1/conv2d_2_1/Reshape/ReadVariableOp:value:0.functional_1/conv2d_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
functional_1/conv2d_2_1/addAddV2,functional_1/conv2d_2_1/convolution:output:0(functional_1/conv2d_2_1/Reshape:output:0*
T0*'
_output_shapes
: �w
functional_1/conv2d_2_1/ReluRelufunctional_1/conv2d_2_1/add:z:0*
T0*'
_output_shapes
: ��
(functional_1/max_pooling2d_1_2/MaxPool2dMaxPool*functional_1/conv2d_2_1/Relu:activations:0*'
_output_shapes
: �*
ksize
*
paddingVALID*
strides
�
2functional_1/conv2d_3_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#functional_1/conv2d_3_1/convolutionConv2D1functional_1/max_pooling2d_1_2/MaxPool2d:output:0:functional_1/conv2d_3_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingSAME*
strides
�
.functional_1/conv2d_3_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%functional_1/conv2d_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
functional_1/conv2d_3_1/ReshapeReshape6functional_1/conv2d_3_1/Reshape/ReadVariableOp:value:0.functional_1/conv2d_3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
functional_1/conv2d_3_1/addAddV2,functional_1/conv2d_3_1/convolution:output:0(functional_1/conv2d_3_1/Reshape:output:0*
T0*'
_output_shapes
: �w
functional_1/conv2d_3_1/ReluRelufunctional_1/conv2d_3_1/add:z:0*
T0*'
_output_shapes
: ��
2functional_1/conv2d_4_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_4_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#functional_1/conv2d_4_1/convolutionConv2D*functional_1/conv2d_3_1/Relu:activations:0:functional_1/conv2d_4_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingVALID*
strides
�
.functional_1/conv2d_4_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%functional_1/conv2d_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
functional_1/conv2d_4_1/ReshapeReshape6functional_1/conv2d_4_1/Reshape/ReadVariableOp:value:0.functional_1/conv2d_4_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
functional_1/conv2d_4_1/addAddV2,functional_1/conv2d_4_1/convolution:output:0(functional_1/conv2d_4_1/Reshape:output:0*
T0*'
_output_shapes
: �w
functional_1/conv2d_4_1/ReluRelufunctional_1/conv2d_4_1/add:z:0*
T0*'
_output_shapes
: ��
(functional_1/max_pooling2d_2_1/MaxPool2dMaxPool*functional_1/conv2d_4_1/Relu:activations:0*'
_output_shapes
: �*
ksize
*
paddingVALID*
strides
�
2functional_1/conv2d_5_1/convolution/ReadVariableOpReadVariableOp;functional_1_conv2d_5_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#functional_1/conv2d_5_1/convolutionConv2D1functional_1/max_pooling2d_2_1/MaxPool2d:output:0:functional_1/conv2d_5_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingSAME*
strides
�
.functional_1/conv2d_5_1/Reshape/ReadVariableOpReadVariableOp7functional_1_conv2d_5_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%functional_1/conv2d_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
functional_1/conv2d_5_1/ReshapeReshape6functional_1/conv2d_5_1/Reshape/ReadVariableOp:value:0.functional_1/conv2d_5_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
functional_1/conv2d_5_1/addAddV2,functional_1/conv2d_5_1/convolution:output:0(functional_1/conv2d_5_1/Reshape:output:0*
T0*'
_output_shapes
: �w
functional_1/conv2d_5_1/ReluRelufunctional_1/conv2d_5_1/add:z:0*
T0*'
_output_shapes
: �u
$functional_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
functional_1/flatten_1/ReshapeReshape*functional_1/conv2d_5_1/Relu:activations:0-functional_1/flatten_1/Reshape/shape:output:0*
T0*
_output_shapes
:	 ��
(functional_1/dense_1/Cast/ReadVariableOpReadVariableOp1functional_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_1/MatMulMatMul'functional_1/flatten_1/Reshape:output:00functional_1/dense_1/Cast/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ��
'functional_1/dense_1/Add/ReadVariableOpReadVariableOp0functional_1_dense_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_1/AddAddV2%functional_1/dense_1/MatMul:product:0/functional_1/dense_1/Add/ReadVariableOp:value:0*
T0*
_output_shapes
:	 �i
functional_1/dense_1/SeluSelufunctional_1/dense_1/Add:z:0*
T0*
_output_shapes
:	 ��
*functional_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3functional_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
functional_1/dense_1_2/MatMulMatMul'functional_1/dense_1/Selu:activations:02functional_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*
_output_shapes

: �
)functional_1/dense_1_2/Add/ReadVariableOpReadVariableOp2functional_1_dense_1_2_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_1/dense_1_2/AddAddV2'functional_1/dense_1_2/MatMul:product:01functional_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*
_output_shapes

: r
functional_1/dense_1_2/SoftmaxSoftmaxfunctional_1/dense_1_2/Add:z:0*
T0*
_output_shapes

: n
IdentityIdentity(functional_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*
_output_shapes

: �
NoOpNoOp-^functional_1/conv2d_1/Reshape/ReadVariableOp1^functional_1/conv2d_1/convolution/ReadVariableOp/^functional_1/conv2d_1_2/Reshape/ReadVariableOp3^functional_1/conv2d_1_2/convolution/ReadVariableOp/^functional_1/conv2d_2_1/Reshape/ReadVariableOp3^functional_1/conv2d_2_1/convolution/ReadVariableOp/^functional_1/conv2d_3_1/Reshape/ReadVariableOp3^functional_1/conv2d_3_1/convolution/ReadVariableOp/^functional_1/conv2d_4_1/Reshape/ReadVariableOp3^functional_1/conv2d_4_1/convolution/ReadVariableOp/^functional_1/conv2d_5_1/Reshape/ReadVariableOp3^functional_1/conv2d_5_1/convolution/ReadVariableOp(^functional_1/dense_1/Add/ReadVariableOp)^functional_1/dense_1/Cast/ReadVariableOp*^functional_1/dense_1_2/Add/ReadVariableOp+^functional_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:   : : : : : : : : : : : : : : : : 2\
,functional_1/conv2d_1/Reshape/ReadVariableOp,functional_1/conv2d_1/Reshape/ReadVariableOp2d
0functional_1/conv2d_1/convolution/ReadVariableOp0functional_1/conv2d_1/convolution/ReadVariableOp2`
.functional_1/conv2d_1_2/Reshape/ReadVariableOp.functional_1/conv2d_1_2/Reshape/ReadVariableOp2h
2functional_1/conv2d_1_2/convolution/ReadVariableOp2functional_1/conv2d_1_2/convolution/ReadVariableOp2`
.functional_1/conv2d_2_1/Reshape/ReadVariableOp.functional_1/conv2d_2_1/Reshape/ReadVariableOp2h
2functional_1/conv2d_2_1/convolution/ReadVariableOp2functional_1/conv2d_2_1/convolution/ReadVariableOp2`
.functional_1/conv2d_3_1/Reshape/ReadVariableOp.functional_1/conv2d_3_1/Reshape/ReadVariableOp2h
2functional_1/conv2d_3_1/convolution/ReadVariableOp2functional_1/conv2d_3_1/convolution/ReadVariableOp2`
.functional_1/conv2d_4_1/Reshape/ReadVariableOp.functional_1/conv2d_4_1/Reshape/ReadVariableOp2h
2functional_1/conv2d_4_1/convolution/ReadVariableOp2functional_1/conv2d_4_1/convolution/ReadVariableOp2`
.functional_1/conv2d_5_1/Reshape/ReadVariableOp.functional_1/conv2d_5_1/Reshape/ReadVariableOp2h
2functional_1/conv2d_5_1/convolution/ReadVariableOp2functional_1/conv2d_5_1/convolution/ReadVariableOp2R
'functional_1/dense_1/Add/ReadVariableOp'functional_1/dense_1/Add/ReadVariableOp2T
(functional_1/dense_1/Cast/ReadVariableOp(functional_1/dense_1/Cast/ReadVariableOp2V
)functional_1/dense_1_2/Add/ReadVariableOp)functional_1/dense_1_2/Add/ReadVariableOp2X
*functional_1/dense_1_2/Cast/ReadVariableOp*functional_1/dense_1_2/Cast/ReadVariableOp:N J
&
_output_shapes
:   
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
4__inference_signature_wrapper_serving_default_511007

inputs!
unknown:
	unknown_0:$
	unknown_1:�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference_serving_default_510969f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:   : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
:   
 
_user_specified_nameinputs:&"
 
_user_specified_name510973:&"
 
_user_specified_name510975:&"
 
_user_specified_name510977:&"
 
_user_specified_name510979:&"
 
_user_specified_name510981:&"
 
_user_specified_name510983:&"
 
_user_specified_name510985:&"
 
_user_specified_name510987:&	"
 
_user_specified_name510989:&
"
 
_user_specified_name510991:&"
 
_user_specified_name510993:&"
 
_user_specified_name510995:&"
 
_user_specified_name510997:&"
 
_user_specified_name510999:&"
 
_user_specified_name511001:&"
 
_user_specified_name511003
�v
�
"__inference_serving_default_510969

inputsS
9sequential_1_conv2d_1_convolution_readvariableop_resource:C
5sequential_1_conv2d_1_reshape_readvariableop_resource:V
;sequential_1_conv2d_1_2_convolution_readvariableop_resource:�F
7sequential_1_conv2d_1_2_reshape_readvariableop_resource:	�W
;sequential_1_conv2d_2_1_convolution_readvariableop_resource:��F
7sequential_1_conv2d_2_1_reshape_readvariableop_resource:	�W
;sequential_1_conv2d_3_1_convolution_readvariableop_resource:��F
7sequential_1_conv2d_3_1_reshape_readvariableop_resource:	�W
;sequential_1_conv2d_4_1_convolution_readvariableop_resource:��F
7sequential_1_conv2d_4_1_reshape_readvariableop_resource:	�W
;sequential_1_conv2d_5_1_convolution_readvariableop_resource:��F
7sequential_1_conv2d_5_1_reshape_readvariableop_resource:	�E
1sequential_1_dense_1_cast_readvariableop_resource:
��?
0sequential_1_dense_1_add_readvariableop_resource:	�F
3sequential_1_dense_1_2_cast_readvariableop_resource:	�@
2sequential_1_dense_1_2_add_readvariableop_resource:
identity��,sequential_1/conv2d_1/Reshape/ReadVariableOp�0sequential_1/conv2d_1/convolution/ReadVariableOp�.sequential_1/conv2d_1_2/Reshape/ReadVariableOp�2sequential_1/conv2d_1_2/convolution/ReadVariableOp�.sequential_1/conv2d_2_1/Reshape/ReadVariableOp�2sequential_1/conv2d_2_1/convolution/ReadVariableOp�.sequential_1/conv2d_3_1/Reshape/ReadVariableOp�2sequential_1/conv2d_3_1/convolution/ReadVariableOp�.sequential_1/conv2d_4_1/Reshape/ReadVariableOp�2sequential_1/conv2d_4_1/convolution/ReadVariableOp�.sequential_1/conv2d_5_1/Reshape/ReadVariableOp�2sequential_1/conv2d_5_1/convolution/ReadVariableOp�'sequential_1/dense_1/Add/ReadVariableOp�(sequential_1/dense_1/Cast/ReadVariableOp�)sequential_1/dense_1_2/Add/ReadVariableOp�*sequential_1/dense_1_2/Cast/ReadVariableOp�
0sequential_1/conv2d_1/convolution/ReadVariableOpReadVariableOp9sequential_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
!sequential_1/conv2d_1/convolutionConv2Dinputs8sequential_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*&
_output_shapes
:   *
paddingSAME*
strides
�
,sequential_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0|
#sequential_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
sequential_1/conv2d_1/ReshapeReshape4sequential_1/conv2d_1/Reshape/ReadVariableOp:value:0,sequential_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_1/conv2d_1/addAddV2*sequential_1/conv2d_1/convolution:output:0&sequential_1/conv2d_1/Reshape:output:0*
T0*&
_output_shapes
:   r
sequential_1/conv2d_1/ReluRelusequential_1/conv2d_1/add:z:0*
T0*&
_output_shapes
:   �
2sequential_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_1_2_convolution_readvariableop_resource*'
_output_shapes
:�*
dtype0�
#sequential_1/conv2d_1_2/convolutionConv2D(sequential_1/conv2d_1/Relu:activations:0:sequential_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
:   �*
paddingSAME*
strides
�
.sequential_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
sequential_1/conv2d_1_2/ReshapeReshape6sequential_1/conv2d_1_2/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_1_2/Reshape/shape:output:0*
T0*'
_output_shapes
:��
sequential_1/conv2d_1_2/addAddV2,sequential_1/conv2d_1_2/convolution:output:0(sequential_1/conv2d_1_2/Reshape:output:0*
T0*'
_output_shapes
:   �w
sequential_1/conv2d_1_2/ReluRelusequential_1/conv2d_1_2/add:z:0*
T0*'
_output_shapes
:   ��
&sequential_1/max_pooling2d_1/MaxPool2dMaxPool*sequential_1/conv2d_1_2/Relu:activations:0*'
_output_shapes
: �*
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_2_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#sequential_1/conv2d_2_1/convolutionConv2D/sequential_1/max_pooling2d_1/MaxPool2d:output:0:sequential_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingVALID*
strides
�
.sequential_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
sequential_1/conv2d_2_1/ReshapeReshape6sequential_1/conv2d_2_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
sequential_1/conv2d_2_1/addAddV2,sequential_1/conv2d_2_1/convolution:output:0(sequential_1/conv2d_2_1/Reshape:output:0*
T0*'
_output_shapes
: �w
sequential_1/conv2d_2_1/ReluRelusequential_1/conv2d_2_1/add:z:0*
T0*'
_output_shapes
: ��
(sequential_1/max_pooling2d_1_2/MaxPool2dMaxPool*sequential_1/conv2d_2_1/Relu:activations:0*'
_output_shapes
: �*
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_3_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#sequential_1/conv2d_3_1/convolutionConv2D1sequential_1/max_pooling2d_1_2/MaxPool2d:output:0:sequential_1/conv2d_3_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingSAME*
strides
�
.sequential_1/conv2d_3_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
sequential_1/conv2d_3_1/ReshapeReshape6sequential_1/conv2d_3_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
sequential_1/conv2d_3_1/addAddV2,sequential_1/conv2d_3_1/convolution:output:0(sequential_1/conv2d_3_1/Reshape:output:0*
T0*'
_output_shapes
: �w
sequential_1/conv2d_3_1/ReluRelusequential_1/conv2d_3_1/add:z:0*
T0*'
_output_shapes
: ��
2sequential_1/conv2d_4_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_4_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#sequential_1/conv2d_4_1/convolutionConv2D*sequential_1/conv2d_3_1/Relu:activations:0:sequential_1/conv2d_4_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingVALID*
strides
�
.sequential_1/conv2d_4_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
sequential_1/conv2d_4_1/ReshapeReshape6sequential_1/conv2d_4_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_4_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
sequential_1/conv2d_4_1/addAddV2,sequential_1/conv2d_4_1/convolution:output:0(sequential_1/conv2d_4_1/Reshape:output:0*
T0*'
_output_shapes
: �w
sequential_1/conv2d_4_1/ReluRelusequential_1/conv2d_4_1/add:z:0*
T0*'
_output_shapes
: ��
(sequential_1/max_pooling2d_2_1/MaxPool2dMaxPool*sequential_1/conv2d_4_1/Relu:activations:0*'
_output_shapes
: �*
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_5_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_5_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#sequential_1/conv2d_5_1/convolutionConv2D1sequential_1/max_pooling2d_2_1/MaxPool2d:output:0:sequential_1/conv2d_5_1/convolution/ReadVariableOp:value:0*
T0*'
_output_shapes
: �*
paddingSAME*
strides
�
.sequential_1/conv2d_5_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_5_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
sequential_1/conv2d_5_1/ReshapeReshape6sequential_1/conv2d_5_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_5_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
sequential_1/conv2d_5_1/addAddV2,sequential_1/conv2d_5_1/convolution:output:0(sequential_1/conv2d_5_1/Reshape:output:0*
T0*'
_output_shapes
: �w
sequential_1/conv2d_5_1/ReluRelusequential_1/conv2d_5_1/add:z:0*
T0*'
_output_shapes
: �u
$sequential_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       �
sequential_1/flatten_1/ReshapeReshape*sequential_1/conv2d_5_1/Relu:activations:0-sequential_1/flatten_1/Reshape/shape:output:0*
T0*
_output_shapes
:	 ��
(sequential_1/dense_1/Cast/ReadVariableOpReadVariableOp1sequential_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_1/dense_1/MatMulMatMul'sequential_1/flatten_1/Reshape:output:00sequential_1/dense_1/Cast/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ��
'sequential_1/dense_1/Add/ReadVariableOpReadVariableOp0sequential_1_dense_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1/dense_1/AddAddV2%sequential_1/dense_1/MatMul:product:0/sequential_1/dense_1/Add/ReadVariableOp:value:0*
T0*
_output_shapes
:	 �i
sequential_1/dense_1/SeluSelusequential_1/dense_1/Add:z:0*
T0*
_output_shapes
:	 ��
*sequential_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_1/dense_1_2/MatMulMatMul'sequential_1/dense_1/Selu:activations:02sequential_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*
_output_shapes

: �
)sequential_1/dense_1_2/Add/ReadVariableOpReadVariableOp2sequential_1_dense_1_2_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/dense_1_2/AddAddV2'sequential_1/dense_1_2/MatMul:product:01sequential_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*
_output_shapes

: r
sequential_1/dense_1_2/SoftmaxSoftmaxsequential_1/dense_1_2/Add:z:0*
T0*
_output_shapes

: n
IdentityIdentity(sequential_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*
_output_shapes

: �
NoOpNoOp-^sequential_1/conv2d_1/Reshape/ReadVariableOp1^sequential_1/conv2d_1/convolution/ReadVariableOp/^sequential_1/conv2d_1_2/Reshape/ReadVariableOp3^sequential_1/conv2d_1_2/convolution/ReadVariableOp/^sequential_1/conv2d_2_1/Reshape/ReadVariableOp3^sequential_1/conv2d_2_1/convolution/ReadVariableOp/^sequential_1/conv2d_3_1/Reshape/ReadVariableOp3^sequential_1/conv2d_3_1/convolution/ReadVariableOp/^sequential_1/conv2d_4_1/Reshape/ReadVariableOp3^sequential_1/conv2d_4_1/convolution/ReadVariableOp/^sequential_1/conv2d_5_1/Reshape/ReadVariableOp3^sequential_1/conv2d_5_1/convolution/ReadVariableOp(^sequential_1/dense_1/Add/ReadVariableOp)^sequential_1/dense_1/Cast/ReadVariableOp*^sequential_1/dense_1_2/Add/ReadVariableOp+^sequential_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:   : : : : : : : : : : : : : : : : 2\
,sequential_1/conv2d_1/Reshape/ReadVariableOp,sequential_1/conv2d_1/Reshape/ReadVariableOp2d
0sequential_1/conv2d_1/convolution/ReadVariableOp0sequential_1/conv2d_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_1_2/Reshape/ReadVariableOp.sequential_1/conv2d_1_2/Reshape/ReadVariableOp2h
2sequential_1/conv2d_1_2/convolution/ReadVariableOp2sequential_1/conv2d_1_2/convolution/ReadVariableOp2`
.sequential_1/conv2d_2_1/Reshape/ReadVariableOp.sequential_1/conv2d_2_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_2_1/convolution/ReadVariableOp2sequential_1/conv2d_2_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_3_1/Reshape/ReadVariableOp.sequential_1/conv2d_3_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_3_1/convolution/ReadVariableOp2sequential_1/conv2d_3_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_4_1/Reshape/ReadVariableOp.sequential_1/conv2d_4_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_4_1/convolution/ReadVariableOp2sequential_1/conv2d_4_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_5_1/Reshape/ReadVariableOp.sequential_1/conv2d_5_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_5_1/convolution/ReadVariableOp2sequential_1/conv2d_5_1/convolution/ReadVariableOp2R
'sequential_1/dense_1/Add/ReadVariableOp'sequential_1/dense_1/Add/ReadVariableOp2T
(sequential_1/dense_1/Cast/ReadVariableOp(sequential_1/dense_1/Cast/ReadVariableOp2V
)sequential_1/dense_1_2/Add/ReadVariableOp)sequential_1/dense_1_2/Add/ReadVariableOp2X
*sequential_1/dense_1_2/Cast/ReadVariableOp*sequential_1/dense_1_2/Cast/ReadVariableOp:N J
&
_output_shapes
:   
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�,
__inference__traced_save_511606
file_prefix,
"read_disablecopyonread_variable_49:	 .
$read_1_disablecopyonread_variable_48: >
$read_2_disablecopyonread_variable_47:>
$read_3_disablecopyonread_variable_46:2
$read_4_disablecopyonread_variable_45:2
$read_5_disablecopyonread_variable_44:?
$read_6_disablecopyonread_variable_43:�?
$read_7_disablecopyonread_variable_42:�3
$read_8_disablecopyonread_variable_41:	�3
$read_9_disablecopyonread_variable_40:	�A
%read_10_disablecopyonread_variable_39:��A
%read_11_disablecopyonread_variable_38:��4
%read_12_disablecopyonread_variable_37:	�4
%read_13_disablecopyonread_variable_36:	�A
%read_14_disablecopyonread_variable_35:��A
%read_15_disablecopyonread_variable_34:��4
%read_16_disablecopyonread_variable_33:	�4
%read_17_disablecopyonread_variable_32:	�A
%read_18_disablecopyonread_variable_31:��A
%read_19_disablecopyonread_variable_30:��4
%read_20_disablecopyonread_variable_29:	�4
%read_21_disablecopyonread_variable_28:	�A
%read_22_disablecopyonread_variable_27:��A
%read_23_disablecopyonread_variable_26:��4
%read_24_disablecopyonread_variable_25:	�4
%read_25_disablecopyonread_variable_24:	�9
%read_26_disablecopyonread_variable_23:
��9
%read_27_disablecopyonread_variable_22:
��4
%read_28_disablecopyonread_variable_21:	�4
%read_29_disablecopyonread_variable_20:	�8
%read_30_disablecopyonread_variable_19:	�8
%read_31_disablecopyonread_variable_18:	�3
%read_32_disablecopyonread_variable_17:3
%read_33_disablecopyonread_variable_16:?
%read_34_disablecopyonread_variable_15:3
%read_35_disablecopyonread_variable_14:@
%read_36_disablecopyonread_variable_13:�4
%read_37_disablecopyonread_variable_12:	�A
%read_38_disablecopyonread_variable_11:��4
%read_39_disablecopyonread_variable_10:	�@
$read_40_disablecopyonread_variable_9:��3
$read_41_disablecopyonread_variable_8:	�@
$read_42_disablecopyonread_variable_7:��3
$read_43_disablecopyonread_variable_6:	�@
$read_44_disablecopyonread_variable_5:��3
$read_45_disablecopyonread_variable_4:	�8
$read_46_disablecopyonread_variable_3:
��3
$read_47_disablecopyonread_variable_2:	�7
$read_48_disablecopyonread_variable_1:	�0
"read_49_disablecopyonread_variable:
savev2_const
identity_101��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_49*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_49^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_48*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_48^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_47*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_47^Read_2/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_46*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_46^Read_3/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*&
_output_shapes
:i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_45*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_45^Read_4/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_44*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_44^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_43*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_43^Read_6/DisableCopyOnRead*'
_output_shapes
:�*
dtype0h
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:�n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:�i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_42*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_42^Read_7/DisableCopyOnRead*'
_output_shapes
:�*
dtype0h
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:�n
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*'
_output_shapes
:�i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_41*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_41^Read_8/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_40*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_40^Read_9/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_39*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_39^Read_10/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_38*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_38^Read_11/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_37*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_37^Read_12/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_36*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_36^Read_13/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_35*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_35^Read_14/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_34*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_34^Read_15/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_33*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_33^Read_16/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_32*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_32^Read_17/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_31*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_31^Read_18/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_30*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_30^Read_19/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_29*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_29^Read_20/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_28*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_28^Read_21/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_27*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_27^Read_22/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_26*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_26^Read_23/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_25*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_25^Read_24/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_24*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_24^Read_25/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_26/DisableCopyOnReadDisableCopyOnRead%read_26_disablecopyonread_variable_23*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp%read_26_disablecopyonread_variable_23^Read_26/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_variable_22*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_variable_22^Read_27/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_28/DisableCopyOnReadDisableCopyOnRead%read_28_disablecopyonread_variable_21*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp%read_28_disablecopyonread_variable_21^Read_28/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_29/DisableCopyOnReadDisableCopyOnRead%read_29_disablecopyonread_variable_20*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp%read_29_disablecopyonread_variable_20^Read_29/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_30/DisableCopyOnReadDisableCopyOnRead%read_30_disablecopyonread_variable_19*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp%read_30_disablecopyonread_variable_19^Read_30/DisableCopyOnRead*
_output_shapes
:	�*
dtype0a
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:	�k
Read_31/DisableCopyOnReadDisableCopyOnRead%read_31_disablecopyonread_variable_18*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp%read_31_disablecopyonread_variable_18^Read_31/DisableCopyOnRead*
_output_shapes
:	�*
dtype0a
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	�k
Read_32/DisableCopyOnReadDisableCopyOnRead%read_32_disablecopyonread_variable_17*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp%read_32_disablecopyonread_variable_17^Read_32/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_33/DisableCopyOnReadDisableCopyOnRead%read_33_disablecopyonread_variable_16*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp%read_33_disablecopyonread_variable_16^Read_33/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_34/DisableCopyOnReadDisableCopyOnRead%read_34_disablecopyonread_variable_15*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp%read_34_disablecopyonread_variable_15^Read_34/DisableCopyOnRead*&
_output_shapes
:*
dtype0h
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*&
_output_shapes
:m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:k
Read_35/DisableCopyOnReadDisableCopyOnRead%read_35_disablecopyonread_variable_14*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp%read_35_disablecopyonread_variable_14^Read_35/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_36/DisableCopyOnReadDisableCopyOnRead%read_36_disablecopyonread_variable_13*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp%read_36_disablecopyonread_variable_13^Read_36/DisableCopyOnRead*'
_output_shapes
:�*
dtype0i
Identity_72IdentityRead_36/ReadVariableOp:value:0*
T0*'
_output_shapes
:�n
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*'
_output_shapes
:�k
Read_37/DisableCopyOnReadDisableCopyOnRead%read_37_disablecopyonread_variable_12*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp%read_37_disablecopyonread_variable_12^Read_37/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_74IdentityRead_37/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_38/DisableCopyOnReadDisableCopyOnRead%read_38_disablecopyonread_variable_11*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp%read_38_disablecopyonread_variable_11^Read_38/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_76IdentityRead_38/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*(
_output_shapes
:��k
Read_39/DisableCopyOnReadDisableCopyOnRead%read_39_disablecopyonread_variable_10*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp%read_39_disablecopyonread_variable_10^Read_39/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_78IdentityRead_39/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_40/DisableCopyOnReadDisableCopyOnRead$read_40_disablecopyonread_variable_9*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp$read_40_disablecopyonread_variable_9^Read_40/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_80IdentityRead_40/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*(
_output_shapes
:��j
Read_41/DisableCopyOnReadDisableCopyOnRead$read_41_disablecopyonread_variable_8*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp$read_41_disablecopyonread_variable_8^Read_41/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_82IdentityRead_41/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_42/DisableCopyOnReadDisableCopyOnRead$read_42_disablecopyonread_variable_7*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp$read_42_disablecopyonread_variable_7^Read_42/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_84IdentityRead_42/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*(
_output_shapes
:��j
Read_43/DisableCopyOnReadDisableCopyOnRead$read_43_disablecopyonread_variable_6*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp$read_43_disablecopyonread_variable_6^Read_43/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_86IdentityRead_43/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_44/DisableCopyOnReadDisableCopyOnRead$read_44_disablecopyonread_variable_5*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp$read_44_disablecopyonread_variable_5^Read_44/DisableCopyOnRead*(
_output_shapes
:��*
dtype0j
Identity_88IdentityRead_44/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*(
_output_shapes
:��j
Read_45/DisableCopyOnReadDisableCopyOnRead$read_45_disablecopyonread_variable_4*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp$read_45_disablecopyonread_variable_4^Read_45/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_90IdentityRead_45/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_46/DisableCopyOnReadDisableCopyOnRead$read_46_disablecopyonread_variable_3*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp$read_46_disablecopyonread_variable_3^Read_46/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_92IdentityRead_46/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��j
Read_47/DisableCopyOnReadDisableCopyOnRead$read_47_disablecopyonread_variable_2*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp$read_47_disablecopyonread_variable_2^Read_47/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_94IdentityRead_47/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_48/DisableCopyOnReadDisableCopyOnRead$read_48_disablecopyonread_variable_1*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp$read_48_disablecopyonread_variable_1^Read_48/DisableCopyOnRead*
_output_shapes
:	�*
dtype0a
Identity_96IdentityRead_48/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Read_49/DisableCopyOnReadDisableCopyOnRead"read_49_disablecopyonread_variable*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp"read_49_disablecopyonread_variable^Read_49/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_98IdentityRead_49/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*�
value�B�3B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *A
dtypes7
523	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_100Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_101IdentityIdentity_100:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_101Identity_101:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_49:+'
%
_user_specified_nameVariable_48:+'
%
_user_specified_nameVariable_47:+'
%
_user_specified_nameVariable_46:+'
%
_user_specified_nameVariable_45:+'
%
_user_specified_nameVariable_44:+'
%
_user_specified_nameVariable_43:+'
%
_user_specified_nameVariable_42:+	'
%
_user_specified_nameVariable_41:+
'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_19:+ '
%
_user_specified_nameVariable_18:+!'
%
_user_specified_nameVariable_17:+"'
%
_user_specified_nameVariable_16:+#'
%
_user_specified_nameVariable_15:+$'
%
_user_specified_nameVariable_14:+%'
%
_user_specified_nameVariable_13:+&'
%
_user_specified_nameVariable_12:+''
%
_user_specified_nameVariable_11:+('
%
_user_specified_nameVariable_10:*)&
$
_user_specified_name
Variable_9:**&
$
_user_specified_name
Variable_8:*+&
$
_user_specified_name
Variable_7:*,&
$
_user_specified_name
Variable_6:*-&
$
_user_specified_name
Variable_5:*.&
$
_user_specified_name
Variable_4:*/&
$
_user_specified_name
Variable_3:*0&
$
_user_specified_name
Variable_2:*1&
$
_user_specified_name
Variable_1:(2$
"
_user_specified_name
Variable:=39

_output_shapes
: 

_user_specified_nameConst
��
�
"__inference__traced_restore_511765
file_prefix&
assignvariableop_variable_49:	 (
assignvariableop_1_variable_48: 8
assignvariableop_2_variable_47:8
assignvariableop_3_variable_46:,
assignvariableop_4_variable_45:,
assignvariableop_5_variable_44:9
assignvariableop_6_variable_43:�9
assignvariableop_7_variable_42:�-
assignvariableop_8_variable_41:	�-
assignvariableop_9_variable_40:	�;
assignvariableop_10_variable_39:��;
assignvariableop_11_variable_38:��.
assignvariableop_12_variable_37:	�.
assignvariableop_13_variable_36:	�;
assignvariableop_14_variable_35:��;
assignvariableop_15_variable_34:��.
assignvariableop_16_variable_33:	�.
assignvariableop_17_variable_32:	�;
assignvariableop_18_variable_31:��;
assignvariableop_19_variable_30:��.
assignvariableop_20_variable_29:	�.
assignvariableop_21_variable_28:	�;
assignvariableop_22_variable_27:��;
assignvariableop_23_variable_26:��.
assignvariableop_24_variable_25:	�.
assignvariableop_25_variable_24:	�3
assignvariableop_26_variable_23:
��3
assignvariableop_27_variable_22:
��.
assignvariableop_28_variable_21:	�.
assignvariableop_29_variable_20:	�2
assignvariableop_30_variable_19:	�2
assignvariableop_31_variable_18:	�-
assignvariableop_32_variable_17:-
assignvariableop_33_variable_16:9
assignvariableop_34_variable_15:-
assignvariableop_35_variable_14::
assignvariableop_36_variable_13:�.
assignvariableop_37_variable_12:	�;
assignvariableop_38_variable_11:��.
assignvariableop_39_variable_10:	�:
assignvariableop_40_variable_9:��-
assignvariableop_41_variable_8:	�:
assignvariableop_42_variable_7:��-
assignvariableop_43_variable_6:	�:
assignvariableop_44_variable_5:��-
assignvariableop_45_variable_4:	�2
assignvariableop_46_variable_3:
��-
assignvariableop_47_variable_2:	�1
assignvariableop_48_variable_1:	�*
assignvariableop_49_variable:
identity_51��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*�
value�B�3B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::*A
dtypes7
523	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_49Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_48Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_47Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_46Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_45Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_44Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_43Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_42Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_41Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_40Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_39Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_38Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_37Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_36Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_35Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_34Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_33Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_32Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_31Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_30Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_29Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_28Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_27Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_26Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_25Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_24Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_23Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_22Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_21Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_20Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_19Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_18Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_17Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_16Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_15Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variable_14Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_variable_13Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_variable_12Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_variable_11Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_variable_10Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_variable_9Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_variable_8Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_variable_7Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_variable_6Identity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_variable_5Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_variable_4Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_variable_3Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_variable_2Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_variable_1Identity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_variableIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �	
Identity_50Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_51IdentityIdentity_50:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_51Identity_51:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_49:+'
%
_user_specified_nameVariable_48:+'
%
_user_specified_nameVariable_47:+'
%
_user_specified_nameVariable_46:+'
%
_user_specified_nameVariable_45:+'
%
_user_specified_nameVariable_44:+'
%
_user_specified_nameVariable_43:+'
%
_user_specified_nameVariable_42:+	'
%
_user_specified_nameVariable_41:+
'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_19:+ '
%
_user_specified_nameVariable_18:+!'
%
_user_specified_nameVariable_17:+"'
%
_user_specified_nameVariable_16:+#'
%
_user_specified_nameVariable_15:+$'
%
_user_specified_nameVariable_14:+%'
%
_user_specified_nameVariable_13:+&'
%
_user_specified_nameVariable_12:+''
%
_user_specified_nameVariable_11:+('
%
_user_specified_nameVariable_10:*)&
$
_user_specified_name
Variable_9:**&
$
_user_specified_name
Variable_8:*+&
$
_user_specified_name
Variable_7:*,&
$
_user_specified_name
Variable_6:*-&
$
_user_specified_name
Variable_5:*.&
$
_user_specified_name
Variable_4:*/&
$
_user_specified_name
Variable_3:*0&
$
_user_specified_name
Variable_2:*1&
$
_user_specified_name
Variable_1:(2$
"
_user_specified_name
Variable"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
8
inputs.
serving_default_inputs:0   3
output_0'
StatefulPartitionedCall:0 tensorflow/serving/predict:�Z
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
trace_02�
"__inference_serving_default_510969�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
�   ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
-serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14"
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
.trace_02�
"__inference_serving_default_511084�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
�   z.trace_0
�
0
1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33"
trackable_list_wrapper
�
O0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 2adam/iteration
: 2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
"__inference_serving_default_510969inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
y
__inbound_nodes
`_outbound_nodes
a_losses
b	_loss_ids
c_losses_override"
_generic_user_object
�
O_kernel
Pbias
d_inbound_nodes
e_outbound_nodes
f_losses
g	_loss_ids
h_losses_override
i_build_shapes_dict"
_generic_user_object
�
Q_kernel
Rbias
j_inbound_nodes
k_outbound_nodes
l_losses
m	_loss_ids
n_losses_override
o_build_shapes_dict"
_generic_user_object
y
p_inbound_nodes
q_outbound_nodes
r_losses
s	_loss_ids
t_losses_override"
_generic_user_object
�
S_kernel
Tbias
u_inbound_nodes
v_outbound_nodes
w_losses
x	_loss_ids
y_losses_override
z_build_shapes_dict"
_generic_user_object
y
{_inbound_nodes
|_outbound_nodes
}_losses
~	_loss_ids
_losses_override"
_generic_user_object
�
U_kernel
Vbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
W_kernel
Xbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
Y_kernel
Zbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
[_kernel
\bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
]_kernel
^bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�B�
4__inference_signature_wrapper_serving_default_511007inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
"__inference_serving_default_511084inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
>:<2&adam/sequential_conv2d_kernel_momentum
>:<2&adam/sequential_conv2d_kernel_velocity
0:.2$adam/sequential_conv2d_bias_momentum
0:.2$adam/sequential_conv2d_bias_velocity
A:?�2(adam/sequential_conv2d_1_kernel_momentum
A:?�2(adam/sequential_conv2d_1_kernel_velocity
3:1�2&adam/sequential_conv2d_1_bias_momentum
3:1�2&adam/sequential_conv2d_1_bias_velocity
B:@��2(adam/sequential_conv2d_2_kernel_momentum
B:@��2(adam/sequential_conv2d_2_kernel_velocity
3:1�2&adam/sequential_conv2d_2_bias_momentum
3:1�2&adam/sequential_conv2d_2_bias_velocity
B:@��2(adam/sequential_conv2d_3_kernel_momentum
B:@��2(adam/sequential_conv2d_3_kernel_velocity
3:1�2&adam/sequential_conv2d_3_bias_momentum
3:1�2&adam/sequential_conv2d_3_bias_velocity
B:@��2(adam/sequential_conv2d_4_kernel_momentum
B:@��2(adam/sequential_conv2d_4_kernel_velocity
3:1�2&adam/sequential_conv2d_4_bias_momentum
3:1�2&adam/sequential_conv2d_4_bias_velocity
B:@��2(adam/sequential_conv2d_5_kernel_momentum
B:@��2(adam/sequential_conv2d_5_kernel_velocity
3:1�2&adam/sequential_conv2d_5_bias_momentum
3:1�2&adam/sequential_conv2d_5_bias_velocity
7:5
��2%adam/sequential_dense_kernel_momentum
7:5
��2%adam/sequential_dense_kernel_velocity
0:.�2#adam/sequential_dense_bias_momentum
0:.�2#adam/sequential_dense_bias_velocity
8:6	�2'adam/sequential_dense_1_kernel_momentum
8:6	�2'adam/sequential_dense_1_kernel_velocity
1:/2%adam/sequential_dense_1_bias_momentum
1:/2%adam/sequential_dense_1_bias_velocity
2:02sequential/conv2d/kernel
$:"2sequential/conv2d/bias
5:3�2sequential/conv2d_1/kernel
':%�2sequential/conv2d_1/bias
6:4��2sequential/conv2d_2/kernel
':%�2sequential/conv2d_2/bias
6:4��2sequential/conv2d_3/kernel
':%�2sequential/conv2d_3/bias
6:4��2sequential/conv2d_4/kernel
':%�2sequential/conv2d_4/bias
6:4��2sequential/conv2d_5/kernel
':%�2sequential/conv2d_5/bias
+:)
��2sequential/dense/kernel
$:"�2sequential/dense/bias
,:*	�2sequential/dense_1/kernel
%:#2sequential/dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
"__inference_serving_default_510969\OPQRSTUVWXYZ[\]^.�+
$�!
�
inputs   
� "�
unknown �
"__inference_serving_default_511084\OPQRSTUVWXYZ[\]^.�+
$�!
�
inputs   
� "�
unknown �
4__inference_signature_wrapper_serving_default_511007xOPQRSTUVWXYZ[\]^8�5
� 
.�+
)
inputs�
inputs   "*�'
%
output_0�
output_0 