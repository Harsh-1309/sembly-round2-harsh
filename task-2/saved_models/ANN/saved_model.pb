öÿ
öË
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.9.12v2.9.0-18-gd8ce9f9c3018÷¤

Adam/gru_3/gru_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_nameAdam/gru_3/gru_cell_3/bias/v

0Adam/gru_3/gru_cell_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_3/gru_cell_3/bias/v*
_output_shapes
:	*
dtype0
®
(Adam/gru_3/gru_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(Adam/gru_3/gru_cell_3/recurrent_kernel/v
§
<Adam/gru_3/gru_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_3/gru_cell_3/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

Adam/gru_3/gru_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/gru_3/gru_cell_3/kernel/v

2Adam/gru_3/gru_cell_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_3/gru_cell_3/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
: *
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes
:	 *
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/v
z
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v* 
_output_shapes
:
*
dtype0

Adam/gru_3/gru_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_nameAdam/gru_3/gru_cell_3/bias/m

0Adam/gru_3/gru_cell_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_3/gru_cell_3/bias/m*
_output_shapes
:	*
dtype0
®
(Adam/gru_3/gru_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*9
shared_name*(Adam/gru_3/gru_cell_3/recurrent_kernel/m
§
<Adam/gru_3/gru_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_3/gru_cell_3/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

Adam/gru_3/gru_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/gru_3/gru_cell_3/kernel/m

2Adam/gru_3/gru_cell_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_3/gru_cell_3/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
: *
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes
:	 *
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_12/bias/m
z
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m* 
_output_shapes
:
*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

gru_3/gru_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_namegru_3/gru_cell_3/bias

)gru_3/gru_cell_3/bias/Read/ReadVariableOpReadVariableOpgru_3/gru_cell_3/bias*
_output_shapes
:	*
dtype0
 
!gru_3/gru_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!gru_3/gru_cell_3/recurrent_kernel

5gru_3/gru_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_3/gru_cell_3/recurrent_kernel* 
_output_shapes
:
*
dtype0

gru_3/gru_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_namegru_3/gru_cell_3/kernel

+gru_3/gru_cell_3/kernel/Read/ReadVariableOpReadVariableOpgru_3/gru_cell_3/kernel*
_output_shapes
:	*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

: *
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
: *
dtype0
{
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 * 
shared_namedense_13/kernel
t
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes
:	 *
dtype0
s
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
l
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes	
:*
dtype0
|
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_12/kernel
u
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel* 
_output_shapes
:
*
dtype0

NoOpNoOp
C
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÊB
valueÀBB½B B¶B
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
¦
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
C
/0
01
12
3
4
%5
&6
-7
.8*
C
/0
01
12
3
4
%5
&6
-7
.8*
* 
°
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
7trace_0
8trace_1
9trace_2
:trace_3* 
6
;trace_0
<trace_1
=trace_2
>trace_3* 
* 
ø
?iter

@beta_1

Abeta_2
	Bdecay
Clearning_ratemm%m&m-m.m/m0m1mvv%v&v-v.v/v0v1v*

Dserving_default* 

/0
01
12*

/0
01
12*
* 


Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_3* 
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
* 
Ó
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator

/kernel
0recurrent_kernel
1bias*
* 

0
1*

0
1*
* 

Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

_trace_0* 

`trace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEgru_3/gru_cell_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_3/gru_cell_3/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_3/gru_cell_3/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

o0
p1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
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

/0
01
12*

/0
01
12*
* 

qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

vtrace_0
wtrace_1* 

xtrace_0
ytrace_1* 
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
8
z	variables
{	keras_api
	|total
	}count*
K
~	variables
	keras_api

total

count

_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 

|0
}1*

z	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

~	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_3/gru_cell_3/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_3/gru_cell_3/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_3/gru_cell_3/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_3/gru_cell_3/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/gru_3/gru_cell_3/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_3/gru_cell_3/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_gru_3_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
þ
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_3_inputgru_3/gru_cell_3/biasgru_3/gru_cell_3/kernel!gru_3/gru_cell_3/recurrent_kerneldense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_404297
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp+gru_3/gru_cell_3/kernel/Read/ReadVariableOp5gru_3/gru_cell_3/recurrent_kernel/Read/ReadVariableOp)gru_3/gru_cell_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp2Adam/gru_3/gru_cell_3/kernel/m/Read/ReadVariableOp<Adam/gru_3/gru_cell_3/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_3/gru_cell_3/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp2Adam/gru_3/gru_cell_3/kernel/v/Read/ReadVariableOp<Adam/gru_3/gru_cell_3/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_3/gru_cell_3/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_405656
¹
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasgru_3/gru_cell_3/kernel!gru_3/gru_cell_3/recurrent_kernelgru_3/gru_cell_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/gru_3/gru_cell_3/kernel/m(Adam/gru_3/gru_cell_3/recurrent_kernel/mAdam/gru_3/gru_cell_3/bias/mAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/gru_3/gru_cell_3/kernel/v(Adam/gru_3/gru_cell_3/recurrent_kernel/vAdam/gru_3/gru_cell_3/bias/v*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_405774äý
²E
µ	
gru_3_while_body_404408(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2'
#gru_3_while_gru_3_strided_slice_1_0c
_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0C
0gru_3_while_gru_cell_3_readvariableop_resource_0:	J
7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:	M
9gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0:

gru_3_while_identity
gru_3_while_identity_1
gru_3_while_identity_2
gru_3_while_identity_3
gru_3_while_identity_4%
!gru_3_while_gru_3_strided_slice_1a
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensorA
.gru_3_while_gru_cell_3_readvariableop_resource:	H
5gru_3_while_gru_cell_3_matmul_readvariableop_resource:	K
7gru_3_while_gru_cell_3_matmul_1_readvariableop_resource:
¢,gru_3/while/gru_cell_3/MatMul/ReadVariableOp¢.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp¢%gru_3/while/gru_cell_3/ReadVariableOp
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ä
/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0gru_3_while_placeholderFgru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
%gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
gru_3/while/gru_cell_3/unstackUnpack-gru_3/while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num¥
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0È
gru_3/while/gru_cell_3/MatMulMatMul6gru_3/while/TensorArrayV2Read/TensorListGetItem:item:04gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
gru_3/while/gru_cell_3/BiasAddBiasAdd'gru_3/while/gru_cell_3/MatMul:product:0'gru_3/while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
&gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿë
gru_3/while/gru_cell_3/splitSplit/gru_3/while/gru_cell_3/split/split_dim:output:0'gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitª
.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp9gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¯
gru_3/while/gru_cell_3/MatMul_1MatMulgru_3_while_placeholder_26gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 gru_3/while/gru_cell_3/BiasAdd_1BiasAdd)gru_3/while/gru_cell_3/MatMul_1:product:0'gru_3/while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿs
(gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¥
gru_3/while/gru_cell_3/split_1SplitV)gru_3/while/gru_cell_3/BiasAdd_1:output:0%gru_3/while/gru_cell_3/Const:output:01gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¦
gru_3/while/gru_cell_3/addAddV2%gru_3/while/gru_cell_3/split:output:0'gru_3/while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
gru_3/while/gru_cell_3/SigmoidSigmoidgru_3/while/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
gru_3/while/gru_cell_3/add_1AddV2%gru_3/while/gru_cell_3/split:output:1'gru_3/while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 gru_3/while/gru_cell_3/Sigmoid_1Sigmoid gru_3/while/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
gru_3/while/gru_cell_3/mulMul$gru_3/while/gru_cell_3/Sigmoid_1:y:0'gru_3/while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/while/gru_cell_3/add_2AddV2%gru_3/while/gru_cell_3/split:output:2gru_3/while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_3/while/gru_cell_3/ReluRelu gru_3/while/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/while/gru_cell_3/mul_1Mul"gru_3/while/gru_cell_3/Sigmoid:y:0gru_3_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_3/while/gru_cell_3/subSub%gru_3/while/gru_cell_3/sub/x:output:0"gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
gru_3/while/gru_cell_3/mul_2Mulgru_3/while/gru_cell_3/sub:z:0)gru_3/while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/while/gru_cell_3/add_3AddV2 gru_3/while/gru_cell_3/mul_1:z:0 gru_3/while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
6gru_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0gru_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_3_while_placeholder_1?gru_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0 gru_3/while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒS
gru_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_3/while/addAddV2gru_3_while_placeholdergru_3/while/add/y:output:0*
T0*
_output_shapes
: U
gru_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_3/while/add_1AddV2$gru_3_while_gru_3_while_loop_countergru_3/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_3/while/IdentityIdentitygru_3/while/add_1:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 
gru_3/while/Identity_1Identity*gru_3_while_gru_3_while_maximum_iterations^gru_3/while/NoOp*
T0*
_output_shapes
: k
gru_3/while/Identity_2Identitygru_3/while/add:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 
gru_3/while/Identity_3Identity@gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_3/while/NoOp*
T0*
_output_shapes
: 
gru_3/while/Identity_4Identity gru_3/while/gru_cell_3/add_3:z:0^gru_3/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
gru_3/while/NoOpNoOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp/^gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_3_while_gru_3_strided_slice_1#gru_3_while_gru_3_strided_slice_1_0"t
7gru_3_while_gru_cell_3_matmul_1_readvariableop_resource9gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0"p
5gru_3_while_gru_cell_3_matmul_readvariableop_resource7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"b
.gru_3_while_gru_cell_3_readvariableop_resource0gru_3_while_gru_cell_3_readvariableop_resource_0"5
gru_3_while_identitygru_3/while/Identity:output:0"9
gru_3_while_identity_1gru_3/while/Identity_1:output:0"9
gru_3_while_identity_2gru_3/while/Identity_2:output:0"9
gru_3_while_identity_3gru_3/while/Identity_3:output:0"9
gru_3_while_identity_4gru_3/while/Identity_4:output:0"À
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2\
,gru_3/while/gru_cell_3/MatMul/ReadVariableOp,gru_3/while/gru_cell_3/MatMul/ReadVariableOp2`
.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp2N
%gru_3/while/gru_cell_3/ReadVariableOp%gru_3/while/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

º
&__inference_gru_3_layer_call_fn_404706
inputs_0
unknown:	
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_403477p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ý
É
"__inference__traced_restore_405774
file_prefix4
 assignvariableop_dense_12_kernel:
/
 assignvariableop_1_dense_12_bias:	5
"assignvariableop_2_dense_13_kernel:	 .
 assignvariableop_3_dense_13_bias: 4
"assignvariableop_4_dense_14_kernel: .
 assignvariableop_5_dense_14_bias:=
*assignvariableop_6_gru_3_gru_cell_3_kernel:	H
4assignvariableop_7_gru_3_gru_cell_3_recurrent_kernel:
;
(assignvariableop_8_gru_3_gru_cell_3_bias:	&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: >
*assignvariableop_18_adam_dense_12_kernel_m:
7
(assignvariableop_19_adam_dense_12_bias_m:	=
*assignvariableop_20_adam_dense_13_kernel_m:	 6
(assignvariableop_21_adam_dense_13_bias_m: <
*assignvariableop_22_adam_dense_14_kernel_m: 6
(assignvariableop_23_adam_dense_14_bias_m:E
2assignvariableop_24_adam_gru_3_gru_cell_3_kernel_m:	P
<assignvariableop_25_adam_gru_3_gru_cell_3_recurrent_kernel_m:
C
0assignvariableop_26_adam_gru_3_gru_cell_3_bias_m:	>
*assignvariableop_27_adam_dense_12_kernel_v:
7
(assignvariableop_28_adam_dense_12_bias_v:	=
*assignvariableop_29_adam_dense_13_kernel_v:	 6
(assignvariableop_30_adam_dense_13_bias_v: <
*assignvariableop_31_adam_dense_14_kernel_v: 6
(assignvariableop_32_adam_dense_14_bias_v:E
2assignvariableop_33_adam_gru_3_gru_cell_3_kernel_v:	P
<assignvariableop_34_adam_gru_3_gru_cell_3_recurrent_kernel_v:
C
0assignvariableop_35_adam_gru_3_gru_cell_3_bias_v:	
identity_37¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*®
value¤B¡%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHº
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ú
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ª
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_12_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_13_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_13_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_14_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_14_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp*assignvariableop_6_gru_3_gru_cell_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_7AssignVariableOp4assignvariableop_7_gru_3_gru_cell_3_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp(assignvariableop_8_gru_3_gru_cell_3_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_12_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_12_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_13_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_13_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_14_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_14_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_gru_3_gru_cell_3_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_25AssignVariableOp<assignvariableop_25_adam_gru_3_gru_cell_3_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_gru_3_gru_cell_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_12_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_12_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_13_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_13_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_14_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_14_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_gru_3_gru_cell_3_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_34AssignVariableOp<assignvariableop_34_adam_gru_3_gru_cell_3_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_35AssignVariableOp0assignvariableop_35_adam_gru_3_gru_cell_3_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ç
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ü
ª
while_cond_404019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_404019___redundant_placeholder04
0while_while_cond_404019___redundant_placeholder14
0while_while_cond_404019___redundant_placeholder24
0while_while_cond_404019___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
!
°
while_body_403596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_3_403618_0:	,
while_gru_cell_3_403620_0:	-
while_gru_cell_3_403622_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_3_403618:	*
while_gru_cell_3_403620:	+
while_gru_cell_3_403622:
¢(while/gru_cell_3/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/gru_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3_403618_0while_gru_cell_3_403620_0while_gru_cell_3_403622_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403543r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:01while/gru_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity1while/gru_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw

while/NoOpNoOp)^while/gru_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "4
while_gru_cell_3_403618while_gru_cell_3_403618_0"4
while_gru_cell_3_403620while_gru_cell_3_403620_0"4
while_gru_cell_3_403622while_gru_cell_3_403622_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/gru_cell_3/StatefulPartitionedCall(while/gru_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
é=

while_body_405114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_3_readvariableop_resource_0:	D
1while_gru_cell_3_matmul_readvariableop_resource_0:	G
3while_gru_cell_3_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_3_readvariableop_resource:	B
/while_gru_cell_3_matmul_readvariableop_resource:	E
1while_gru_cell_3_matmul_1_readvariableop_resource:
¢&while/gru_cell_3/MatMul/ReadVariableOp¢(while/gru_cell_3/MatMul_1/ReadVariableOp¢while/gru_cell_3/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_3/unstackUnpack'while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¶
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0!while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_20while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell_3/BiasAdd_1BiasAdd#while/gru_cell_3/MatMul_1:product:0!while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/split_1SplitV#while/gru_cell_3/BiasAdd_1:output:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0!while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
while/gru_cell_3/ReluReluwhile/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0#while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ë
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ

while/NoOpNoOp'^while/gru_cell_3/MatMul/ReadVariableOp)^while/gru_cell_3/MatMul_1/ReadVariableOp ^while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_3_matmul_1_readvariableop_resource3while_gru_cell_3_matmul_1_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2T
(while/gru_cell_3/MatMul_1/ReadVariableOp(while/gru_cell_3/MatMul_1/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


ê
-__inference_sequential_4_layer_call_fn_403912
gru_3_input
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallgru_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_403891o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_3_input


H__inference_sequential_4_layer_call_and_return_conditional_losses_404170

inputs
gru_3_404147:	
gru_3_404149:	 
gru_3_404151:
#
dense_12_404154:

dense_12_404156:	"
dense_13_404159:	 
dense_13_404161: !
dense_14_404164: 
dense_14_404166:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall¢gru_3/StatefulPartitionedCallø
gru_3/StatefulPartitionedCallStatefulPartitionedCallinputsgru_3_404147gru_3_404149gru_3_404151*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_404110
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0dense_12_404154dense_12_404156*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_403850
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_404159dense_13_404161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_403867
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_404164dense_14_404166*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_403884x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^gru_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
çM

A__inference_gru_3_layer_call_and_return_conditional_losses_403831

inputs5
"gru_cell_3_readvariableop_resource:	<
)gru_cell_3_matmul_readvariableop_resource:	?
+gru_cell_3_matmul_1_readvariableop_resource:

identity¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0w
gru_cell_3/unstackUnpack!gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell_3/MatMulMatMulstrided_slice_2:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÇ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_3/MatMul_1MatMulzeros:output:0*gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAdd_1BiasAddgru_cell_3/MatMul_1:product:0gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿg
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
gru_cell_3/split_1SplitVgru_cell_3/BiasAdd_1:output:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell_3/ReluRelugru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_3_readvariableop_resource)gru_cell_3_matmul_readvariableop_resource+gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_403741*
condR
while_cond_403740*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
çM

A__inference_gru_3_layer_call_and_return_conditional_losses_405359

inputs5
"gru_cell_3_readvariableop_resource:	<
)gru_cell_3_matmul_readvariableop_resource:	?
+gru_cell_3_matmul_1_readvariableop_resource:

identity¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0w
gru_cell_3/unstackUnpack!gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell_3/MatMulMatMulstrided_slice_2:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÇ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_3/MatMul_1MatMulzeros:output:0*gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAdd_1BiasAddgru_cell_3/MatMul_1:product:0gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿg
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
gru_cell_3/split_1SplitVgru_cell_3/BiasAdd_1:output:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell_3/ReluRelugru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_3_readvariableop_resource)gru_cell_3_matmul_readvariableop_resource+gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_405269*
condR
while_cond_405268*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸n
Ù
H__inference_sequential_4_layer_call_and_return_conditional_losses_404695

inputs;
(gru_3_gru_cell_3_readvariableop_resource:	B
/gru_3_gru_cell_3_matmul_readvariableop_resource:	E
1gru_3_gru_cell_3_matmul_1_readvariableop_resource:
;
'dense_12_matmul_readvariableop_resource:
7
(dense_12_biasadd_readvariableop_resource:	:
'dense_13_matmul_readvariableop_resource:	 6
(dense_13_biasadd_readvariableop_resource: 9
'dense_14_matmul_readvariableop_resource: 6
(dense_14_biasadd_readvariableop_resource:
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp¢&gru_3/gru_cell_3/MatMul/ReadVariableOp¢(gru_3/gru_cell_3/MatMul_1/ReadVariableOp¢gru_3/gru_cell_3/ReadVariableOp¢gru_3/whileA
gru_3/ShapeShapeinputs*
T0*
_output_shapes
:c
gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
gru_3/strided_sliceStridedSlicegru_3/Shape:output:0"gru_3/strided_slice/stack:output:0$gru_3/strided_slice/stack_1:output:0$gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
gru_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
gru_3/zeros/packedPackgru_3/strided_slice:output:0gru_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
gru_3/zerosFillgru_3/zeros/packed:output:0gru_3/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
gru_3/transpose	Transposeinputsgru_3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
gru_3/Shape_1Shapegru_3/transpose:y:0*
T0*
_output_shapes
:e
gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
gru_3/strided_slice_1StridedSlicegru_3/Shape_1:output:0$gru_3/strided_slice_1/stack:output:0&gru_3/strided_slice_1/stack_1:output:0&gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
gru_3/TensorArrayV2TensorListReserve*gru_3/TensorArrayV2/element_shape:output:0gru_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ò
-gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_3/transpose:y:0Dgru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru_3/strided_slice_2StridedSlicegru_3/transpose:y:0$gru_3/strided_slice_2/stack:output:0&gru_3/strided_slice_2/stack_1:output:0&gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
gru_3/gru_cell_3/ReadVariableOpReadVariableOp(gru_3_gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_3/gru_cell_3/unstackUnpack'gru_3/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp/gru_3_gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¤
gru_3/gru_cell_3/MatMulMatMulgru_3/strided_slice_2:output:0.gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/BiasAddBiasAdd!gru_3/gru_cell_3/MatMul:product:0!gru_3/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
gru_3/gru_cell_3/splitSplit)gru_3/gru_cell_3/split/split_dim:output:0!gru_3/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_3/gru_cell_3/MatMul_1MatMulgru_3/zeros:output:00gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru_3/gru_cell_3/BiasAdd_1BiasAdd#gru_3/gru_cell_3/MatMul_1:product:0!gru_3/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/split_1SplitV#gru_3/gru_cell_3/BiasAdd_1:output:0gru_3/gru_cell_3/Const:output:0+gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_3/gru_cell_3/addAddV2gru_3/gru_cell_3/split:output:0!gru_3/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gru_3/gru_cell_3/SigmoidSigmoidgru_3/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/add_1AddV2gru_3/gru_cell_3/split:output:1!gru_3/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
gru_3/gru_cell_3/Sigmoid_1Sigmoidgru_3/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/mulMulgru_3/gru_cell_3/Sigmoid_1:y:0!gru_3/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/add_2AddV2gru_3/gru_cell_3/split:output:2gru_3/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
gru_3/gru_cell_3/ReluRelugru_3/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/mul_1Mulgru_3/gru_cell_3/Sigmoid:y:0gru_3/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_3/gru_cell_3/subSubgru_3/gru_cell_3/sub/x:output:0gru_3/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/mul_2Mulgru_3/gru_cell_3/sub:z:0#gru_3/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/add_3AddV2gru_3/gru_cell_3/mul_1:z:0gru_3/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   d
"gru_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
gru_3/TensorArrayV2_1TensorListReserve,gru_3/TensorArrayV2_1/element_shape:output:0+gru_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

gru_3/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
gru_3/whileWhile!gru_3/while/loop_counter:output:0'gru_3/while/maximum_iterations:output:0gru_3/time:output:0gru_3/TensorArrayV2_1:handle:0gru_3/zeros:output:0gru_3/strided_slice_1:output:0=gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_3_gru_cell_3_readvariableop_resource/gru_3_gru_cell_3_matmul_readvariableop_resource1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_3_while_body_404584*#
condR
gru_3_while_cond_404583*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
6gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   é
(gru_3/TensorArrayV2Stack/TensorListStackTensorListStackgru_3/while:output:3?gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsn
gru_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
gru_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
gru_3/strided_slice_3StridedSlice1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0$gru_3/strided_slice_3/stack:output:0&gru_3/strided_slice_3/stack_1:output:0&gru_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskk
gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ©
gru_3/transpose_1	Transpose1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_12/MatMulMatMulgru_3/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_14/SigmoidSigmoiddense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitydense_14/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp^gru_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2P
&gru_3/gru_cell_3/MatMul/ReadVariableOp&gru_3/gru_cell_3/MatMul/ReadVariableOp2T
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp(gru_3/gru_cell_3/MatMul_1/ReadVariableOp2B
gru_3/gru_cell_3/ReadVariableOpgru_3/gru_cell_3/ReadVariableOp2
gru_3/whilegru_3/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é=

while_body_404020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_3_readvariableop_resource_0:	D
1while_gru_cell_3_matmul_readvariableop_resource_0:	G
3while_gru_cell_3_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_3_readvariableop_resource:	B
/while_gru_cell_3_matmul_readvariableop_resource:	E
1while_gru_cell_3_matmul_1_readvariableop_resource:
¢&while/gru_cell_3/MatMul/ReadVariableOp¢(while/gru_cell_3/MatMul_1/ReadVariableOp¢while/gru_cell_3/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_3/unstackUnpack'while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¶
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0!while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_20while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell_3/BiasAdd_1BiasAdd#while/gru_cell_3/MatMul_1:product:0!while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/split_1SplitV#while/gru_cell_3/BiasAdd_1:output:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0!while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
while/gru_cell_3/ReluReluwhile/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0#while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ë
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ

while/NoOpNoOp'^while/gru_cell_3/MatMul/ReadVariableOp)^while/gru_cell_3/MatMul_1/ReadVariableOp ^while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_3_matmul_1_readvariableop_resource3while_gru_cell_3_matmul_1_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2T
(while/gru_cell_3/MatMul_1/ReadVariableOp(while/gru_cell_3/MatMul_1/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
²E
µ	
gru_3_while_body_404584(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2'
#gru_3_while_gru_3_strided_slice_1_0c
_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0C
0gru_3_while_gru_cell_3_readvariableop_resource_0:	J
7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:	M
9gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0:

gru_3_while_identity
gru_3_while_identity_1
gru_3_while_identity_2
gru_3_while_identity_3
gru_3_while_identity_4%
!gru_3_while_gru_3_strided_slice_1a
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensorA
.gru_3_while_gru_cell_3_readvariableop_resource:	H
5gru_3_while_gru_cell_3_matmul_readvariableop_resource:	K
7gru_3_while_gru_cell_3_matmul_1_readvariableop_resource:
¢,gru_3/while/gru_cell_3/MatMul/ReadVariableOp¢.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp¢%gru_3/while/gru_cell_3/ReadVariableOp
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ä
/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0gru_3_while_placeholderFgru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
%gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
gru_3/while/gru_cell_3/unstackUnpack-gru_3/while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num¥
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0È
gru_3/while/gru_cell_3/MatMulMatMul6gru_3/while/TensorArrayV2Read/TensorListGetItem:item:04gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
gru_3/while/gru_cell_3/BiasAddBiasAdd'gru_3/while/gru_cell_3/MatMul:product:0'gru_3/while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
&gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿë
gru_3/while/gru_cell_3/splitSplit/gru_3/while/gru_cell_3/split/split_dim:output:0'gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitª
.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp9gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¯
gru_3/while/gru_cell_3/MatMul_1MatMulgru_3_while_placeholder_26gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 gru_3/while/gru_cell_3/BiasAdd_1BiasAdd)gru_3/while/gru_cell_3/MatMul_1:product:0'gru_3/while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿs
(gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¥
gru_3/while/gru_cell_3/split_1SplitV)gru_3/while/gru_cell_3/BiasAdd_1:output:0%gru_3/while/gru_cell_3/Const:output:01gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¦
gru_3/while/gru_cell_3/addAddV2%gru_3/while/gru_cell_3/split:output:0'gru_3/while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
gru_3/while/gru_cell_3/SigmoidSigmoidgru_3/while/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
gru_3/while/gru_cell_3/add_1AddV2%gru_3/while/gru_cell_3/split:output:1'gru_3/while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 gru_3/while/gru_cell_3/Sigmoid_1Sigmoid gru_3/while/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
gru_3/while/gru_cell_3/mulMul$gru_3/while/gru_cell_3/Sigmoid_1:y:0'gru_3/while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/while/gru_cell_3/add_2AddV2%gru_3/while/gru_cell_3/split:output:2gru_3/while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_3/while/gru_cell_3/ReluRelu gru_3/while/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/while/gru_cell_3/mul_1Mul"gru_3/while/gru_cell_3/Sigmoid:y:0gru_3_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_3/while/gru_cell_3/subSub%gru_3/while/gru_cell_3/sub/x:output:0"gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
gru_3/while/gru_cell_3/mul_2Mulgru_3/while/gru_cell_3/sub:z:0)gru_3/while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/while/gru_cell_3/add_3AddV2 gru_3/while/gru_cell_3/mul_1:z:0 gru_3/while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
6gru_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0gru_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_3_while_placeholder_1?gru_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0 gru_3/while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒS
gru_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_3/while/addAddV2gru_3_while_placeholdergru_3/while/add/y:output:0*
T0*
_output_shapes
: U
gru_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_3/while/add_1AddV2$gru_3_while_gru_3_while_loop_countergru_3/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_3/while/IdentityIdentitygru_3/while/add_1:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 
gru_3/while/Identity_1Identity*gru_3_while_gru_3_while_maximum_iterations^gru_3/while/NoOp*
T0*
_output_shapes
: k
gru_3/while/Identity_2Identitygru_3/while/add:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 
gru_3/while/Identity_3Identity@gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_3/while/NoOp*
T0*
_output_shapes
: 
gru_3/while/Identity_4Identity gru_3/while/gru_cell_3/add_3:z:0^gru_3/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
gru_3/while/NoOpNoOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp/^gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_3_while_gru_3_strided_slice_1#gru_3_while_gru_3_strided_slice_1_0"t
7gru_3_while_gru_cell_3_matmul_1_readvariableop_resource9gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0"p
5gru_3_while_gru_cell_3_matmul_readvariableop_resource7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"b
.gru_3_while_gru_cell_3_readvariableop_resource0gru_3_while_gru_cell_3_readvariableop_resource_0"5
gru_3_while_identitygru_3/while/Identity:output:0"9
gru_3_while_identity_1gru_3/while/Identity_1:output:0"9
gru_3_while_identity_2gru_3/while/Identity_2:output:0"9
gru_3_while_identity_3gru_3/while/Identity_3:output:0"9
gru_3_while_identity_4gru_3/while/Identity_4:output:0"À
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2\
,gru_3/while/gru_cell_3/MatMul/ReadVariableOp,gru_3/while/gru_cell_3/MatMul/ReadVariableOp2`
.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp.gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp2N
%gru_3/while/gru_cell_3/ReadVariableOp%gru_3/while/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ü
ª
while_cond_403411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_403411___redundant_placeholder04
0while_while_cond_403411___redundant_placeholder14
0while_while_cond_403411___redundant_placeholder24
0while_while_cond_403411___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
éU
»
$sequential_4_gru_3_while_body_403217B
>sequential_4_gru_3_while_sequential_4_gru_3_while_loop_counterH
Dsequential_4_gru_3_while_sequential_4_gru_3_while_maximum_iterations(
$sequential_4_gru_3_while_placeholder*
&sequential_4_gru_3_while_placeholder_1*
&sequential_4_gru_3_while_placeholder_2A
=sequential_4_gru_3_while_sequential_4_gru_3_strided_slice_1_0}
ysequential_4_gru_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_3_tensorarrayunstack_tensorlistfromtensor_0P
=sequential_4_gru_3_while_gru_cell_3_readvariableop_resource_0:	W
Dsequential_4_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:	Z
Fsequential_4_gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0:
%
!sequential_4_gru_3_while_identity'
#sequential_4_gru_3_while_identity_1'
#sequential_4_gru_3_while_identity_2'
#sequential_4_gru_3_while_identity_3'
#sequential_4_gru_3_while_identity_4?
;sequential_4_gru_3_while_sequential_4_gru_3_strided_slice_1{
wsequential_4_gru_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_3_tensorarrayunstack_tensorlistfromtensorN
;sequential_4_gru_3_while_gru_cell_3_readvariableop_resource:	U
Bsequential_4_gru_3_while_gru_cell_3_matmul_readvariableop_resource:	X
Dsequential_4_gru_3_while_gru_cell_3_matmul_1_readvariableop_resource:
¢9sequential_4/gru_3/while/gru_cell_3/MatMul/ReadVariableOp¢;sequential_4/gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp¢2sequential_4/gru_3/while/gru_cell_3/ReadVariableOp
Jsequential_4/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
<sequential_4/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemysequential_4_gru_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_3_tensorarrayunstack_tensorlistfromtensor_0$sequential_4_gru_3_while_placeholderSsequential_4/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0±
2sequential_4/gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp=sequential_4_gru_3_while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0©
+sequential_4/gru_3/while/gru_cell_3/unstackUnpack:sequential_4/gru_3/while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num¿
9sequential_4/gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOpDsequential_4_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ï
*sequential_4/gru_3/while/gru_cell_3/MatMulMatMulCsequential_4/gru_3/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential_4/gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
+sequential_4/gru_3/while/gru_cell_3/BiasAddBiasAdd4sequential_4/gru_3/while/gru_cell_3/MatMul:product:04sequential_4/gru_3/while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
3sequential_4/gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
)sequential_4/gru_3/while/gru_cell_3/splitSplit<sequential_4/gru_3/while/gru_cell_3/split/split_dim:output:04sequential_4/gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitÄ
;sequential_4/gru_3/while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOpFsequential_4_gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
,sequential_4/gru_3/while/gru_cell_3/MatMul_1MatMul&sequential_4_gru_3_while_placeholder_2Csequential_4/gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
-sequential_4/gru_3/while/gru_cell_3/BiasAdd_1BiasAdd6sequential_4/gru_3/while/gru_cell_3/MatMul_1:product:04sequential_4/gru_3/while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
)sequential_4/gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ
5sequential_4/gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
+sequential_4/gru_3/while/gru_cell_3/split_1SplitV6sequential_4/gru_3/while/gru_cell_3/BiasAdd_1:output:02sequential_4/gru_3/while/gru_cell_3/Const:output:0>sequential_4/gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitÍ
'sequential_4/gru_3/while/gru_cell_3/addAddV22sequential_4/gru_3/while/gru_cell_3/split:output:04sequential_4/gru_3/while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_4/gru_3/while/gru_cell_3/SigmoidSigmoid+sequential_4/gru_3/while/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
)sequential_4/gru_3/while/gru_cell_3/add_1AddV22sequential_4/gru_3/while/gru_cell_3/split:output:14sequential_4/gru_3/while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-sequential_4/gru_3/while/gru_cell_3/Sigmoid_1Sigmoid-sequential_4/gru_3/while/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
'sequential_4/gru_3/while/gru_cell_3/mulMul1sequential_4/gru_3/while/gru_cell_3/Sigmoid_1:y:04sequential_4/gru_3/while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
)sequential_4/gru_3/while/gru_cell_3/add_2AddV22sequential_4/gru_3/while/gru_cell_3/split:output:2+sequential_4/gru_3/while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential_4/gru_3/while/gru_cell_3/ReluRelu-sequential_4/gru_3/while/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
)sequential_4/gru_3/while/gru_cell_3/mul_1Mul/sequential_4/gru_3/while/gru_cell_3/Sigmoid:y:0&sequential_4_gru_3_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)sequential_4/gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Æ
'sequential_4/gru_3/while/gru_cell_3/subSub2sequential_4/gru_3/while/gru_cell_3/sub/x:output:0/sequential_4/gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
)sequential_4/gru_3/while/gru_cell_3/mul_2Mul+sequential_4/gru_3/while/gru_cell_3/sub:z:06sequential_4/gru_3/while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
)sequential_4/gru_3/while/gru_cell_3/add_3AddV2-sequential_4/gru_3/while/gru_cell_3/mul_1:z:0-sequential_4/gru_3/while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Csequential_4/gru_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ·
=sequential_4/gru_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&sequential_4_gru_3_while_placeholder_1Lsequential_4/gru_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0-sequential_4/gru_3/while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒ`
sequential_4/gru_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_4/gru_3/while/addAddV2$sequential_4_gru_3_while_placeholder'sequential_4/gru_3/while/add/y:output:0*
T0*
_output_shapes
: b
 sequential_4/gru_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :³
sequential_4/gru_3/while/add_1AddV2>sequential_4_gru_3_while_sequential_4_gru_3_while_loop_counter)sequential_4/gru_3/while/add_1/y:output:0*
T0*
_output_shapes
: 
!sequential_4/gru_3/while/IdentityIdentity"sequential_4/gru_3/while/add_1:z:0^sequential_4/gru_3/while/NoOp*
T0*
_output_shapes
: ¶
#sequential_4/gru_3/while/Identity_1IdentityDsequential_4_gru_3_while_sequential_4_gru_3_while_maximum_iterations^sequential_4/gru_3/while/NoOp*
T0*
_output_shapes
: 
#sequential_4/gru_3/while/Identity_2Identity sequential_4/gru_3/while/add:z:0^sequential_4/gru_3/while/NoOp*
T0*
_output_shapes
: ¿
#sequential_4/gru_3/while/Identity_3IdentityMsequential_4/gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_4/gru_3/while/NoOp*
T0*
_output_shapes
: ±
#sequential_4/gru_3/while/Identity_4Identity-sequential_4/gru_3/while/gru_cell_3/add_3:z:0^sequential_4/gru_3/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_4/gru_3/while/NoOpNoOp:^sequential_4/gru_3/while/gru_cell_3/MatMul/ReadVariableOp<^sequential_4/gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp3^sequential_4/gru_3/while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Dsequential_4_gru_3_while_gru_cell_3_matmul_1_readvariableop_resourceFsequential_4_gru_3_while_gru_cell_3_matmul_1_readvariableop_resource_0"
Bsequential_4_gru_3_while_gru_cell_3_matmul_readvariableop_resourceDsequential_4_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"|
;sequential_4_gru_3_while_gru_cell_3_readvariableop_resource=sequential_4_gru_3_while_gru_cell_3_readvariableop_resource_0"O
!sequential_4_gru_3_while_identity*sequential_4/gru_3/while/Identity:output:0"S
#sequential_4_gru_3_while_identity_1,sequential_4/gru_3/while/Identity_1:output:0"S
#sequential_4_gru_3_while_identity_2,sequential_4/gru_3/while/Identity_2:output:0"S
#sequential_4_gru_3_while_identity_3,sequential_4/gru_3/while/Identity_3:output:0"S
#sequential_4_gru_3_while_identity_4,sequential_4/gru_3/while/Identity_4:output:0"|
;sequential_4_gru_3_while_sequential_4_gru_3_strided_slice_1=sequential_4_gru_3_while_sequential_4_gru_3_strided_slice_1_0"ô
wsequential_4_gru_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_3_tensorarrayunstack_tensorlistfromtensorysequential_4_gru_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2v
9sequential_4/gru_3/while/gru_cell_3/MatMul/ReadVariableOp9sequential_4/gru_3/while/gru_cell_3/MatMul/ReadVariableOp2z
;sequential_4/gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp;sequential_4/gru_3/while/gru_cell_3/MatMul_1/ReadVariableOp2h
2sequential_4/gru_3/while/gru_cell_3/ReadVariableOp2sequential_4/gru_3/while/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

º
&__inference_gru_3_layer_call_fn_404717
inputs_0
unknown:	
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_403661p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
N

A__inference_gru_3_layer_call_and_return_conditional_losses_405049
inputs_05
"gru_cell_3_readvariableop_resource:	<
)gru_cell_3_matmul_readvariableop_resource:	?
+gru_cell_3_matmul_1_readvariableop_resource:

identity¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0w
gru_cell_3/unstackUnpack!gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell_3/MatMulMatMulstrided_slice_2:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÇ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_3/MatMul_1MatMulzeros:output:0*gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAdd_1BiasAddgru_cell_3/MatMul_1:product:0gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿg
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
gru_cell_3/split_1SplitVgru_cell_3/BiasAdd_1:output:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell_3/ReluRelugru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_3_readvariableop_resource)gru_cell_3_matmul_readvariableop_resource+gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_404959*
condR
while_cond_404958*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¨
Û
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405486

inputs
states_0*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
¸n
Ù
H__inference_sequential_4_layer_call_and_return_conditional_losses_404519

inputs;
(gru_3_gru_cell_3_readvariableop_resource:	B
/gru_3_gru_cell_3_matmul_readvariableop_resource:	E
1gru_3_gru_cell_3_matmul_1_readvariableop_resource:
;
'dense_12_matmul_readvariableop_resource:
7
(dense_12_biasadd_readvariableop_resource:	:
'dense_13_matmul_readvariableop_resource:	 6
(dense_13_biasadd_readvariableop_resource: 9
'dense_14_matmul_readvariableop_resource: 6
(dense_14_biasadd_readvariableop_resource:
identity¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp¢&gru_3/gru_cell_3/MatMul/ReadVariableOp¢(gru_3/gru_cell_3/MatMul_1/ReadVariableOp¢gru_3/gru_cell_3/ReadVariableOp¢gru_3/whileA
gru_3/ShapeShapeinputs*
T0*
_output_shapes
:c
gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
gru_3/strided_sliceStridedSlicegru_3/Shape:output:0"gru_3/strided_slice/stack:output:0$gru_3/strided_slice/stack_1:output:0$gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
gru_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
gru_3/zeros/packedPackgru_3/strided_slice:output:0gru_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
gru_3/zerosFillgru_3/zeros/packed:output:0gru_3/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
gru_3/transpose	Transposeinputsgru_3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
gru_3/Shape_1Shapegru_3/transpose:y:0*
T0*
_output_shapes
:e
gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
gru_3/strided_slice_1StridedSlicegru_3/Shape_1:output:0$gru_3/strided_slice_1/stack:output:0&gru_3/strided_slice_1/stack_1:output:0&gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
gru_3/TensorArrayV2TensorListReserve*gru_3/TensorArrayV2/element_shape:output:0gru_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ò
-gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_3/transpose:y:0Dgru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru_3/strided_slice_2StridedSlicegru_3/transpose:y:0$gru_3/strided_slice_2/stack:output:0&gru_3/strided_slice_2/stack_1:output:0&gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
gru_3/gru_cell_3/ReadVariableOpReadVariableOp(gru_3_gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_3/gru_cell_3/unstackUnpack'gru_3/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp/gru_3_gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¤
gru_3/gru_cell_3/MatMulMatMulgru_3/strided_slice_2:output:0.gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/BiasAddBiasAdd!gru_3/gru_cell_3/MatMul:product:0!gru_3/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
gru_3/gru_cell_3/splitSplit)gru_3/gru_cell_3/split/split_dim:output:0!gru_3/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_3/gru_cell_3/MatMul_1MatMulgru_3/zeros:output:00gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gru_3/gru_cell_3/BiasAdd_1BiasAdd#gru_3/gru_cell_3/MatMul_1:product:0!gru_3/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/split_1SplitV#gru_3/gru_cell_3/BiasAdd_1:output:0gru_3/gru_cell_3/Const:output:0+gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_3/gru_cell_3/addAddV2gru_3/gru_cell_3/split:output:0!gru_3/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gru_3/gru_cell_3/SigmoidSigmoidgru_3/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/add_1AddV2gru_3/gru_cell_3/split:output:1!gru_3/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
gru_3/gru_cell_3/Sigmoid_1Sigmoidgru_3/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/mulMulgru_3/gru_cell_3/Sigmoid_1:y:0!gru_3/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/add_2AddV2gru_3/gru_cell_3/split:output:2gru_3/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
gru_3/gru_cell_3/ReluRelugru_3/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/mul_1Mulgru_3/gru_cell_3/Sigmoid:y:0gru_3/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_3/gru_cell_3/subSubgru_3/gru_cell_3/sub/x:output:0gru_3/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/mul_2Mulgru_3/gru_cell_3/sub:z:0#gru_3/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_3/gru_cell_3/add_3AddV2gru_3/gru_cell_3/mul_1:z:0gru_3/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
#gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   d
"gru_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
gru_3/TensorArrayV2_1TensorListReserve,gru_3/TensorArrayV2_1/element_shape:output:0+gru_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

gru_3/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
gru_3/whileWhile!gru_3/while/loop_counter:output:0'gru_3/while/maximum_iterations:output:0gru_3/time:output:0gru_3/TensorArrayV2_1:handle:0gru_3/zeros:output:0gru_3/strided_slice_1:output:0=gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_3_gru_cell_3_readvariableop_resource/gru_3_gru_cell_3_matmul_readvariableop_resource1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_3_while_body_404408*#
condR
gru_3_while_cond_404407*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
6gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   é
(gru_3/TensorArrayV2Stack/TensorListStackTensorListStackgru_3/while:output:3?gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsn
gru_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
gru_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
gru_3/strided_slice_3StridedSlice1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0$gru_3/strided_slice_3/stack:output:0&gru_3/strided_slice_3/stack_1:output:0&gru_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskk
gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ©
gru_3/transpose_1	Transpose1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_12/MatMulMatMulgru_3/strided_slice_3:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_14/SigmoidSigmoiddense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitydense_14/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp^gru_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2P
&gru_3/gru_cell_3/MatMul/ReadVariableOp&gru_3/gru_cell_3/MatMul/ReadVariableOp2T
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp(gru_3/gru_cell_3/MatMul_1/ReadVariableOp2B
gru_3/gru_cell_3/ReadVariableOpgru_3/gru_cell_3/ReadVariableOp2
gru_3/whilegru_3/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
çM

A__inference_gru_3_layer_call_and_return_conditional_losses_404110

inputs5
"gru_cell_3_readvariableop_resource:	<
)gru_cell_3_matmul_readvariableop_resource:	?
+gru_cell_3_matmul_1_readvariableop_resource:

identity¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0w
gru_cell_3/unstackUnpack!gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell_3/MatMulMatMulstrided_slice_2:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÇ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_3/MatMul_1MatMulzeros:output:0*gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAdd_1BiasAddgru_cell_3/MatMul_1:product:0gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿg
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
gru_cell_3/split_1SplitVgru_cell_3/BiasAdd_1:output:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell_3/ReluRelugru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_3_readvariableop_resource)gru_cell_3_matmul_readvariableop_resource+gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_404020*
condR
while_cond_404019*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é=

while_body_405269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_3_readvariableop_resource_0:	D
1while_gru_cell_3_matmul_readvariableop_resource_0:	G
3while_gru_cell_3_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_3_readvariableop_resource:	B
/while_gru_cell_3_matmul_readvariableop_resource:	E
1while_gru_cell_3_matmul_1_readvariableop_resource:
¢&while/gru_cell_3/MatMul/ReadVariableOp¢(while/gru_cell_3/MatMul_1/ReadVariableOp¢while/gru_cell_3/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_3/unstackUnpack'while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¶
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0!while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_20while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell_3/BiasAdd_1BiasAdd#while/gru_cell_3/MatMul_1:product:0!while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/split_1SplitV#while/gru_cell_3/BiasAdd_1:output:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0!while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
while/gru_cell_3/ReluReluwhile/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0#while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ë
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ

while/NoOpNoOp'^while/gru_cell_3/MatMul/ReadVariableOp)^while/gru_cell_3/MatMul_1/ReadVariableOp ^while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_3_matmul_1_readvariableop_resource3while_gru_cell_3_matmul_1_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2T
(while/gru_cell_3/MatMul_1/ReadVariableOp(while/gru_cell_3/MatMul_1/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


õ
D__inference_dense_14_layer_call_and_return_conditional_losses_403884

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¼

Û
+__inference_gru_cell_3_layer_call_fn_405447

inputs
states_0
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403543p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ç
®	
!__inference__wrapped_model_403328
gru_3_inputH
5sequential_4_gru_3_gru_cell_3_readvariableop_resource:	O
<sequential_4_gru_3_gru_cell_3_matmul_readvariableop_resource:	R
>sequential_4_gru_3_gru_cell_3_matmul_1_readvariableop_resource:
H
4sequential_4_dense_12_matmul_readvariableop_resource:
D
5sequential_4_dense_12_biasadd_readvariableop_resource:	G
4sequential_4_dense_13_matmul_readvariableop_resource:	 C
5sequential_4_dense_13_biasadd_readvariableop_resource: F
4sequential_4_dense_14_matmul_readvariableop_resource: C
5sequential_4_dense_14_biasadd_readvariableop_resource:
identity¢,sequential_4/dense_12/BiasAdd/ReadVariableOp¢+sequential_4/dense_12/MatMul/ReadVariableOp¢,sequential_4/dense_13/BiasAdd/ReadVariableOp¢+sequential_4/dense_13/MatMul/ReadVariableOp¢,sequential_4/dense_14/BiasAdd/ReadVariableOp¢+sequential_4/dense_14/MatMul/ReadVariableOp¢3sequential_4/gru_3/gru_cell_3/MatMul/ReadVariableOp¢5sequential_4/gru_3/gru_cell_3/MatMul_1/ReadVariableOp¢,sequential_4/gru_3/gru_cell_3/ReadVariableOp¢sequential_4/gru_3/whileS
sequential_4/gru_3/ShapeShapegru_3_input*
T0*
_output_shapes
:p
&sequential_4/gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_4/gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_4/gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 sequential_4/gru_3/strided_sliceStridedSlice!sequential_4/gru_3/Shape:output:0/sequential_4/gru_3/strided_slice/stack:output:01sequential_4/gru_3/strided_slice/stack_1:output:01sequential_4/gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
!sequential_4/gru_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¬
sequential_4/gru_3/zeros/packedPack)sequential_4/gru_3/strided_slice:output:0*sequential_4/gru_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
sequential_4/gru_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
sequential_4/gru_3/zerosFill(sequential_4/gru_3/zeros/packed:output:0'sequential_4/gru_3/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!sequential_4/gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_4/gru_3/transpose	Transposegru_3_input*sequential_4/gru_3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
sequential_4/gru_3/Shape_1Shape sequential_4/gru_3/transpose:y:0*
T0*
_output_shapes
:r
(sequential_4/gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_4/gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_4/gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"sequential_4/gru_3/strided_slice_1StridedSlice#sequential_4/gru_3/Shape_1:output:01sequential_4/gru_3/strided_slice_1/stack:output:03sequential_4/gru_3/strided_slice_1/stack_1:output:03sequential_4/gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.sequential_4/gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿí
 sequential_4/gru_3/TensorArrayV2TensorListReserve7sequential_4/gru_3/TensorArrayV2/element_shape:output:0+sequential_4/gru_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Hsequential_4/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
:sequential_4/gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_4/gru_3/transpose:y:0Qsequential_4/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒr
(sequential_4/gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_4/gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_4/gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
"sequential_4/gru_3/strided_slice_2StridedSlice sequential_4/gru_3/transpose:y:01sequential_4/gru_3/strided_slice_2/stack:output:03sequential_4/gru_3/strided_slice_2/stack_1:output:03sequential_4/gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask£
,sequential_4/gru_3/gru_cell_3/ReadVariableOpReadVariableOp5sequential_4_gru_3_gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0
%sequential_4/gru_3/gru_cell_3/unstackUnpack4sequential_4/gru_3/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num±
3sequential_4/gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp<sequential_4_gru_3_gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ë
$sequential_4/gru_3/gru_cell_3/MatMulMatMul+sequential_4/gru_3/strided_slice_2:output:0;sequential_4/gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
%sequential_4/gru_3/gru_cell_3/BiasAddBiasAdd.sequential_4/gru_3/gru_cell_3/MatMul:product:0.sequential_4/gru_3/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-sequential_4/gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
#sequential_4/gru_3/gru_cell_3/splitSplit6sequential_4/gru_3/gru_cell_3/split/split_dim:output:0.sequential_4/gru_3/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¶
5sequential_4/gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp>sequential_4_gru_3_gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
&sequential_4/gru_3/gru_cell_3/MatMul_1MatMul!sequential_4/gru_3/zeros:output:0=sequential_4/gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
'sequential_4/gru_3/gru_cell_3/BiasAdd_1BiasAdd0sequential_4/gru_3/gru_cell_3/MatMul_1:product:0.sequential_4/gru_3/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
#sequential_4/gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿz
/sequential_4/gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÁ
%sequential_4/gru_3/gru_cell_3/split_1SplitV0sequential_4/gru_3/gru_cell_3/BiasAdd_1:output:0,sequential_4/gru_3/gru_cell_3/Const:output:08sequential_4/gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split»
!sequential_4/gru_3/gru_cell_3/addAddV2,sequential_4/gru_3/gru_cell_3/split:output:0.sequential_4/gru_3/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential_4/gru_3/gru_cell_3/SigmoidSigmoid%sequential_4/gru_3/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
#sequential_4/gru_3/gru_cell_3/add_1AddV2,sequential_4/gru_3/gru_cell_3/split:output:1.sequential_4/gru_3/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential_4/gru_3/gru_cell_3/Sigmoid_1Sigmoid'sequential_4/gru_3/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
!sequential_4/gru_3/gru_cell_3/mulMul+sequential_4/gru_3/gru_cell_3/Sigmoid_1:y:0.sequential_4/gru_3/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
#sequential_4/gru_3/gru_cell_3/add_2AddV2,sequential_4/gru_3/gru_cell_3/split:output:2%sequential_4/gru_3/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential_4/gru_3/gru_cell_3/ReluRelu'sequential_4/gru_3/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
#sequential_4/gru_3/gru_cell_3/mul_1Mul)sequential_4/gru_3/gru_cell_3/Sigmoid:y:0!sequential_4/gru_3/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
#sequential_4/gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
!sequential_4/gru_3/gru_cell_3/subSub,sequential_4/gru_3/gru_cell_3/sub/x:output:0)sequential_4/gru_3/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
#sequential_4/gru_3/gru_cell_3/mul_2Mul%sequential_4/gru_3/gru_cell_3/sub:z:00sequential_4/gru_3/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
#sequential_4/gru_3/gru_cell_3/add_3AddV2'sequential_4/gru_3/gru_cell_3/mul_1:z:0'sequential_4/gru_3/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0sequential_4/gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   q
/sequential_4/gru_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :þ
"sequential_4/gru_3/TensorArrayV2_1TensorListReserve9sequential_4/gru_3/TensorArrayV2_1/element_shape:output:08sequential_4/gru_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒY
sequential_4/gru_3/timeConst*
_output_shapes
: *
dtype0*
value	B : v
+sequential_4/gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿg
%sequential_4/gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
sequential_4/gru_3/whileWhile.sequential_4/gru_3/while/loop_counter:output:04sequential_4/gru_3/while/maximum_iterations:output:0 sequential_4/gru_3/time:output:0+sequential_4/gru_3/TensorArrayV2_1:handle:0!sequential_4/gru_3/zeros:output:0+sequential_4/gru_3/strided_slice_1:output:0Jsequential_4/gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:05sequential_4_gru_3_gru_cell_3_readvariableop_resource<sequential_4_gru_3_gru_cell_3_matmul_readvariableop_resource>sequential_4_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *0
body(R&
$sequential_4_gru_3_while_body_403217*0
cond(R&
$sequential_4_gru_3_while_cond_403216*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Csequential_4/gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
5sequential_4/gru_3/TensorArrayV2Stack/TensorListStackTensorListStack!sequential_4/gru_3/while:output:3Lsequential_4/gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elements{
(sequential_4/gru_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿt
*sequential_4/gru_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*sequential_4/gru_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
"sequential_4/gru_3/strided_slice_3StridedSlice>sequential_4/gru_3/TensorArrayV2Stack/TensorListStack:tensor:01sequential_4/gru_3/strided_slice_3/stack:output:03sequential_4/gru_3/strided_slice_3/stack_1:output:03sequential_4/gru_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskx
#sequential_4/gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ð
sequential_4/gru_3/transpose_1	Transpose>sequential_4/gru_3/TensorArrayV2Stack/TensorListStack:tensor:0,sequential_4/gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
sequential_4/gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0»
sequential_4/dense_12/MatMulMatMul+sequential_4/gru_3/strided_slice_3:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype0·
sequential_4/dense_13/MatMulMatMul(sequential_4/dense_12/Relu:activations:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¸
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
sequential_4/dense_13/ReluRelu&sequential_4/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
+sequential_4/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

: *
dtype0·
sequential_4/dense_14/MatMulMatMul(sequential_4/dense_13/Relu:activations:03sequential_4/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_4/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_4/dense_14/BiasAddBiasAdd&sequential_4/dense_14/MatMul:product:04sequential_4/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_4/dense_14/SigmoidSigmoid&sequential_4/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
IdentityIdentity!sequential_4/dense_14/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp-^sequential_4/dense_12/BiasAdd/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp-^sequential_4/dense_14/BiasAdd/ReadVariableOp,^sequential_4/dense_14/MatMul/ReadVariableOp4^sequential_4/gru_3/gru_cell_3/MatMul/ReadVariableOp6^sequential_4/gru_3/gru_cell_3/MatMul_1/ReadVariableOp-^sequential_4/gru_3/gru_cell_3/ReadVariableOp^sequential_4/gru_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp2\
,sequential_4/dense_14/BiasAdd/ReadVariableOp,sequential_4/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_14/MatMul/ReadVariableOp+sequential_4/dense_14/MatMul/ReadVariableOp2j
3sequential_4/gru_3/gru_cell_3/MatMul/ReadVariableOp3sequential_4/gru_3/gru_cell_3/MatMul/ReadVariableOp2n
5sequential_4/gru_3/gru_cell_3/MatMul_1/ReadVariableOp5sequential_4/gru_3/gru_cell_3/MatMul_1/ReadVariableOp2\
,sequential_4/gru_3/gru_cell_3/ReadVariableOp,sequential_4/gru_3/gru_cell_3/ReadVariableOp24
sequential_4/gru_3/whilesequential_4/gru_3/while:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_3_input
Ì

)__inference_dense_12_layer_call_fn_405368

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_403850p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_dense_12_layer_call_and_return_conditional_losses_403850

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


å
-__inference_sequential_4_layer_call_fn_404343

inputs
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_404170o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
ª
while_cond_403595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_403595___redundant_placeholder04
0while_while_cond_403595___redundant_placeholder14
0while_while_cond_403595___redundant_placeholder24
0while_while_cond_403595___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
çM

A__inference_gru_3_layer_call_and_return_conditional_losses_405204

inputs5
"gru_cell_3_readvariableop_resource:	<
)gru_cell_3_matmul_readvariableop_resource:	?
+gru_cell_3_matmul_1_readvariableop_resource:

identity¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0w
gru_cell_3/unstackUnpack!gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell_3/MatMulMatMulstrided_slice_2:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÇ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_3/MatMul_1MatMulzeros:output:0*gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAdd_1BiasAddgru_cell_3/MatMul_1:product:0gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿg
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
gru_cell_3/split_1SplitVgru_cell_3/BiasAdd_1:output:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell_3/ReluRelugru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_3_readvariableop_resource)gru_cell_3_matmul_readvariableop_resource+gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_405114*
condR
while_cond_405113*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
ª
while_cond_405113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_405113___redundant_placeholder04
0while_while_cond_405113___redundant_placeholder14
0while_while_cond_405113___redundant_placeholder24
0while_while_cond_405113___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


ê
-__inference_sequential_4_layer_call_fn_404214
gru_3_input
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallgru_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_404170o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_3_input
é=

while_body_404959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_3_readvariableop_resource_0:	D
1while_gru_cell_3_matmul_readvariableop_resource_0:	G
3while_gru_cell_3_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_3_readvariableop_resource:	B
/while_gru_cell_3_matmul_readvariableop_resource:	E
1while_gru_cell_3_matmul_1_readvariableop_resource:
¢&while/gru_cell_3/MatMul/ReadVariableOp¢(while/gru_cell_3/MatMul_1/ReadVariableOp¢while/gru_cell_3/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_3/unstackUnpack'while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¶
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0!while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_20while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell_3/BiasAdd_1BiasAdd#while/gru_cell_3/MatMul_1:product:0!while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/split_1SplitV#while/gru_cell_3/BiasAdd_1:output:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0!while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
while/gru_cell_3/ReluReluwhile/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0#while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ë
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ

while/NoOpNoOp'^while/gru_cell_3/MatMul/ReadVariableOp)^while/gru_cell_3/MatMul_1/ReadVariableOp ^while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_3_matmul_1_readvariableop_resource3while_gru_cell_3_matmul_1_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2T
(while/gru_cell_3/MatMul_1/ReadVariableOp(while/gru_cell_3/MatMul_1/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
þ

gru_3_while_cond_404407(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2*
&gru_3_while_less_gru_3_strided_slice_1@
<gru_3_while_gru_3_while_cond_404407___redundant_placeholder0@
<gru_3_while_gru_3_while_cond_404407___redundant_placeholder1@
<gru_3_while_gru_3_while_cond_404407___redundant_placeholder2@
<gru_3_while_gru_3_while_cond_404407___redundant_placeholder3
gru_3_while_identity
z
gru_3/while/LessLessgru_3_while_placeholder&gru_3_while_less_gru_3_strided_slice_1*
T0*
_output_shapes
: W
gru_3/while/IdentityIdentitygru_3/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_3_while_identitygru_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Þ

$sequential_4_gru_3_while_cond_403216B
>sequential_4_gru_3_while_sequential_4_gru_3_while_loop_counterH
Dsequential_4_gru_3_while_sequential_4_gru_3_while_maximum_iterations(
$sequential_4_gru_3_while_placeholder*
&sequential_4_gru_3_while_placeholder_1*
&sequential_4_gru_3_while_placeholder_2D
@sequential_4_gru_3_while_less_sequential_4_gru_3_strided_slice_1Z
Vsequential_4_gru_3_while_sequential_4_gru_3_while_cond_403216___redundant_placeholder0Z
Vsequential_4_gru_3_while_sequential_4_gru_3_while_cond_403216___redundant_placeholder1Z
Vsequential_4_gru_3_while_sequential_4_gru_3_while_cond_403216___redundant_placeholder2Z
Vsequential_4_gru_3_while_sequential_4_gru_3_while_cond_403216___redundant_placeholder3%
!sequential_4_gru_3_while_identity
®
sequential_4/gru_3/while/LessLess$sequential_4_gru_3_while_placeholder@sequential_4_gru_3_while_less_sequential_4_gru_3_strided_slice_1*
T0*
_output_shapes
: q
!sequential_4/gru_3/while/IdentityIdentity!sequential_4/gru_3/while/Less:z:0*
T0
*
_output_shapes
: "O
!sequential_4_gru_3_while_identity*sequential_4/gru_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


H__inference_sequential_4_layer_call_and_return_conditional_losses_403891

inputs
gru_3_403832:	
gru_3_403834:	 
gru_3_403836:
#
dense_12_403851:

dense_12_403853:	"
dense_13_403868:	 
dense_13_403870: !
dense_14_403885: 
dense_14_403887:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall¢gru_3/StatefulPartitionedCallø
gru_3/StatefulPartitionedCallStatefulPartitionedCallinputsgru_3_403832gru_3_403834gru_3_403836*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_403831
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0dense_12_403851dense_12_403853*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_403850
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_403868dense_13_403870*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_403867
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_403885dense_14_403887*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_403884x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^gru_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_dense_12_layer_call_and_return_conditional_losses_405379

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
ª
while_cond_403740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_403740___redundant_placeholder04
0while_while_cond_403740___redundant_placeholder14
0while_while_cond_403740___redundant_placeholder24
0while_while_cond_403740___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


å
-__inference_sequential_4_layer_call_fn_404320

inputs
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_403891o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
!
°
while_body_403412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_3_403434_0:	,
while_gru_cell_3_403436_0:	-
while_gru_cell_3_403438_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_3_403434:	*
while_gru_cell_3_403436:	+
while_gru_cell_3_403438:
¢(while/gru_cell_3/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(while/gru_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3_403434_0while_gru_cell_3_403436_0while_gru_cell_3_403438_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403398r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:01while/gru_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity1while/gru_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw

while/NoOpNoOp)^while/gru_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "4
while_gru_cell_3_403434while_gru_cell_3_403434_0"4
while_gru_cell_3_403436while_gru_cell_3_403436_0"4
while_gru_cell_3_403438while_gru_cell_3_403438_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/gru_cell_3/StatefulPartitionedCall(while/gru_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
 
Ù
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403543

inputs

states*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¨
Û
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405525

inputs
states_0*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
Ü
ª
while_cond_405268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_405268___redundant_placeholder04
0while_while_cond_405268___redundant_placeholder14
0while_while_cond_405268___redundant_placeholder24
0while_while_cond_405268___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
è	
á
$__inference_signature_wrapper_404297
gru_3_input
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	 
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallgru_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_403328o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_3_input
ú4

A__inference_gru_3_layer_call_and_return_conditional_losses_403477

inputs$
gru_cell_3_403399:	$
gru_cell_3_403401:	%
gru_cell_3_403403:

identity¢"gru_cell_3/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÉ
"gru_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_3_403399gru_cell_3_403401gru_cell_3_403403*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403398n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3_403399gru_cell_3_403401gru_cell_3_403403*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_403412*
condR
while_cond_403411*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp#^gru_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_3/StatefulPartitionedCall"gru_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

)__inference_dense_13_layer_call_fn_405388

inputs
unknown:	 
	unknown_0: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_403867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
N

A__inference_gru_3_layer_call_and_return_conditional_losses_404894
inputs_05
"gru_cell_3_readvariableop_resource:	<
)gru_cell_3_matmul_readvariableop_resource:	?
+gru_cell_3_matmul_1_readvariableop_resource:

identity¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource*
_output_shapes
:	*
dtype0w
gru_cell_3/unstackUnpack!gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell_3/MatMulMatMulstrided_slice_2:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÇ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_3/MatMul_1MatMulzeros:output:0*gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/BiasAdd_1BiasAddgru_cell_3/MatMul_1:product:0gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿg
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿõ
gru_cell_3/split_1SplitVgru_cell_3/BiasAdd_1:output:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
gru_cell_3/ReluRelugru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_3_readvariableop_resource)gru_cell_3_matmul_readvariableop_resource+gru_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_404804*
condR
while_cond_404803*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
NoOpNoOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
µL
Ä
__inference__traced_save_405656
file_prefix.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop6
2savev2_gru_3_gru_cell_3_kernel_read_readvariableop@
<savev2_gru_3_gru_cell_3_recurrent_kernel_read_readvariableop4
0savev2_gru_3_gru_cell_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop=
9savev2_adam_gru_3_gru_cell_3_kernel_m_read_readvariableopG
Csavev2_adam_gru_3_gru_cell_3_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_3_gru_cell_3_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop=
9savev2_adam_gru_3_gru_cell_3_kernel_v_read_readvariableopG
Csavev2_adam_gru_3_gru_cell_3_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_3_gru_cell_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*®
value¤B¡%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop2savev2_gru_3_gru_cell_3_kernel_read_readvariableop<savev2_gru_3_gru_cell_3_recurrent_kernel_read_readvariableop0savev2_gru_3_gru_cell_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop9savev2_adam_gru_3_gru_cell_3_kernel_m_read_readvariableopCsavev2_adam_gru_3_gru_cell_3_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_3_gru_cell_3_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop9savev2_adam_gru_3_gru_cell_3_kernel_v_read_readvariableopCsavev2_adam_gru_3_gru_cell_3_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_3_gru_cell_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*­
_input_shapes
: :
::	 : : ::	:
:	: : : : : : : : : :
::	 : : ::	:
:	:
::	 : : ::	:
:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	 : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:%	!

_output_shapes
:	:


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	 : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	 : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::%"!

_output_shapes
:	:&#"
 
_output_shapes
:
:%$!

_output_shapes
:	:%

_output_shapes
: 
é=

while_body_404804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_3_readvariableop_resource_0:	D
1while_gru_cell_3_matmul_readvariableop_resource_0:	G
3while_gru_cell_3_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_3_readvariableop_resource:	B
/while_gru_cell_3_matmul_readvariableop_resource:	E
1while_gru_cell_3_matmul_1_readvariableop_resource:
¢&while/gru_cell_3/MatMul/ReadVariableOp¢(while/gru_cell_3/MatMul_1/ReadVariableOp¢while/gru_cell_3/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_3/unstackUnpack'while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¶
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0!while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_20while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell_3/BiasAdd_1BiasAdd#while/gru_cell_3/MatMul_1:product:0!while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/split_1SplitV#while/gru_cell_3/BiasAdd_1:output:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0!while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
while/gru_cell_3/ReluReluwhile/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0#while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ë
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ

while/NoOpNoOp'^while/gru_cell_3/MatMul/ReadVariableOp)^while/gru_cell_3/MatMul_1/ReadVariableOp ^while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_3_matmul_1_readvariableop_resource3while_gru_cell_3_matmul_1_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2T
(while/gru_cell_3/MatMul_1/ReadVariableOp(while/gru_cell_3/MatMul_1/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
þ

gru_3_while_cond_404583(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2*
&gru_3_while_less_gru_3_strided_slice_1@
<gru_3_while_gru_3_while_cond_404583___redundant_placeholder0@
<gru_3_while_gru_3_while_cond_404583___redundant_placeholder1@
<gru_3_while_gru_3_while_cond_404583___redundant_placeholder2@
<gru_3_while_gru_3_while_cond_404583___redundant_placeholder3
gru_3_while_identity
z
gru_3/while/LessLessgru_3_while_placeholder&gru_3_while_less_gru_3_strided_slice_1*
T0*
_output_shapes
: W
gru_3/while/IdentityIdentitygru_3/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_3_while_identitygru_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ú4

A__inference_gru_3_layer_call_and_return_conditional_losses_403661

inputs$
gru_cell_3_403583:	$
gru_cell_3_403585:	%
gru_cell_3_403587:

identity¢"gru_cell_3/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÉ
"gru_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_3_403583gru_cell_3_403585gru_cell_3_403587*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403543n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3_403583gru_cell_3_403585gru_cell_3_403587*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_403596*
condR
while_cond_403595*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp#^gru_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_3/StatefulPartitionedCall"gru_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
£
H__inference_sequential_4_layer_call_and_return_conditional_losses_404240
gru_3_input
gru_3_404217:	
gru_3_404219:	 
gru_3_404221:
#
dense_12_404224:

dense_12_404226:	"
dense_13_404229:	 
dense_13_404231: !
dense_14_404234: 
dense_14_404236:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall¢gru_3/StatefulPartitionedCallý
gru_3/StatefulPartitionedCallStatefulPartitionedCallgru_3_inputgru_3_404217gru_3_404219gru_3_404221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_403831
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0dense_12_404224dense_12_404226*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_403850
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_404229dense_13_404231*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_403867
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_404234dense_14_404236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_403884x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^gru_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_3_input


õ
D__inference_dense_14_layer_call_and_return_conditional_losses_405419

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ü
ª
while_cond_404958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_404958___redundant_placeholder04
0while_while_cond_404958___redundant_placeholder14
0while_while_cond_404958___redundant_placeholder24
0while_while_cond_404958___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
®
£
H__inference_sequential_4_layer_call_and_return_conditional_losses_404266
gru_3_input
gru_3_404243:	
gru_3_404245:	 
gru_3_404247:
#
dense_12_404250:

dense_12_404252:	"
dense_13_404255:	 
dense_13_404257: !
dense_14_404260: 
dense_14_404262:
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCall¢gru_3/StatefulPartitionedCallý
gru_3/StatefulPartitionedCallStatefulPartitionedCallgru_3_inputgru_3_404243gru_3_404245gru_3_404247*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_404110
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0dense_12_404250dense_12_404252*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_403850
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_404255dense_13_404257*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_403867
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_404260dense_14_404262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_403884x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall^gru_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ: : : : : : : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_3_input
Å

)__inference_dense_14_layer_call_fn_405408

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_403884o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ö
D__inference_dense_13_layer_call_and_return_conditional_losses_403867

inputs1
matmul_readvariableop_resource:	 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
¸
&__inference_gru_3_layer_call_fn_404739

inputs
unknown:	
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_404110p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
¸
&__inference_gru_3_layer_call_fn_404728

inputs
unknown:	
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_3_layer_call_and_return_conditional_losses_403831p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ö
D__inference_dense_13_layer_call_and_return_conditional_losses_405399

inputs1
matmul_readvariableop_resource:	 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
Ù
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403398

inputs

states*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ü
ª
while_cond_404803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_404803___redundant_placeholder04
0while_while_cond_404803___redundant_placeholder14
0while_while_cond_404803___redundant_placeholder24
0while_while_cond_404803___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¼

Û
+__inference_gru_cell_3_layer_call_fn_405433

inputs
states_0
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_403398p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
é=

while_body_403741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_3_readvariableop_resource_0:	D
1while_gru_cell_3_matmul_readvariableop_resource_0:	G
3while_gru_cell_3_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_3_readvariableop_resource:	B
/while_gru_cell_3_matmul_readvariableop_resource:	E
1while_gru_cell_3_matmul_1_readvariableop_resource:
¢&while/gru_cell_3/MatMul/ReadVariableOp¢(while/gru_cell_3/MatMul_1/ReadVariableOp¢while/gru_cell_3/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_3/unstackUnpack'while/gru_cell_3/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¶
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0!while/gru_cell_3/unstack:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÙ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
(while/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_3_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_20while/gru_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/gru_cell_3/BiasAdd_1BiasAdd#while/gru_cell_3/MatMul_1:product:0!while/gru_cell_3/unstack:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿm
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/split_1SplitV#while/gru_cell_3/BiasAdd_1:output:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0!while/gru_cell_3/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2while/gru_cell_3/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
while/gru_cell_3/ReluReluwhile/gru_cell_3/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0#while/gru_cell_3/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ë
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ

while/NoOpNoOp'^while/gru_cell_3/MatMul/ReadVariableOp)^while/gru_cell_3/MatMul_1/ReadVariableOp ^while/gru_cell_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_3_matmul_1_readvariableop_resource3while_gru_cell_3_matmul_1_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2T
(while/gru_cell_3/MatMul_1/ReadVariableOp(while/gru_cell_3/MatMul_1/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: "¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
G
gru_3_input8
serving_default_gru_3_input:0ÿÿÿÿÿÿÿÿÿ<
dense_140
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:½

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
»
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
_
/0
01
12
3
4
%5
&6
-7
.8"
trackable_list_wrapper
_
/0
01
12
3
4
%5
&6
-7
.8"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
ê
7trace_0
8trace_1
9trace_2
:trace_32ÿ
-__inference_sequential_4_layer_call_fn_403912
-__inference_sequential_4_layer_call_fn_404320
-__inference_sequential_4_layer_call_fn_404343
-__inference_sequential_4_layer_call_fn_404214À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z7trace_0z8trace_1z9trace_2z:trace_3
Ö
;trace_0
<trace_1
=trace_2
>trace_32ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_404519
H__inference_sequential_4_layer_call_and_return_conditional_losses_404695
H__inference_sequential_4_layer_call_and_return_conditional_losses_404240
H__inference_sequential_4_layer_call_and_return_conditional_losses_404266À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z;trace_0z<trace_1z=trace_2z>trace_3
ÐBÍ
!__inference__wrapped_model_403328gru_3_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

?iter

@beta_1

Abeta_2
	Bdecay
Clearning_ratemm%m&m-m.m/m0m1mvv%v&v-v.v/v0v1v"
	optimizer
,
Dserving_default"
signature_map
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ã
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_32ø
&__inference_gru_3_layer_call_fn_404706
&__inference_gru_3_layer_call_fn_404717
&__inference_gru_3_layer_call_fn_404728
&__inference_gru_3_layer_call_fn_404739Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zKtrace_0zLtrace_1zMtrace_2zNtrace_3
Ï
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32ä
A__inference_gru_3_layer_call_and_return_conditional_losses_404894
A__inference_gru_3_layer_call_and_return_conditional_losses_405049
A__inference_gru_3_layer_call_and_return_conditional_losses_405204
A__inference_gru_3_layer_call_and_return_conditional_losses_405359Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
"
_generic_user_object
è
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_random_generator

/kernel
0recurrent_kernel
1bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
í
_trace_02Ð
)__inference_dense_12_layer_call_fn_405368¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z_trace_0

`trace_02ë
D__inference_dense_12_layer_call_and_return_conditional_losses_405379¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z`trace_0
#:!
2dense_12/kernel
:2dense_12/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
í
ftrace_02Ð
)__inference_dense_13_layer_call_fn_405388¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zftrace_0

gtrace_02ë
D__inference_dense_13_layer_call_and_return_conditional_losses_405399¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zgtrace_0
": 	 2dense_13/kernel
: 2dense_13/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
í
mtrace_02Ð
)__inference_dense_14_layer_call_fn_405408¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zmtrace_0

ntrace_02ë
D__inference_dense_14_layer_call_and_return_conditional_losses_405419¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zntrace_0
!: 2dense_14/kernel
:2dense_14/bias
*:(	2gru_3/gru_cell_3/kernel
5:3
2!gru_3/gru_cell_3/recurrent_kernel
(:&	2gru_3/gru_cell_3/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_4_layer_call_fn_403912gru_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿBü
-__inference_sequential_4_layer_call_fn_404320inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿBü
-__inference_sequential_4_layer_call_fn_404343inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
-__inference_sequential_4_layer_call_fn_404214gru_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_404519inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_404695inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_404240gru_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_sequential_4_layer_call_and_return_conditional_losses_404266gru_3_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÏBÌ
$__inference_signature_wrapper_404297gru_3_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_gru_3_layer_call_fn_404706inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
&__inference_gru_3_layer_call_fn_404717inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
&__inference_gru_3_layer_call_fn_404728inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
&__inference_gru_3_layer_call_fn_404739inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ªB§
A__inference_gru_3_layer_call_and_return_conditional_losses_404894inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ªB§
A__inference_gru_3_layer_call_and_return_conditional_losses_405049inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¨B¥
A__inference_gru_3_layer_call_and_return_conditional_losses_405204inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¨B¥
A__inference_gru_3_layer_call_and_return_conditional_losses_405359inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
Ò
vtrace_0
wtrace_12
+__inference_gru_cell_3_layer_call_fn_405433
+__inference_gru_cell_3_layer_call_fn_405447¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zvtrace_0zwtrace_1

xtrace_0
ytrace_12Ñ
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405486
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405525¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zxtrace_0zytrace_1
"
_generic_user_object
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
ÝBÚ
)__inference_dense_12_layer_call_fn_405368inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_12_layer_call_and_return_conditional_losses_405379inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÝBÚ
)__inference_dense_13_layer_call_fn_405388inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_13_layer_call_and_return_conditional_losses_405399inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÝBÚ
)__inference_dense_14_layer_call_fn_405408inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_14_layer_call_and_return_conditional_losses_405419inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
N
z	variables
{	keras_api
	|total
	}count"
_tf_keras_metric
a
~	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
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
B
+__inference_gru_cell_3_layer_call_fn_405433inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_gru_cell_3_layer_call_fn_405447inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 B
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405486inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 B
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405525inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
.
|0
}1"
trackable_list_wrapper
-
z	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
(:&
2Adam/dense_12/kernel/m
!:2Adam/dense_12/bias/m
':%	 2Adam/dense_13/kernel/m
 : 2Adam/dense_13/bias/m
&:$ 2Adam/dense_14/kernel/m
 :2Adam/dense_14/bias/m
/:-	2Adam/gru_3/gru_cell_3/kernel/m
::8
2(Adam/gru_3/gru_cell_3/recurrent_kernel/m
-:+	2Adam/gru_3/gru_cell_3/bias/m
(:&
2Adam/dense_12/kernel/v
!:2Adam/dense_12/bias/v
':%	 2Adam/dense_13/kernel/v
 : 2Adam/dense_13/bias/v
&:$ 2Adam/dense_14/kernel/v
 :2Adam/dense_14/bias/v
/:-	2Adam/gru_3/gru_cell_3/kernel/v
::8
2(Adam/gru_3/gru_cell_3/recurrent_kernel/v
-:+	2Adam/gru_3/gru_cell_3/bias/v
!__inference__wrapped_model_403328z	1/0%&-.8¢5
.¢+
)&
gru_3_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿ¦
D__inference_dense_12_layer_call_and_return_conditional_losses_405379^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
)__inference_dense_12_layer_call_fn_405368Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_13_layer_call_and_return_conditional_losses_405399]%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
)__inference_dense_13_layer_call_fn_405388P%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¤
D__inference_dense_14_layer_call_and_return_conditional_losses_405419\-./¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_14_layer_call_fn_405408O-./¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿÃ
A__inference_gru_3_layer_call_and_return_conditional_losses_404894~1/0O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Ã
A__inference_gru_3_layer_call_and_return_conditional_losses_405049~1/0O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ³
A__inference_gru_3_layer_call_and_return_conditional_losses_405204n1/0?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ³
A__inference_gru_3_layer_call_and_return_conditional_losses_405359n1/0?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
&__inference_gru_3_layer_call_fn_404706q1/0O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_gru_3_layer_call_fn_404717q1/0O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_gru_3_layer_call_fn_404728a1/0?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_gru_3_layer_call_fn_404739a1/0?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405486º1/0]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
F__inference_gru_cell_3_layer_call_and_return_conditional_losses_405525º1/0]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 Ü
+__inference_gru_cell_3_layer_call_fn_405433¬1/0]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿÜ
+__inference_gru_cell_3_layer_call_fn_405447¬1/0]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿ
# 

1/0ÿÿÿÿÿÿÿÿÿÀ
H__inference_sequential_4_layer_call_and_return_conditional_losses_404240t	1/0%&-.@¢=
6¢3
)&
gru_3_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_4_layer_call_and_return_conditional_losses_404266t	1/0%&-.@¢=
6¢3
)&
gru_3_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
H__inference_sequential_4_layer_call_and_return_conditional_losses_404519o	1/0%&-.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
H__inference_sequential_4_layer_call_and_return_conditional_losses_404695o	1/0%&-.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_4_layer_call_fn_403912g	1/0%&-.@¢=
6¢3
)&
gru_3_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_404214g	1/0%&-.@¢=
6¢3
)&
gru_3_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_404320b	1/0%&-.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_404343b	1/0%&-.;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ²
$__inference_signature_wrapper_404297	1/0%&-.G¢D
¢ 
=ª:
8
gru_3_input)&
gru_3_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿ