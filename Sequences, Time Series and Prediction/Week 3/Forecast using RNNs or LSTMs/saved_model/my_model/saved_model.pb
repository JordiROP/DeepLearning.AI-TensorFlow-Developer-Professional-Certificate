��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:(*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
�
%simple_rnn_8/simple_rnn_cell_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*6
shared_name'%simple_rnn_8/simple_rnn_cell_8/kernel
�
9simple_rnn_8/simple_rnn_cell_8/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_8/simple_rnn_cell_8/kernel*
_output_shapes

:(*
dtype0
�
/simple_rnn_8/simple_rnn_cell_8/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*@
shared_name1/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel
�
Csimple_rnn_8/simple_rnn_cell_8/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel*
_output_shapes

:((*
dtype0
�
#simple_rnn_8/simple_rnn_cell_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#simple_rnn_8/simple_rnn_cell_8/bias
�
7simple_rnn_8/simple_rnn_cell_8/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_8/simple_rnn_cell_8/bias*
_output_shapes
:(*
dtype0
�
%simple_rnn_9/simple_rnn_cell_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*6
shared_name'%simple_rnn_9/simple_rnn_cell_9/kernel
�
9simple_rnn_9/simple_rnn_cell_9/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_9/simple_rnn_cell_9/kernel*
_output_shapes

:((*
dtype0
�
/simple_rnn_9/simple_rnn_cell_9/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*@
shared_name1/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel
�
Csimple_rnn_9/simple_rnn_cell_9/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel*
_output_shapes

:((*
dtype0
�
#simple_rnn_9/simple_rnn_cell_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#simple_rnn_9/simple_rnn_cell_9/bias
�
7simple_rnn_9/simple_rnn_cell_9/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_9/simple_rnn_cell_9/bias*
_output_shapes
:(*
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
�
SGD/dense_4/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*,
shared_nameSGD/dense_4/kernel/momentum
�
/SGD/dense_4/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_4/kernel/momentum*
_output_shapes

:(*
dtype0
�
SGD/dense_4/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameSGD/dense_4/bias/momentum
�
-SGD/dense_4/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_4/bias/momentum*
_output_shapes
:*
dtype0
�
2SGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*C
shared_name42SGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentum
�
FSGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentum/Read/ReadVariableOpReadVariableOp2SGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentum*
_output_shapes

:(*
dtype0
�
<SGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*M
shared_name><SGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentum
�
PSGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentum/Read/ReadVariableOpReadVariableOp<SGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentum*
_output_shapes

:((*
dtype0
�
0SGD/simple_rnn_8/simple_rnn_cell_8/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*A
shared_name20SGD/simple_rnn_8/simple_rnn_cell_8/bias/momentum
�
DSGD/simple_rnn_8/simple_rnn_cell_8/bias/momentum/Read/ReadVariableOpReadVariableOp0SGD/simple_rnn_8/simple_rnn_cell_8/bias/momentum*
_output_shapes
:(*
dtype0
�
2SGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*C
shared_name42SGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentum
�
FSGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentum/Read/ReadVariableOpReadVariableOp2SGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentum*
_output_shapes

:((*
dtype0
�
<SGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:((*M
shared_name><SGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentum
�
PSGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentum/Read/ReadVariableOpReadVariableOp<SGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentum*
_output_shapes

:((*
dtype0
�
0SGD/simple_rnn_9/simple_rnn_cell_9/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*A
shared_name20SGD/simple_rnn_9/simple_rnn_cell_9/bias/momentum
�
DSGD/simple_rnn_9/simple_rnn_cell_9/bias/momentum/Read/ReadVariableOpReadVariableOp0SGD/simple_rnn_9/simple_rnn_cell_9/bias/momentum*
_output_shapes
:(*
dtype0

NoOpNoOp
�/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�.
value�.B�. B�.
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
R
"	variables
#trainable_variables
$regularization_losses
%	keras_api
�
&iter
	'decay
(learning_rate
)momentummomentummmomentumn*momentumo+momentump,momentumq-momentumr.momentums/momentumt
8
*0
+1
,2
-3
.4
/5
6
7
8
*0
+1
,2
-3
.4
/5
6
7
 
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
	regularization_losses
 
 
 
 
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
~

*kernel
+recurrent_kernel
,bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
 

*0
+1
,2

*0
+1
,2
 
�

>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
~

-kernel
.recurrent_kernel
/bias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
 

-0
.1
/2

-0
.1
/2
 
�

Hstates
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
 regularization_losses
 
 
 
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
"	variables
#trainable_variables
$regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_8/simple_rnn_cell_8/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#simple_rnn_8/simple_rnn_cell_8/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_9/simple_rnn_cell_9/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#simple_rnn_9/simple_rnn_cell_9/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

X0
Y1
 
 
 
 
 
 
 

*0
+1
,2

*0
+1
,2
 
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
:	variables
;trainable_variables
<regularization_losses
 
 

0
 
 
 

-0
.1
/2

-0
.1
/2
 
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	dtotal
	ecount
f	variables
g	keras_api
D
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

d0
e1

f	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

h0
i1

k	variables
��
VARIABLE_VALUESGD/dense_4/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUESGD/dense_4/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE2SGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentumIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE<SGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentumIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE0SGD/simple_rnn_8/simple_rnn_cell_8/bias/momentumIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE2SGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentumIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE<SGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentumIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE0SGD/simple_rnn_9/simple_rnn_cell_9/bias/momentumIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lambda_8_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_8_input%simple_rnn_8/simple_rnn_cell_8/kernel#simple_rnn_8/simple_rnn_cell_8/bias/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel%simple_rnn_9/simple_rnn_cell_9/kernel#simple_rnn_9/simple_rnn_cell_9/bias/simple_rnn_9/simple_rnn_cell_9/recurrent_kerneldense_4/kerneldense_4/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_29759
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp9simple_rnn_8/simple_rnn_cell_8/kernel/Read/ReadVariableOpCsimple_rnn_8/simple_rnn_cell_8/recurrent_kernel/Read/ReadVariableOp7simple_rnn_8/simple_rnn_cell_8/bias/Read/ReadVariableOp9simple_rnn_9/simple_rnn_cell_9/kernel/Read/ReadVariableOpCsimple_rnn_9/simple_rnn_cell_9/recurrent_kernel/Read/ReadVariableOp7simple_rnn_9/simple_rnn_cell_9/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/SGD/dense_4/kernel/momentum/Read/ReadVariableOp-SGD/dense_4/bias/momentum/Read/ReadVariableOpFSGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentum/Read/ReadVariableOpPSGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentum/Read/ReadVariableOpDSGD/simple_rnn_8/simple_rnn_cell_8/bias/momentum/Read/ReadVariableOpFSGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentum/Read/ReadVariableOpPSGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentum/Read/ReadVariableOpDSGD/simple_rnn_9/simple_rnn_cell_9/bias/momentum/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_31479
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentum%simple_rnn_8/simple_rnn_cell_8/kernel/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel#simple_rnn_8/simple_rnn_cell_8/bias%simple_rnn_9/simple_rnn_cell_9/kernel/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel#simple_rnn_9/simple_rnn_cell_9/biastotalcounttotal_1count_1SGD/dense_4/kernel/momentumSGD/dense_4/bias/momentum2SGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentum<SGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentum0SGD/simple_rnn_8/simple_rnn_cell_8/bias/momentum2SGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentum<SGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentum0SGD/simple_rnn_9/simple_rnn_cell_9/bias/momentum*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_31561��
�
�
while_cond_29371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29371___redundant_placeholder03
/while_while_cond_29371___redundant_placeholder13
/while_while_cond_29371___redundant_placeholder23
/while_while_cond_29371___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_30676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30676___redundant_placeholder03
/while_while_cond_30676___redundant_placeholder13
/while_while_cond_30676___redundant_placeholder23
/while_while_cond_30676___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_31152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_31152___redundant_placeholder03
/while_while_cond_31152___redundant_placeholder13
/while_while_cond_31152___redundant_placeholder23
/while_while_cond_31152___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�4
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_28700

inputs)
simple_rnn_cell_8_28625:(%
simple_rnn_cell_8_28627:()
simple_rnn_cell_8_28629:((
identity��)simple_rnn_cell_8/StatefulPartitionedCall�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
)simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_8_28625simple_rnn_cell_8_28627simple_rnn_cell_8_28629*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28585n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_8_28625simple_rnn_cell_8_28627simple_rnn_cell_8_28629*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_28637*
condR
while_cond_28636*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������(z
NoOpNoOp*^simple_rnn_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_8/StatefulPartitionedCall)simple_rnn_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_30828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30828___redundant_placeholder03
/while_while_cond_30828___redundant_placeholder13
/while_while_cond_30828___redundant_placeholder23
/while_while_cond_30828___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
_
C__inference_lambda_8_layer_call_and_return_conditional_losses_30267

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_31044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_31044___redundant_placeholder03
/while_while_cond_31044___redundant_placeholder13
/while_while_cond_31044___redundant_placeholder23
/while_while_cond_31044___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�=
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30527
inputs_0B
0simple_rnn_cell_8_matmul_readvariableop_resource:(?
1simple_rnn_cell_8_biasadd_readvariableop_resource:(D
2simple_rnn_cell_8_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_8/BiasAdd/ReadVariableOp�'simple_rnn_cell_8/MatMul/ReadVariableOp�)simple_rnn_cell_8/MatMul_1/ReadVariableOp�while=
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_8/TanhTanhsimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30461*
condR
while_cond_30460*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������(�
NoOpNoOp)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�,
�
while_body_29057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(G
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_8_matmul_readvariableop_resource:(E
7while_simple_rnn_cell_8_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_8/MatMul/ReadVariableOp�/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_8/TanhTanhwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_8/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_29171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29171___redundant_placeholder03
/while_while_cond_29171___redundant_placeholder13
/while_while_cond_29171___redundant_placeholder23
/while_while_cond_29171___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
D
(__inference_lambda_8_layer_call_fn_30250

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_8_layer_call_and_return_conditional_losses_29014d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_29056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29056___redundant_placeholder03
/while_while_cond_29056___redundant_placeholder13
/while_while_cond_29056___redundant_placeholder23
/while_while_cond_29056___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
_
C__inference_lambda_9_layer_call_and_return_conditional_losses_29268

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �BT
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28877

inputs

states0
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������(:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������(
 
_user_specified_namestates
�
�
,__inference_simple_rnn_8_layer_call_fn_30289
inputs_0
unknown:(
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_28700|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_30460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30460___redundant_placeholder03
/while_while_cond_30460___redundant_placeholder13
/while_while_cond_30460___redundant_placeholder23
/while_while_cond_30460___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
� 
�
while_body_28637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_8_28659_0:(-
while_simple_rnn_cell_8_28661_0:(1
while_simple_rnn_cell_8_28663_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_8_28659:(+
while_simple_rnn_cell_8_28661:(/
while_simple_rnn_cell_8_28663:((��/while/simple_rnn_cell_8/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
/while/simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_8_28659_0while_simple_rnn_cell_8_28661_0while_simple_rnn_cell_8_28663_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28585�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������(~

while/NoOpNoOp0^while/simple_rnn_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_8_28659while_simple_rnn_cell_8_28659_0"@
while_simple_rnn_cell_8_28661while_simple_rnn_cell_8_28661_0"@
while_simple_rnn_cell_8_28663while_simple_rnn_cell_8_28663_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2b
/while/simple_rnn_cell_8/StatefulPartitionedCall/while/simple_rnn_cell_8/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�8
�
simple_rnn_8_while_body_298456
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_25
1simple_rnn_8_while_simple_rnn_8_strided_slice_1_0q
msimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(T
Fsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(Y
Gsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
simple_rnn_8_while_identity!
simple_rnn_8_while_identity_1!
simple_rnn_8_while_identity_2!
simple_rnn_8_while_identity_3!
simple_rnn_8_while_identity_43
/simple_rnn_8_while_simple_rnn_8_strided_slice_1o
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource:(R
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource:(W
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp�<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_8_while_placeholderMsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
+simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMul=simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAdd5simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Csimple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul simple_rnn_8_while_placeholder_2Dsimple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_8/while/simple_rnn_cell_8/addAddV25simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:07simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_8/while/simple_rnn_cell_8/TanhTanh,simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_8_while_placeholder_1simple_rnn_8_while_placeholder-simple_rnn_8/while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_8/while/addAddV2simple_rnn_8_while_placeholder!simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_8/while/add_1AddV22simple_rnn_8_while_simple_rnn_8_while_loop_counter#simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/add_1:z:0^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_1Identity8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_2Identitysimple_rnn_8/while/add:z:0^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_3IdentityGsimple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_4Identity-simple_rnn_8/while/simple_rnn_cell_8/Tanh:y:0^simple_rnn_8/while/NoOp*
T0*'
_output_shapes
:���������(�
simple_rnn_8/while/NoOpNoOp<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0"G
simple_rnn_8_while_identity_1&simple_rnn_8/while/Identity_1:output:0"G
simple_rnn_8_while_identity_2&simple_rnn_8/while/Identity_2:output:0"G
simple_rnn_8_while_identity_3&simple_rnn_8/while/Identity_3:output:0"G
simple_rnn_8_while_identity_4&simple_rnn_8/while/Identity_4:output:0"d
/simple_rnn_8_while_simple_rnn_8_strided_slice_11simple_rnn_8_while_simple_rnn_8_strided_slice_1_0"�
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"�
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"�
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"�
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensormsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2z
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2x
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2|
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�

�
1__inference_simple_rnn_cell_8_layer_call_fn_31288

inputs
states_0
unknown:(
	unknown_0:(
	unknown_1:((
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28585o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
�,
�
while_body_30937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_9_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_9/MatMul/ReadVariableOp�/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_29642

inputs$
simple_rnn_8_29621:( 
simple_rnn_8_29623:($
simple_rnn_8_29625:(($
simple_rnn_9_29628:(( 
simple_rnn_9_29630:($
simple_rnn_9_29632:((
dense_4_29635:(
dense_4_29637:
identity��dense_4/StatefulPartitionedCall�$simple_rnn_8/StatefulPartitionedCall�$simple_rnn_9/StatefulPartitionedCall�
lambda_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_8_layer_call_and_return_conditional_losses_29591�
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0simple_rnn_8_29621simple_rnn_8_29623simple_rnn_8_29625*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29568�
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0simple_rnn_9_29628simple_rnn_9_29630simple_rnn_9_29632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29438�
dense_4/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_4_29635dense_4_29637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_29256�
lambda_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_9_layer_call_and_return_conditional_losses_29304p
IdentityIdentity!lambda_9/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_4/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�,
�
while_body_29172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_9_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_9/MatMul/ReadVariableOp�/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�=
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29438

inputsB
0simple_rnn_cell_9_matmul_readvariableop_resource:((?
1simple_rnn_cell_9_biasadd_readvariableop_resource:(D
2simple_rnn_cell_9_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_9/BiasAdd/ReadVariableOp�'simple_rnn_cell_9/MatMul/ReadVariableOp�)simple_rnn_cell_9/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29372*
condR
while_cond_29371*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�8
�
simple_rnn_9_while_body_299496
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_25
1simple_rnn_9_while_simple_rnn_9_strided_slice_1_0q
msimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((T
Fsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(Y
Gsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
simple_rnn_9_while_identity!
simple_rnn_9_while_identity_1!
simple_rnn_9_while_identity_2!
simple_rnn_9_while_identity_3!
simple_rnn_9_while_identity_43
/simple_rnn_9_while_simple_rnn_9_strided_slice_1o
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource:((R
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource:(W
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp�<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
Dsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
6simple_rnn_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_9_while_placeholderMsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
+simple_rnn_9/while/simple_rnn_cell_9/MatMulMatMul=simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
,simple_rnn_9/while/simple_rnn_cell_9/BiasAddBiasAdd5simple_rnn_9/while/simple_rnn_cell_9/MatMul:product:0Csimple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
-simple_rnn_9/while/simple_rnn_cell_9/MatMul_1MatMul simple_rnn_9_while_placeholder_2Dsimple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_9/while/simple_rnn_cell_9/addAddV25simple_rnn_9/while/simple_rnn_cell_9/BiasAdd:output:07simple_rnn_9/while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_9/while/simple_rnn_cell_9/TanhTanh,simple_rnn_9/while/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
7simple_rnn_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_9_while_placeholder_1simple_rnn_9_while_placeholder-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_9/while/addAddV2simple_rnn_9_while_placeholder!simple_rnn_9/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_9/while/add_1AddV22simple_rnn_9_while_simple_rnn_9_while_loop_counter#simple_rnn_9/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/add_1:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_1Identity8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_2Identitysimple_rnn_9/while/add:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_3IdentityGsimple_rnn_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_4Identity-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0^simple_rnn_9/while/NoOp*
T0*'
_output_shapes
:���������(�
simple_rnn_9/while/NoOpNoOp<^simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;^simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp=^simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0"G
simple_rnn_9_while_identity_1&simple_rnn_9/while/Identity_1:output:0"G
simple_rnn_9_while_identity_2&simple_rnn_9/while/Identity_2:output:0"G
simple_rnn_9_while_identity_3&simple_rnn_9/while/Identity_3:output:0"G
simple_rnn_9_while_identity_4&simple_rnn_9/while/Identity_4:output:0"d
/simple_rnn_9_while_simple_rnn_9_strided_slice_11simple_rnn_9_while_simple_rnn_9_strided_slice_1_0"�
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resourceFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"�
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resourceGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"�
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resourceEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0"�
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensormsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2z
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2x
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp2|
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�8
�
simple_rnn_8_while_body_300676
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_25
1simple_rnn_8_while_simple_rnn_8_strided_slice_1_0q
msimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(T
Fsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(Y
Gsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
simple_rnn_8_while_identity!
simple_rnn_8_while_identity_1!
simple_rnn_8_while_identity_2!
simple_rnn_8_while_identity_3!
simple_rnn_8_while_identity_43
/simple_rnn_8_while_simple_rnn_8_strided_slice_1o
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource:(R
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource:(W
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp�<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
Dsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_8_while_placeholderMsimple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
+simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMul=simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
,simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAdd5simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Csimple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
-simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul simple_rnn_8_while_placeholder_2Dsimple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_8/while/simple_rnn_cell_8/addAddV25simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:07simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_8/while/simple_rnn_cell_8/TanhTanh,simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
7simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_8_while_placeholder_1simple_rnn_8_while_placeholder-simple_rnn_8/while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_8/while/addAddV2simple_rnn_8_while_placeholder!simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_8/while/add_1AddV22simple_rnn_8_while_simple_rnn_8_while_loop_counter#simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/add_1:z:0^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_1Identity8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_2Identitysimple_rnn_8/while/add:z:0^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_3IdentityGsimple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_8/while/Identity_4Identity-simple_rnn_8/while/simple_rnn_cell_8/Tanh:y:0^simple_rnn_8/while/NoOp*
T0*'
_output_shapes
:���������(�
simple_rnn_8/while/NoOpNoOp<^simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;^simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp=^simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0"G
simple_rnn_8_while_identity_1&simple_rnn_8/while/Identity_1:output:0"G
simple_rnn_8_while_identity_2&simple_rnn_8/while/Identity_2:output:0"G
simple_rnn_8_while_identity_3&simple_rnn_8/while/Identity_3:output:0"G
simple_rnn_8_while_identity_4&simple_rnn_8/while/Identity_4:output:0"d
/simple_rnn_8_while_simple_rnn_8_strided_slice_11simple_rnn_8_while_simple_rnn_8_strided_slice_1_0"�
Dsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceFsimple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"�
Esimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceGsimple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"�
Csimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceEsimple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"�
ksimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensormsimple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2z
;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp;simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2x
:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2|
<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp<simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_28769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_28769___redundant_placeholder03
/while_while_cond_28769___redundant_placeholder13
/while_while_cond_28769___redundant_placeholder23
/while_while_cond_28769___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�=
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30635

inputsB
0simple_rnn_cell_8_matmul_readvariableop_resource:(?
1simple_rnn_cell_8_biasadd_readvariableop_resource:(D
2simple_rnn_cell_8_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_8/BiasAdd/ReadVariableOp�'simple_rnn_cell_8/MatMul/ReadVariableOp�)simple_rnn_cell_8/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_8/TanhTanhsimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30569*
condR
while_cond_30568*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�D
�
*sequential_4_simple_rnn_8_while_body_28239P
Lsequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_loop_counterV
Rsequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_maximum_iterations/
+sequential_4_simple_rnn_8_while_placeholder1
-sequential_4_simple_rnn_8_while_placeholder_11
-sequential_4_simple_rnn_8_while_placeholder_2O
Ksequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_strided_slice_1_0�
�sequential_4_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(a
Ssequential_4_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(f
Tsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((,
(sequential_4_simple_rnn_8_while_identity.
*sequential_4_simple_rnn_8_while_identity_1.
*sequential_4_simple_rnn_8_while_identity_2.
*sequential_4_simple_rnn_8_while_identity_3.
*sequential_4_simple_rnn_8_while_identity_4M
Isequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_strided_slice_1�
�sequential_4_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_8_tensorarrayunstack_tensorlistfromtensorb
Psequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource:(_
Qsequential_4_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource:(d
Rsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��Hsequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�Gsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp�Isequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
Qsequential_4/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Csequential_4/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_4_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0+sequential_4_simple_rnn_8_while_placeholderZsequential_4/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Gsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpRsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
8sequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMulMatMulJsequential_4/simple_rnn_8/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Hsequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpSsequential_4_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
9sequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAddBiasAddBsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul:product:0Psequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Isequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpTsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
:sequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1MatMul-sequential_4_simple_rnn_8_while_placeholder_2Qsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
5sequential_4/simple_rnn_8/while/simple_rnn_cell_8/addAddV2Bsequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd:output:0Dsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
6sequential_4/simple_rnn_8/while/simple_rnn_cell_8/TanhTanh9sequential_4/simple_rnn_8/while/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
Dsequential_4/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_4_simple_rnn_8_while_placeholder_1+sequential_4_simple_rnn_8_while_placeholder:sequential_4/simple_rnn_8/while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���g
%sequential_4/simple_rnn_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_4/simple_rnn_8/while/addAddV2+sequential_4_simple_rnn_8_while_placeholder.sequential_4/simple_rnn_8/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_4/simple_rnn_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_4/simple_rnn_8/while/add_1AddV2Lsequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_loop_counter0sequential_4/simple_rnn_8/while/add_1/y:output:0*
T0*
_output_shapes
: �
(sequential_4/simple_rnn_8/while/IdentityIdentity)sequential_4/simple_rnn_8/while/add_1:z:0%^sequential_4/simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_8/while/Identity_1IdentityRsequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_maximum_iterations%^sequential_4/simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_8/while/Identity_2Identity'sequential_4/simple_rnn_8/while/add:z:0%^sequential_4/simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_8/while/Identity_3IdentityTsequential_4/simple_rnn_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_4/simple_rnn_8/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_8/while/Identity_4Identity:sequential_4/simple_rnn_8/while/simple_rnn_cell_8/Tanh:y:0%^sequential_4/simple_rnn_8/while/NoOp*
T0*'
_output_shapes
:���������(�
$sequential_4/simple_rnn_8/while/NoOpNoOpI^sequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpH^sequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpJ^sequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_4_simple_rnn_8_while_identity1sequential_4/simple_rnn_8/while/Identity:output:0"a
*sequential_4_simple_rnn_8_while_identity_13sequential_4/simple_rnn_8/while/Identity_1:output:0"a
*sequential_4_simple_rnn_8_while_identity_23sequential_4/simple_rnn_8/while/Identity_2:output:0"a
*sequential_4_simple_rnn_8_while_identity_33sequential_4/simple_rnn_8/while/Identity_3:output:0"a
*sequential_4_simple_rnn_8_while_identity_43sequential_4/simple_rnn_8/while/Identity_4:output:0"�
Isequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_strided_slice_1Ksequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_strided_slice_1_0"�
Qsequential_4_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resourceSsequential_4_simple_rnn_8_while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"�
Rsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resourceTsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"�
Psequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resourceRsequential_4_simple_rnn_8_while_simple_rnn_cell_8_matmul_readvariableop_resource_0"�
�sequential_4_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor�sequential_4_simple_rnn_8_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2�
Hsequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOpHsequential_4/simple_rnn_8/while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2�
Gsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOpGsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul/ReadVariableOp2�
Isequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpIsequential_4/simple_rnn_8/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_30245

inputsO
=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource:(L
>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource:(Q
?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource:((O
=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource:((L
>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource:(Q
?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource:((8
&dense_4_matmul_readvariableop_resource:(5
'dense_4_biasadd_readvariableop_resource:
identity��dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp�4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp�6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp�simple_rnn_8/while�5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp�4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp�6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp�simple_rnn_9/whileb
lambda_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
lambda_8/ExpandDims
ExpandDimsinputs lambda_8/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������^
simple_rnn_8/ShapeShapelambda_8/ExpandDims:output:0*
T0*
_output_shapes
:j
 simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_sliceStridedSlicesimple_rnn_8/Shape:output:0)simple_rnn_8/strided_slice/stack:output:0+simple_rnn_8/strided_slice/stack_1:output:0+simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(�
simple_rnn_8/zeros/packedPack#simple_rnn_8/strided_slice:output:0$simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_8/zerosFill"simple_rnn_8/zeros/packed:output:0!simple_rnn_8/zeros/Const:output:0*
T0*'
_output_shapes
:���������(p
simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_8/transpose	Transposelambda_8/ExpandDims:output:0$simple_rnn_8/transpose/perm:output:0*
T0*+
_output_shapes
:���������^
simple_rnn_8/Shape_1Shapesimple_rnn_8/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_slice_1StridedSlicesimple_rnn_8/Shape_1:output:0+simple_rnn_8/strided_slice_1/stack:output:0-simple_rnn_8/strided_slice_1/stack_1:output:0-simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_8/TensorArrayV2TensorListReserve1simple_rnn_8/TensorArrayV2/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_8/transpose:y:0Ksimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_slice_2StridedSlicesimple_rnn_8/transpose:y:0+simple_rnn_8/strided_slice_2/stack:output:0-simple_rnn_8/strided_slice_2/stack_1:output:0-simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
%simple_rnn_8/simple_rnn_cell_8/MatMulMatMul%simple_rnn_8/strided_slice_2:output:0<simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
&simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0=simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
'simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMulsimple_rnn_8/zeros:output:0>simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
"simple_rnn_8/simple_rnn_cell_8/addAddV2/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:01simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#simple_rnn_8/simple_rnn_cell_8/TanhTanh&simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������({
*simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
simple_rnn_8/TensorArrayV2_1TensorListReserve3simple_rnn_8/TensorArrayV2_1/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_8/whileWhile(simple_rnn_8/while/loop_counter:output:0.simple_rnn_8/while/maximum_iterations:output:0simple_rnn_8/time:output:0%simple_rnn_8/TensorArrayV2_1:handle:0simple_rnn_8/zeros:output:0%simple_rnn_8/strided_slice_1:output:0Dsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_8_while_body_30067*)
cond!R
simple_rnn_8_while_cond_30066*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_8/while:output:3Fsimple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0u
"simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_slice_3StridedSlice8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_8/strided_slice_3/stack:output:0-simple_rnn_8/strided_slice_3/stack_1:output:0-simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maskr
simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_8/transpose_1	Transpose8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(^
simple_rnn_9/ShapeShapesimple_rnn_8/transpose_1:y:0*
T0*
_output_shapes
:j
 simple_rnn_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_sliceStridedSlicesimple_rnn_9/Shape:output:0)simple_rnn_9/strided_slice/stack:output:0+simple_rnn_9/strided_slice/stack_1:output:0+simple_rnn_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(�
simple_rnn_9/zeros/packedPack#simple_rnn_9/strided_slice:output:0$simple_rnn_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_9/zerosFill"simple_rnn_9/zeros/packed:output:0!simple_rnn_9/zeros/Const:output:0*
T0*'
_output_shapes
:���������(p
simple_rnn_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_9/transpose	Transposesimple_rnn_8/transpose_1:y:0$simple_rnn_9/transpose/perm:output:0*
T0*+
_output_shapes
:���������(^
simple_rnn_9/Shape_1Shapesimple_rnn_9/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_slice_1StridedSlicesimple_rnn_9/Shape_1:output:0+simple_rnn_9/strided_slice_1/stack:output:0-simple_rnn_9/strided_slice_1/stack_1:output:0-simple_rnn_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_9/TensorArrayV2TensorListReserve1simple_rnn_9/TensorArrayV2/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
4simple_rnn_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_9/transpose:y:0Ksimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_slice_2StridedSlicesimple_rnn_9/transpose:y:0+simple_rnn_9/strided_slice_2/stack:output:0-simple_rnn_9/strided_slice_2/stack_1:output:0-simple_rnn_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
%simple_rnn_9/simple_rnn_cell_9/MatMulMatMul%simple_rnn_9/strided_slice_2:output:0<simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
&simple_rnn_9/simple_rnn_cell_9/BiasAddBiasAdd/simple_rnn_9/simple_rnn_cell_9/MatMul:product:0=simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
'simple_rnn_9/simple_rnn_cell_9/MatMul_1MatMulsimple_rnn_9/zeros:output:0>simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
"simple_rnn_9/simple_rnn_cell_9/addAddV2/simple_rnn_9/simple_rnn_cell_9/BiasAdd:output:01simple_rnn_9/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#simple_rnn_9/simple_rnn_cell_9/TanhTanh&simple_rnn_9/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������({
*simple_rnn_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
simple_rnn_9/TensorArrayV2_1TensorListReserve3simple_rnn_9/TensorArrayV2_1/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_9/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_9/whileWhile(simple_rnn_9/while/loop_counter:output:0.simple_rnn_9/while/maximum_iterations:output:0simple_rnn_9/time:output:0%simple_rnn_9/TensorArrayV2_1:handle:0simple_rnn_9/zeros:output:0%simple_rnn_9/strided_slice_1:output:0Dsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_9_while_body_30171*)
cond!R
simple_rnn_9_while_cond_30170*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
=simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
/simple_rnn_9/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_9/while:output:3Fsimple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0u
"simple_rnn_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_slice_3StridedSlice8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_9/strided_slice_3/stack:output:0-simple_rnn_9/strided_slice_3/stack_1:output:0-simple_rnn_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maskr
simple_rnn_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_9/transpose_1	Transpose8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
dense_4/MatMulMatMul%simple_rnn_9/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������S
lambda_9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bx
lambda_9/mulMuldense_4/BiasAdd:output:0lambda_9/mul/y:output:0*
T0*'
_output_shapes
:���������_
IdentityIdentitylambda_9/mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp6^simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5^simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp7^simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp^simple_rnn_8/while6^simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5^simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp7^simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp^simple_rnn_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2n
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2l
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2p
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2(
simple_rnn_8/whilesimple_rnn_8/while2n
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp2l
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp2p
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp2(
simple_rnn_9/whilesimple_rnn_9/while:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_31322

inputs
states_00
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
�d
�
!__inference__traced_restore_31561
file_prefix1
assignvariableop_dense_4_kernel:(-
assignvariableop_1_dense_4_bias:%
assignvariableop_2_sgd_iter:	 &
assignvariableop_3_sgd_decay: .
$assignvariableop_4_sgd_learning_rate: )
assignvariableop_5_sgd_momentum: J
8assignvariableop_6_simple_rnn_8_simple_rnn_cell_8_kernel:(T
Bassignvariableop_7_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel:((D
6assignvariableop_8_simple_rnn_8_simple_rnn_cell_8_bias:(J
8assignvariableop_9_simple_rnn_9_simple_rnn_cell_9_kernel:((U
Cassignvariableop_10_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel:((E
7assignvariableop_11_simple_rnn_9_simple_rnn_cell_9_bias:(#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: A
/assignvariableop_16_sgd_dense_4_kernel_momentum:(;
-assignvariableop_17_sgd_dense_4_bias_momentum:X
Fassignvariableop_18_sgd_simple_rnn_8_simple_rnn_cell_8_kernel_momentum:(b
Passignvariableop_19_sgd_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_momentum:((R
Dassignvariableop_20_sgd_simple_rnn_8_simple_rnn_cell_8_bias_momentum:(X
Fassignvariableop_21_sgd_simple_rnn_9_simple_rnn_cell_9_kernel_momentum:((b
Passignvariableop_22_sgd_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_momentum:((R
Dassignvariableop_23_sgd_simple_rnn_9_simple_rnn_cell_9_bias_momentum:(
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp8assignvariableop_6_simple_rnn_8_simple_rnn_cell_8_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpBassignvariableop_7_simple_rnn_8_simple_rnn_cell_8_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp6assignvariableop_8_simple_rnn_8_simple_rnn_cell_8_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp8assignvariableop_9_simple_rnn_9_simple_rnn_cell_9_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpCassignvariableop_10_simple_rnn_9_simple_rnn_cell_9_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp7assignvariableop_11_simple_rnn_9_simple_rnn_cell_9_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_sgd_dense_4_kernel_momentumIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp-assignvariableop_17_sgd_dense_4_bias_momentumIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpFassignvariableop_18_sgd_simple_rnn_8_simple_rnn_cell_8_kernel_momentumIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpPassignvariableop_19_sgd_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_momentumIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpDassignvariableop_20_sgd_simple_rnn_8_simple_rnn_cell_8_bias_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpFassignvariableop_21_sgd_simple_rnn_9_simple_rnn_cell_9_kernel_momentumIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpPassignvariableop_22_sgd_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_momentumIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpDassignvariableop_23_sgd_simple_rnn_9_simple_rnn_cell_9_bias_momentumIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
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
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_29707
lambda_8_input$
simple_rnn_8_29686:( 
simple_rnn_8_29688:($
simple_rnn_8_29690:(($
simple_rnn_9_29693:(( 
simple_rnn_9_29695:($
simple_rnn_9_29697:((
dense_4_29700:(
dense_4_29702:
identity��dense_4/StatefulPartitionedCall�$simple_rnn_8/StatefulPartitionedCall�$simple_rnn_9/StatefulPartitionedCall�
lambda_8/PartitionedCallPartitionedCalllambda_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_8_layer_call_and_return_conditional_losses_29014�
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0simple_rnn_8_29686simple_rnn_8_29688simple_rnn_8_29690*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29123�
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0simple_rnn_9_29693simple_rnn_9_29695simple_rnn_9_29697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29238�
dense_4/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_4_29700dense_4_29702*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_29256�
lambda_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_9_layer_call_and_return_conditional_losses_29268p
IdentityIdentity!lambda_9/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_4/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namelambda_8_input
� 
�
while_body_28770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_9_28792_0:((-
while_simple_rnn_cell_9_28794_0:(1
while_simple_rnn_cell_9_28796_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_9_28792:((+
while_simple_rnn_cell_9_28794:(/
while_simple_rnn_cell_9_28796:((��/while/simple_rnn_cell_9/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
/while/simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_9_28792_0while_simple_rnn_cell_9_28794_0while_simple_rnn_cell_9_28796_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28757�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_9/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_9/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������(~

while/NoOpNoOp0^while/simple_rnn_cell_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_9_28792while_simple_rnn_cell_9_28792_0"@
while_simple_rnn_cell_9_28794while_simple_rnn_cell_9_28794_0"@
while_simple_rnn_cell_9_28796while_simple_rnn_cell_9_28796_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2b
/while/simple_rnn_cell_9/StatefulPartitionedCall/while/simple_rnn_cell_9/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_30936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30936___redundant_placeholder03
/while_while_cond_30936___redundant_placeholder13
/while_while_cond_30936___redundant_placeholder23
/while_while_cond_30936___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�

�
1__inference_simple_rnn_cell_9_layer_call_fn_31350

inputs
states_0
unknown:((
	unknown_0:(
	unknown_1:((
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28877o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������(:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
�
�
'__inference_dense_4_layer_call_fn_31228

inputs
unknown:(
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_29256o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_29271

inputs$
simple_rnn_8_29124:( 
simple_rnn_8_29126:($
simple_rnn_8_29128:(($
simple_rnn_9_29239:(( 
simple_rnn_9_29241:($
simple_rnn_9_29243:((
dense_4_29257:(
dense_4_29259:
identity��dense_4/StatefulPartitionedCall�$simple_rnn_8/StatefulPartitionedCall�$simple_rnn_9/StatefulPartitionedCall�
lambda_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_8_layer_call_and_return_conditional_losses_29014�
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0simple_rnn_8_29124simple_rnn_8_29126simple_rnn_8_29128*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29123�
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0simple_rnn_9_29239simple_rnn_9_29241simple_rnn_9_29243*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29238�
dense_4/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_4_29257dense_4_29259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_29256�
lambda_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_9_layer_call_and_return_conditional_losses_29268p
IdentityIdentity!lambda_9/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_4/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
,__inference_sequential_4_layer_call_fn_29682
lambda_8_input
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_29642o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namelambda_8_input
�3
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_28992

inputs)
simple_rnn_cell_9_28917:((%
simple_rnn_cell_9_28919:()
simple_rnn_cell_9_28921:((
identity��)simple_rnn_cell_9/StatefulPartitionedCall�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
)simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_9_28917simple_rnn_cell_9_28919simple_rnn_cell_9_28921*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28877n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_9_28917simple_rnn_cell_9_28919simple_rnn_cell_9_28921*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_28929*
condR
while_cond_28928*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(z
NoOpNoOp*^simple_rnn_cell_9/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������(: : : 2V
)simple_rnn_cell_9/StatefulPartitionedCall)simple_rnn_cell_9/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������(
 
_user_specified_nameinputs
�,
�
while_body_30677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(G
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_8_matmul_readvariableop_resource:(E
7while_simple_rnn_cell_8_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_8/MatMul/ReadVariableOp�/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_8/TanhTanhwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_8/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
D
(__inference_lambda_9_layer_call_fn_31248

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_9_layer_call_and_return_conditional_losses_29304`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_lambda_8_layer_call_and_return_conditional_losses_29014

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_30023

inputsO
=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource:(L
>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource:(Q
?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource:((O
=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource:((L
>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource:(Q
?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource:((8
&dense_4_matmul_readvariableop_resource:(5
'dense_4_biasadd_readvariableop_resource:
identity��dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp�4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp�6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp�simple_rnn_8/while�5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp�4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp�6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp�simple_rnn_9/whileb
lambda_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
lambda_8/ExpandDims
ExpandDimsinputs lambda_8/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������^
simple_rnn_8/ShapeShapelambda_8/ExpandDims:output:0*
T0*
_output_shapes
:j
 simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_sliceStridedSlicesimple_rnn_8/Shape:output:0)simple_rnn_8/strided_slice/stack:output:0+simple_rnn_8/strided_slice/stack_1:output:0+simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(�
simple_rnn_8/zeros/packedPack#simple_rnn_8/strided_slice:output:0$simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_8/zerosFill"simple_rnn_8/zeros/packed:output:0!simple_rnn_8/zeros/Const:output:0*
T0*'
_output_shapes
:���������(p
simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_8/transpose	Transposelambda_8/ExpandDims:output:0$simple_rnn_8/transpose/perm:output:0*
T0*+
_output_shapes
:���������^
simple_rnn_8/Shape_1Shapesimple_rnn_8/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_slice_1StridedSlicesimple_rnn_8/Shape_1:output:0+simple_rnn_8/strided_slice_1/stack:output:0-simple_rnn_8/strided_slice_1/stack_1:output:0-simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_8/TensorArrayV2TensorListReserve1simple_rnn_8/TensorArrayV2/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_8/transpose:y:0Ksimple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_slice_2StridedSlicesimple_rnn_8/transpose:y:0+simple_rnn_8/strided_slice_2/stack:output:0-simple_rnn_8/strided_slice_2/stack_1:output:0-simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
%simple_rnn_8/simple_rnn_cell_8/MatMulMatMul%simple_rnn_8/strided_slice_2:output:0<simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
&simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0=simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
'simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMulsimple_rnn_8/zeros:output:0>simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
"simple_rnn_8/simple_rnn_cell_8/addAddV2/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:01simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#simple_rnn_8/simple_rnn_cell_8/TanhTanh&simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������({
*simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
simple_rnn_8/TensorArrayV2_1TensorListReserve3simple_rnn_8/TensorArrayV2_1/element_shape:output:0%simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_8/whileWhile(simple_rnn_8/while/loop_counter:output:0.simple_rnn_8/while/maximum_iterations:output:0simple_rnn_8/time:output:0%simple_rnn_8/TensorArrayV2_1:handle:0simple_rnn_8/zeros:output:0%simple_rnn_8/strided_slice_1:output:0Dsimple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource>simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource?simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_8_while_body_29845*)
cond!R
simple_rnn_8_while_cond_29844*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
=simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_8/while:output:3Fsimple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0u
"simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_8/strided_slice_3StridedSlice8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_8/strided_slice_3/stack:output:0-simple_rnn_8/strided_slice_3/stack_1:output:0-simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maskr
simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_8/transpose_1	Transpose8simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(^
simple_rnn_9/ShapeShapesimple_rnn_8/transpose_1:y:0*
T0*
_output_shapes
:j
 simple_rnn_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_sliceStridedSlicesimple_rnn_9/Shape:output:0)simple_rnn_9/strided_slice/stack:output:0+simple_rnn_9/strided_slice/stack_1:output:0+simple_rnn_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(�
simple_rnn_9/zeros/packedPack#simple_rnn_9/strided_slice:output:0$simple_rnn_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_9/zerosFill"simple_rnn_9/zeros/packed:output:0!simple_rnn_9/zeros/Const:output:0*
T0*'
_output_shapes
:���������(p
simple_rnn_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_9/transpose	Transposesimple_rnn_8/transpose_1:y:0$simple_rnn_9/transpose/perm:output:0*
T0*+
_output_shapes
:���������(^
simple_rnn_9/Shape_1Shapesimple_rnn_9/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_slice_1StridedSlicesimple_rnn_9/Shape_1:output:0+simple_rnn_9/strided_slice_1/stack:output:0-simple_rnn_9/strided_slice_1/stack_1:output:0-simple_rnn_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_9/TensorArrayV2TensorListReserve1simple_rnn_9/TensorArrayV2/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
4simple_rnn_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_9/transpose:y:0Ksimple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_slice_2StridedSlicesimple_rnn_9/transpose:y:0+simple_rnn_9/strided_slice_2/stack:output:0-simple_rnn_9/strided_slice_2/stack_1:output:0-simple_rnn_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
%simple_rnn_9/simple_rnn_cell_9/MatMulMatMul%simple_rnn_9/strided_slice_2:output:0<simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
&simple_rnn_9/simple_rnn_cell_9/BiasAddBiasAdd/simple_rnn_9/simple_rnn_cell_9/MatMul:product:0=simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
'simple_rnn_9/simple_rnn_cell_9/MatMul_1MatMulsimple_rnn_9/zeros:output:0>simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
"simple_rnn_9/simple_rnn_cell_9/addAddV2/simple_rnn_9/simple_rnn_cell_9/BiasAdd:output:01simple_rnn_9/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
#simple_rnn_9/simple_rnn_cell_9/TanhTanh&simple_rnn_9/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������({
*simple_rnn_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
simple_rnn_9/TensorArrayV2_1TensorListReserve3simple_rnn_9/TensorArrayV2_1/element_shape:output:0%simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_9/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_9/whileWhile(simple_rnn_9/while/loop_counter:output:0.simple_rnn_9/while/maximum_iterations:output:0simple_rnn_9/time:output:0%simple_rnn_9/TensorArrayV2_1:handle:0simple_rnn_9/zeros:output:0%simple_rnn_9/strided_slice_1:output:0Dsimple_rnn_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource>simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource?simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_9_while_body_29949*)
cond!R
simple_rnn_9_while_cond_29948*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
=simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
/simple_rnn_9/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_9/while:output:3Fsimple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0u
"simple_rnn_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_9/strided_slice_3StridedSlice8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_9/strided_slice_3/stack:output:0-simple_rnn_9/strided_slice_3/stack_1:output:0-simple_rnn_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maskr
simple_rnn_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_9/transpose_1	Transpose8simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
dense_4/MatMulMatMul%simple_rnn_9/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������S
lambda_9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bx
lambda_9/mulMuldense_4/BiasAdd:output:0lambda_9/mul/y:output:0*
T0*'
_output_shapes
:���������_
IdentityIdentitylambda_9/mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp6^simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5^simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp7^simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp^simple_rnn_8/while6^simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5^simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp7^simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp^simple_rnn_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2n
5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp5simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2l
4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp4simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2p
6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp6simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2(
simple_rnn_8/whilesimple_rnn_8/while2n
5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp5simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp2l
4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp4simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp2p
6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp6simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp2(
simple_rnn_9/whilesimple_rnn_9/while:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_28477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_28477___redundant_placeholder03
/while_while_cond_28477___redundant_placeholder13
/while_while_cond_28477___redundant_placeholder23
/while_while_cond_28477___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�8
�
simple_rnn_9_while_body_301716
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_25
1simple_rnn_9_while_simple_rnn_9_strided_slice_1_0q
msimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((T
Fsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(Y
Gsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
simple_rnn_9_while_identity!
simple_rnn_9_while_identity_1!
simple_rnn_9_while_identity_2!
simple_rnn_9_while_identity_3!
simple_rnn_9_while_identity_43
/simple_rnn_9_while_simple_rnn_9_strided_slice_1o
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource:((R
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource:(W
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp�<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
Dsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
6simple_rnn_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_9_while_placeholderMsimple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
+simple_rnn_9/while/simple_rnn_cell_9/MatMulMatMul=simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
,simple_rnn_9/while/simple_rnn_cell_9/BiasAddBiasAdd5simple_rnn_9/while/simple_rnn_cell_9/MatMul:product:0Csimple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
-simple_rnn_9/while/simple_rnn_cell_9/MatMul_1MatMul simple_rnn_9_while_placeholder_2Dsimple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_9/while/simple_rnn_cell_9/addAddV25simple_rnn_9/while/simple_rnn_cell_9/BiasAdd:output:07simple_rnn_9/while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_9/while/simple_rnn_cell_9/TanhTanh,simple_rnn_9/while/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
7simple_rnn_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_9_while_placeholder_1simple_rnn_9_while_placeholder-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_9/while/addAddV2simple_rnn_9_while_placeholder!simple_rnn_9/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_9/while/add_1AddV22simple_rnn_9_while_simple_rnn_9_while_loop_counter#simple_rnn_9/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/add_1:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_1Identity8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_2Identitysimple_rnn_9/while/add:z:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_3IdentityGsimple_rnn_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_9/while/Identity_4Identity-simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0^simple_rnn_9/while/NoOp*
T0*'
_output_shapes
:���������(�
simple_rnn_9/while/NoOpNoOp<^simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;^simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp=^simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0"G
simple_rnn_9_while_identity_1&simple_rnn_9/while/Identity_1:output:0"G
simple_rnn_9_while_identity_2&simple_rnn_9/while/Identity_2:output:0"G
simple_rnn_9_while_identity_3&simple_rnn_9/while/Identity_3:output:0"G
simple_rnn_9_while_identity_4&simple_rnn_9/while/Identity_4:output:0"d
/simple_rnn_9_while_simple_rnn_9_strided_slice_11simple_rnn_9_while_simple_rnn_9_strided_slice_1_0"�
Dsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resourceFsimple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"�
Esimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resourceGsimple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"�
Csimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resourceEsimple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0"�
ksimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensormsimple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2z
;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp;simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2x
:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp2|
<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp<simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
,__inference_simple_rnn_8_layer_call_fn_30300

inputs
unknown:(
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29123s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_simple_rnn_8_layer_call_fn_30278
inputs_0
unknown:(
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_28541|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
D
(__inference_lambda_9_layer_call_fn_31243

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_9_layer_call_and_return_conditional_losses_29268`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_lambda_8_layer_call_and_return_conditional_losses_30261

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_simple_rnn_8_layer_call_fn_30311

inputs
unknown:(
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29568s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�,
�
while_body_31153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_9_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_9/MatMul/ReadVariableOp�/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�4
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_28541

inputs)
simple_rnn_cell_8_28466:(%
simple_rnn_cell_8_28468:()
simple_rnn_cell_8_28470:((
identity��)simple_rnn_cell_8/StatefulPartitionedCall�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
)simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_8_28466simple_rnn_cell_8_28468simple_rnn_cell_8_28470*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28465n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_8_28466simple_rnn_cell_8_28468simple_rnn_cell_8_28470*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_28478*
condR
while_cond_28477*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������(z
NoOpNoOp*^simple_rnn_cell_8/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_8/StatefulPartitionedCall)simple_rnn_cell_8/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
,__inference_simple_rnn_9_layer_call_fn_30787

inputs
unknown:((
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29438o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�D
�
*sequential_4_simple_rnn_9_while_body_28343P
Lsequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_loop_counterV
Rsequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_maximum_iterations/
+sequential_4_simple_rnn_9_while_placeholder1
-sequential_4_simple_rnn_9_while_placeholder_11
-sequential_4_simple_rnn_9_while_placeholder_2O
Ksequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_strided_slice_1_0�
�sequential_4_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((a
Ssequential_4_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(f
Tsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((,
(sequential_4_simple_rnn_9_while_identity.
*sequential_4_simple_rnn_9_while_identity_1.
*sequential_4_simple_rnn_9_while_identity_2.
*sequential_4_simple_rnn_9_while_identity_3.
*sequential_4_simple_rnn_9_while_identity_4M
Isequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_strided_slice_1�
�sequential_4_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_9_tensorarrayunstack_tensorlistfromtensorb
Psequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource:((_
Qsequential_4_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource:(d
Rsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��Hsequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�Gsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp�Isequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
Qsequential_4/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
Csequential_4/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_4_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0+sequential_4_simple_rnn_9_while_placeholderZsequential_4/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
Gsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpRsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
8sequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMulMatMulJsequential_4/simple_rnn_9/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Hsequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpSsequential_4_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
9sequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAddBiasAddBsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul:product:0Psequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Isequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpTsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
:sequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1MatMul-sequential_4_simple_rnn_9_while_placeholder_2Qsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
5sequential_4/simple_rnn_9/while/simple_rnn_cell_9/addAddV2Bsequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd:output:0Dsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
6sequential_4/simple_rnn_9/while/simple_rnn_cell_9/TanhTanh9sequential_4/simple_rnn_9/while/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
Dsequential_4/simple_rnn_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_4_simple_rnn_9_while_placeholder_1+sequential_4_simple_rnn_9_while_placeholder:sequential_4/simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���g
%sequential_4/simple_rnn_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_4/simple_rnn_9/while/addAddV2+sequential_4_simple_rnn_9_while_placeholder.sequential_4/simple_rnn_9/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_4/simple_rnn_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_4/simple_rnn_9/while/add_1AddV2Lsequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_loop_counter0sequential_4/simple_rnn_9/while/add_1/y:output:0*
T0*
_output_shapes
: �
(sequential_4/simple_rnn_9/while/IdentityIdentity)sequential_4/simple_rnn_9/while/add_1:z:0%^sequential_4/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_9/while/Identity_1IdentityRsequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_maximum_iterations%^sequential_4/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_9/while/Identity_2Identity'sequential_4/simple_rnn_9/while/add:z:0%^sequential_4/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_9/while/Identity_3IdentityTsequential_4/simple_rnn_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_4/simple_rnn_9/while/NoOp*
T0*
_output_shapes
: �
*sequential_4/simple_rnn_9/while/Identity_4Identity:sequential_4/simple_rnn_9/while/simple_rnn_cell_9/Tanh:y:0%^sequential_4/simple_rnn_9/while/NoOp*
T0*'
_output_shapes
:���������(�
$sequential_4/simple_rnn_9/while/NoOpNoOpI^sequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpH^sequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpJ^sequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_4_simple_rnn_9_while_identity1sequential_4/simple_rnn_9/while/Identity:output:0"a
*sequential_4_simple_rnn_9_while_identity_13sequential_4/simple_rnn_9/while/Identity_1:output:0"a
*sequential_4_simple_rnn_9_while_identity_23sequential_4/simple_rnn_9/while/Identity_2:output:0"a
*sequential_4_simple_rnn_9_while_identity_33sequential_4/simple_rnn_9/while/Identity_3:output:0"a
*sequential_4_simple_rnn_9_while_identity_43sequential_4/simple_rnn_9/while/Identity_4:output:0"�
Isequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_strided_slice_1Ksequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_strided_slice_1_0"�
Qsequential_4_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resourceSsequential_4_simple_rnn_9_while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"�
Rsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resourceTsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"�
Psequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resourceRsequential_4_simple_rnn_9_while_simple_rnn_cell_9_matmul_readvariableop_resource_0"�
�sequential_4_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor�sequential_4_simple_rnn_9_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2�
Hsequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOpHsequential_4/simple_rnn_9/while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2�
Gsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOpGsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul/ReadVariableOp2�
Isequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpIsequential_4/simple_rnn_9/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�=
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31003
inputs_0B
0simple_rnn_cell_9_matmul_readvariableop_resource:((?
1simple_rnn_cell_9_biasadd_readvariableop_resource:(D
2simple_rnn_cell_9_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_9/BiasAdd/ReadVariableOp�'simple_rnn_cell_9/MatMul/ReadVariableOp�)simple_rnn_cell_9/MatMul_1/ReadVariableOp�while=
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30937*
condR
while_cond_30936*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������(: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������(
"
_user_specified_name
inputs/0
Ͷ
�

 __inference__wrapped_model_28417
lambda_8_input\
Jsequential_4_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource:(Y
Ksequential_4_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource:(^
Lsequential_4_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource:((\
Jsequential_4_simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource:((Y
Ksequential_4_simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource:(^
Lsequential_4_simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource:((E
3sequential_4_dense_4_matmul_readvariableop_resource:(B
4sequential_4_dense_4_biasadd_readvariableop_resource:
identity��+sequential_4/dense_4/BiasAdd/ReadVariableOp�*sequential_4/dense_4/MatMul/ReadVariableOp�Bsequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp�Asequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp�Csequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp�sequential_4/simple_rnn_8/while�Bsequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp�Asequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp�Csequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp�sequential_4/simple_rnn_9/whileo
$sequential_4/lambda_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
 sequential_4/lambda_8/ExpandDims
ExpandDimslambda_8_input-sequential_4/lambda_8/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������x
sequential_4/simple_rnn_8/ShapeShape)sequential_4/lambda_8/ExpandDims:output:0*
T0*
_output_shapes
:w
-sequential_4/simple_rnn_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_4/simple_rnn_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_4/simple_rnn_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_4/simple_rnn_8/strided_sliceStridedSlice(sequential_4/simple_rnn_8/Shape:output:06sequential_4/simple_rnn_8/strided_slice/stack:output:08sequential_4/simple_rnn_8/strided_slice/stack_1:output:08sequential_4/simple_rnn_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_4/simple_rnn_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(�
&sequential_4/simple_rnn_8/zeros/packedPack0sequential_4/simple_rnn_8/strided_slice:output:01sequential_4/simple_rnn_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_4/simple_rnn_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_4/simple_rnn_8/zerosFill/sequential_4/simple_rnn_8/zeros/packed:output:0.sequential_4/simple_rnn_8/zeros/Const:output:0*
T0*'
_output_shapes
:���������(}
(sequential_4/simple_rnn_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_4/simple_rnn_8/transpose	Transpose)sequential_4/lambda_8/ExpandDims:output:01sequential_4/simple_rnn_8/transpose/perm:output:0*
T0*+
_output_shapes
:���������x
!sequential_4/simple_rnn_8/Shape_1Shape'sequential_4/simple_rnn_8/transpose:y:0*
T0*
_output_shapes
:y
/sequential_4/simple_rnn_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_4/simple_rnn_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_4/simple_rnn_8/strided_slice_1StridedSlice*sequential_4/simple_rnn_8/Shape_1:output:08sequential_4/simple_rnn_8/strided_slice_1/stack:output:0:sequential_4/simple_rnn_8/strided_slice_1/stack_1:output:0:sequential_4/simple_rnn_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_4/simple_rnn_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
'sequential_4/simple_rnn_8/TensorArrayV2TensorListReserve>sequential_4/simple_rnn_8/TensorArrayV2/element_shape:output:02sequential_4/simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Osequential_4/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_4/simple_rnn_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_4/simple_rnn_8/transpose:y:0Xsequential_4/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���y
/sequential_4/simple_rnn_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_4/simple_rnn_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_4/simple_rnn_8/strided_slice_2StridedSlice'sequential_4/simple_rnn_8/transpose:y:08sequential_4/simple_rnn_8/strided_slice_2/stack:output:0:sequential_4/simple_rnn_8/strided_slice_2/stack_1:output:0:sequential_4/simple_rnn_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Asequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOpJsequential_4_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
2sequential_4/simple_rnn_8/simple_rnn_cell_8/MatMulMatMul2sequential_4/simple_rnn_8/strided_slice_2:output:0Isequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Bsequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOpKsequential_4_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
3sequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAddBiasAdd<sequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul:product:0Jsequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOpLsequential_4_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
4sequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1MatMul(sequential_4/simple_rnn_8/zeros:output:0Ksequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_4/simple_rnn_8/simple_rnn_cell_8/addAddV2<sequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAdd:output:0>sequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
0sequential_4/simple_rnn_8/simple_rnn_cell_8/TanhTanh3sequential_4/simple_rnn_8/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
7sequential_4/simple_rnn_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)sequential_4/simple_rnn_8/TensorArrayV2_1TensorListReserve@sequential_4/simple_rnn_8/TensorArrayV2_1/element_shape:output:02sequential_4/simple_rnn_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���`
sequential_4/simple_rnn_8/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_4/simple_rnn_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������n
,sequential_4/simple_rnn_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_4/simple_rnn_8/whileWhile5sequential_4/simple_rnn_8/while/loop_counter:output:0;sequential_4/simple_rnn_8/while/maximum_iterations:output:0'sequential_4/simple_rnn_8/time:output:02sequential_4/simple_rnn_8/TensorArrayV2_1:handle:0(sequential_4/simple_rnn_8/zeros:output:02sequential_4/simple_rnn_8/strided_slice_1:output:0Qsequential_4/simple_rnn_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_4_simple_rnn_8_simple_rnn_cell_8_matmul_readvariableop_resourceKsequential_4_simple_rnn_8_simple_rnn_cell_8_biasadd_readvariableop_resourceLsequential_4_simple_rnn_8_simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *6
body.R,
*sequential_4_simple_rnn_8_while_body_28239*6
cond.R,
*sequential_4_simple_rnn_8_while_cond_28238*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
Jsequential_4/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
<sequential_4/simple_rnn_8/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_4/simple_rnn_8/while:output:3Ssequential_4/simple_rnn_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0�
/sequential_4/simple_rnn_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1sequential_4/simple_rnn_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_4/simple_rnn_8/strided_slice_3StridedSliceEsequential_4/simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:08sequential_4/simple_rnn_8/strided_slice_3/stack:output:0:sequential_4/simple_rnn_8/strided_slice_3/stack_1:output:0:sequential_4/simple_rnn_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask
*sequential_4/simple_rnn_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_4/simple_rnn_8/transpose_1	TransposeEsequential_4/simple_rnn_8/TensorArrayV2Stack/TensorListStack:tensor:03sequential_4/simple_rnn_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(x
sequential_4/simple_rnn_9/ShapeShape)sequential_4/simple_rnn_8/transpose_1:y:0*
T0*
_output_shapes
:w
-sequential_4/simple_rnn_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_4/simple_rnn_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_4/simple_rnn_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_4/simple_rnn_9/strided_sliceStridedSlice(sequential_4/simple_rnn_9/Shape:output:06sequential_4/simple_rnn_9/strided_slice/stack:output:08sequential_4/simple_rnn_9/strided_slice/stack_1:output:08sequential_4/simple_rnn_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_4/simple_rnn_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(�
&sequential_4/simple_rnn_9/zeros/packedPack0sequential_4/simple_rnn_9/strided_slice:output:01sequential_4/simple_rnn_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_4/simple_rnn_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_4/simple_rnn_9/zerosFill/sequential_4/simple_rnn_9/zeros/packed:output:0.sequential_4/simple_rnn_9/zeros/Const:output:0*
T0*'
_output_shapes
:���������(}
(sequential_4/simple_rnn_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_4/simple_rnn_9/transpose	Transpose)sequential_4/simple_rnn_8/transpose_1:y:01sequential_4/simple_rnn_9/transpose/perm:output:0*
T0*+
_output_shapes
:���������(x
!sequential_4/simple_rnn_9/Shape_1Shape'sequential_4/simple_rnn_9/transpose:y:0*
T0*
_output_shapes
:y
/sequential_4/simple_rnn_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_4/simple_rnn_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_4/simple_rnn_9/strided_slice_1StridedSlice*sequential_4/simple_rnn_9/Shape_1:output:08sequential_4/simple_rnn_9/strided_slice_1/stack:output:0:sequential_4/simple_rnn_9/strided_slice_1/stack_1:output:0:sequential_4/simple_rnn_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_4/simple_rnn_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
'sequential_4/simple_rnn_9/TensorArrayV2TensorListReserve>sequential_4/simple_rnn_9/TensorArrayV2/element_shape:output:02sequential_4/simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Osequential_4/simple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
Asequential_4/simple_rnn_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_4/simple_rnn_9/transpose:y:0Xsequential_4/simple_rnn_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���y
/sequential_4/simple_rnn_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_4/simple_rnn_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_4/simple_rnn_9/strided_slice_2StridedSlice'sequential_4/simple_rnn_9/transpose:y:08sequential_4/simple_rnn_9/strided_slice_2/stack:output:0:sequential_4/simple_rnn_9/strided_slice_2/stack_1:output:0:sequential_4/simple_rnn_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
Asequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOpJsequential_4_simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
2sequential_4/simple_rnn_9/simple_rnn_cell_9/MatMulMatMul2sequential_4/simple_rnn_9/strided_slice_2:output:0Isequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Bsequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOpKsequential_4_simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
3sequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAddBiasAdd<sequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul:product:0Jsequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
Csequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOpLsequential_4_simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
4sequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1MatMul(sequential_4/simple_rnn_9/zeros:output:0Ksequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/sequential_4/simple_rnn_9/simple_rnn_cell_9/addAddV2<sequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAdd:output:0>sequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(�
0sequential_4/simple_rnn_9/simple_rnn_cell_9/TanhTanh3sequential_4/simple_rnn_9/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
7sequential_4/simple_rnn_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)sequential_4/simple_rnn_9/TensorArrayV2_1TensorListReserve@sequential_4/simple_rnn_9/TensorArrayV2_1/element_shape:output:02sequential_4/simple_rnn_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���`
sequential_4/simple_rnn_9/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_4/simple_rnn_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������n
,sequential_4/simple_rnn_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_4/simple_rnn_9/whileWhile5sequential_4/simple_rnn_9/while/loop_counter:output:0;sequential_4/simple_rnn_9/while/maximum_iterations:output:0'sequential_4/simple_rnn_9/time:output:02sequential_4/simple_rnn_9/TensorArrayV2_1:handle:0(sequential_4/simple_rnn_9/zeros:output:02sequential_4/simple_rnn_9/strided_slice_1:output:0Qsequential_4/simple_rnn_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_4_simple_rnn_9_simple_rnn_cell_9_matmul_readvariableop_resourceKsequential_4_simple_rnn_9_simple_rnn_cell_9_biasadd_readvariableop_resourceLsequential_4_simple_rnn_9_simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *6
body.R,
*sequential_4_simple_rnn_9_while_body_28343*6
cond.R,
*sequential_4_simple_rnn_9_while_cond_28342*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
Jsequential_4/simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
<sequential_4/simple_rnn_9/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_4/simple_rnn_9/while:output:3Ssequential_4/simple_rnn_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0�
/sequential_4/simple_rnn_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1sequential_4/simple_rnn_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_4/simple_rnn_9/strided_slice_3StridedSliceEsequential_4/simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:08sequential_4/simple_rnn_9/strided_slice_3/stack:output:0:sequential_4/simple_rnn_9/strided_slice_3/stack_1:output:0:sequential_4/simple_rnn_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask
*sequential_4/simple_rnn_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_4/simple_rnn_9/transpose_1	TransposeEsequential_4/simple_rnn_9/TensorArrayV2Stack/TensorListStack:tensor:03sequential_4/simple_rnn_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(�
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
sequential_4/dense_4/MatMulMatMul2sequential_4/simple_rnn_9/strided_slice_3:output:02sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_4/dense_4/BiasAddBiasAdd%sequential_4/dense_4/MatMul:product:03sequential_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
sequential_4/lambda_9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
sequential_4/lambda_9/mulMul%sequential_4/dense_4/BiasAdd:output:0$sequential_4/lambda_9/mul/y:output:0*
T0*'
_output_shapes
:���������l
IdentityIdentitysequential_4/lambda_9/mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^sequential_4/dense_4/BiasAdd/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOpC^sequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpB^sequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpD^sequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp ^sequential_4/simple_rnn_8/whileC^sequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpB^sequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpD^sequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp ^sequential_4/simple_rnn_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2Z
+sequential_4/dense_4/BiasAdd/ReadVariableOp+sequential_4/dense_4/BiasAdd/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp2�
Bsequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOpBsequential_4/simple_rnn_8/simple_rnn_cell_8/BiasAdd/ReadVariableOp2�
Asequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOpAsequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul/ReadVariableOp2�
Csequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOpCsequential_4/simple_rnn_8/simple_rnn_cell_8/MatMul_1/ReadVariableOp2B
sequential_4/simple_rnn_8/whilesequential_4/simple_rnn_8/while2�
Bsequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOpBsequential_4/simple_rnn_9/simple_rnn_cell_9/BiasAdd/ReadVariableOp2�
Asequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOpAsequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul/ReadVariableOp2�
Csequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOpCsequential_4/simple_rnn_9/simple_rnn_cell_9/MatMul_1/ReadVariableOp2B
sequential_4/simple_rnn_9/whilesequential_4/simple_rnn_9/while:W S
'
_output_shapes
:���������
(
_user_specified_namelambda_8_input
�=
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29123

inputsB
0simple_rnn_cell_8_matmul_readvariableop_resource:(?
1simple_rnn_cell_8_biasadd_readvariableop_resource:(D
2simple_rnn_cell_8_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_8/BiasAdd/ReadVariableOp�'simple_rnn_cell_8/MatMul/ReadVariableOp�)simple_rnn_cell_8/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_8/TanhTanhsimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29057*
condR
while_cond_29056*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28585

inputs

states0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������(
 
_user_specified_namestates
�	
�
B__inference_dense_4_layer_call_and_return_conditional_losses_29256

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
,__inference_sequential_4_layer_call_fn_29290
lambda_8_input
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_29271o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namelambda_8_input
�

�
1__inference_simple_rnn_cell_8_layer_call_fn_31274

inputs
states_0
unknown:(
	unknown_0:(
	unknown_1:((
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28465o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
�,
�
while_body_30829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_9_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_9/MatMul/ReadVariableOp�/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�

�
simple_rnn_9_while_cond_299486
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_28
4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_29948___redundant_placeholder0M
Isimple_rnn_9_while_simple_rnn_9_while_cond_29948___redundant_placeholder1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_29948___redundant_placeholder2M
Isimple_rnn_9_while_simple_rnn_9_while_cond_29948___redundant_placeholder3
simple_rnn_9_while_identity
�
simple_rnn_9/while/LessLesssimple_rnn_9_while_placeholder4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�=
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_30895
inputs_0B
0simple_rnn_cell_9_matmul_readvariableop_resource:((?
1simple_rnn_cell_9_biasadd_readvariableop_resource:(D
2simple_rnn_cell_9_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_9/BiasAdd/ReadVariableOp�'simple_rnn_cell_9/MatMul/ReadVariableOp�)simple_rnn_cell_9/MatMul_1/ReadVariableOp�while=
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30829*
condR
while_cond_30828*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������(: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������(
"
_user_specified_name
inputs/0
�
_
C__inference_lambda_9_layer_call_and_return_conditional_losses_31254

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �BT
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28465

inputs

states0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������(
 
_user_specified_namestates
�
�
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_31384

inputs
states_00
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������(:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
�=
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30743

inputsB
0simple_rnn_cell_8_matmul_readvariableop_resource:(?
1simple_rnn_cell_8_biasadd_readvariableop_resource:(D
2simple_rnn_cell_8_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_8/BiasAdd/ReadVariableOp�'simple_rnn_cell_8/MatMul/ReadVariableOp�)simple_rnn_cell_8/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_8/TanhTanhsimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30677*
condR
while_cond_30676*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�,
�
while_body_30569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(G
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_8_matmul_readvariableop_resource:(E
7while_simple_rnn_cell_8_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_8/MatMul/ReadVariableOp�/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_8/TanhTanhwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_8/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�,
�
while_body_30461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(G
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_8_matmul_readvariableop_resource:(E
7while_simple_rnn_cell_8_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_8/MatMul/ReadVariableOp�/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_8/TanhTanhwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_8/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
*sequential_4_simple_rnn_9_while_cond_28342P
Lsequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_loop_counterV
Rsequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_maximum_iterations/
+sequential_4_simple_rnn_9_while_placeholder1
-sequential_4_simple_rnn_9_while_placeholder_11
-sequential_4_simple_rnn_9_while_placeholder_2R
Nsequential_4_simple_rnn_9_while_less_sequential_4_simple_rnn_9_strided_slice_1g
csequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_cond_28342___redundant_placeholder0g
csequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_cond_28342___redundant_placeholder1g
csequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_cond_28342___redundant_placeholder2g
csequential_4_simple_rnn_9_while_sequential_4_simple_rnn_9_while_cond_28342___redundant_placeholder3,
(sequential_4_simple_rnn_9_while_identity
�
$sequential_4/simple_rnn_9/while/LessLess+sequential_4_simple_rnn_9_while_placeholderNsequential_4_simple_rnn_9_while_less_sequential_4_simple_rnn_9_strided_slice_1*
T0*
_output_shapes
: 
(sequential_4/simple_rnn_9/while/IdentityIdentity(sequential_4/simple_rnn_9/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_4_simple_rnn_9_while_identity1sequential_4/simple_rnn_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
�
*sequential_4_simple_rnn_8_while_cond_28238P
Lsequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_loop_counterV
Rsequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_maximum_iterations/
+sequential_4_simple_rnn_8_while_placeholder1
-sequential_4_simple_rnn_8_while_placeholder_11
-sequential_4_simple_rnn_8_while_placeholder_2R
Nsequential_4_simple_rnn_8_while_less_sequential_4_simple_rnn_8_strided_slice_1g
csequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_cond_28238___redundant_placeholder0g
csequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_cond_28238___redundant_placeholder1g
csequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_cond_28238___redundant_placeholder2g
csequential_4_simple_rnn_8_while_sequential_4_simple_rnn_8_while_cond_28238___redundant_placeholder3,
(sequential_4_simple_rnn_8_while_identity
�
$sequential_4/simple_rnn_8/while/LessLess+sequential_4_simple_rnn_8_while_placeholderNsequential_4_simple_rnn_8_while_less_sequential_4_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: 
(sequential_4/simple_rnn_8/while/IdentityIdentity(sequential_4/simple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_4_simple_rnn_8_while_identity1sequential_4/simple_rnn_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
�
,__inference_simple_rnn_9_layer_call_fn_30776

inputs
unknown:((
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�=
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31111

inputsB
0simple_rnn_cell_9_matmul_readvariableop_resource:((?
1simple_rnn_cell_9_biasadd_readvariableop_resource:(D
2simple_rnn_cell_9_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_9/BiasAdd/ReadVariableOp�'simple_rnn_cell_9/MatMul/ReadVariableOp�)simple_rnn_cell_9/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_31045*
condR
while_cond_31044*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28757

inputs

states0
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������(:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������(
 
_user_specified_namestates
�
�
while_cond_28636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_28636___redundant_placeholder03
/while_while_cond_28636___redundant_placeholder13
/while_while_cond_28636___redundant_placeholder23
/while_while_cond_28636___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�

�
simple_rnn_8_while_cond_300666
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_28
4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_30066___redundant_placeholder0M
Isimple_rnn_8_while_simple_rnn_8_while_cond_30066___redundant_placeholder1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_30066___redundant_placeholder2M
Isimple_rnn_8_while_simple_rnn_8_while_cond_30066___redundant_placeholder3
simple_rnn_8_while_identity
�
simple_rnn_8/while/LessLesssimple_rnn_8_while_placeholder4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�=
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29238

inputsB
0simple_rnn_cell_9_matmul_readvariableop_resource:((?
1simple_rnn_cell_9_biasadd_readvariableop_resource:(D
2simple_rnn_cell_9_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_9/BiasAdd/ReadVariableOp�'simple_rnn_cell_9/MatMul/ReadVariableOp�)simple_rnn_cell_9/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29172*
condR
while_cond_29171*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
_
C__inference_lambda_9_layer_call_and_return_conditional_losses_29304

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �BT
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�=
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30419
inputs_0B
0simple_rnn_cell_8_matmul_readvariableop_resource:(?
1simple_rnn_cell_8_biasadd_readvariableop_resource:(D
2simple_rnn_cell_8_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_8/BiasAdd/ReadVariableOp�'simple_rnn_cell_8/MatMul/ReadVariableOp�)simple_rnn_cell_8/MatMul_1/ReadVariableOp�while=
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_8/TanhTanhsimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_30353*
condR
while_cond_30352*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������(�
NoOpNoOp)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�:
�
__inference__traced_save_31479
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableopD
@savev2_simple_rnn_8_simple_rnn_cell_8_kernel_read_readvariableopN
Jsavev2_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_8_simple_rnn_cell_8_bias_read_readvariableopD
@savev2_simple_rnn_9_simple_rnn_cell_9_kernel_read_readvariableopN
Jsavev2_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_9_simple_rnn_cell_9_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_sgd_dense_4_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_4_bias_momentum_read_readvariableopQ
Msavev2_sgd_simple_rnn_8_simple_rnn_cell_8_kernel_momentum_read_readvariableop[
Wsavev2_sgd_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_momentum_read_readvariableopO
Ksavev2_sgd_simple_rnn_8_simple_rnn_cell_8_bias_momentum_read_readvariableopQ
Msavev2_sgd_simple_rnn_9_simple_rnn_cell_9_kernel_momentum_read_readvariableop[
Wsavev2_sgd_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_momentum_read_readvariableopO
Ksavev2_sgd_simple_rnn_9_simple_rnn_cell_9_bias_momentum_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/4/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/5/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop@savev2_simple_rnn_8_simple_rnn_cell_8_kernel_read_readvariableopJsavev2_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_read_readvariableop>savev2_simple_rnn_8_simple_rnn_cell_8_bias_read_readvariableop@savev2_simple_rnn_9_simple_rnn_cell_9_kernel_read_readvariableopJsavev2_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_read_readvariableop>savev2_simple_rnn_9_simple_rnn_cell_9_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_sgd_dense_4_kernel_momentum_read_readvariableop4savev2_sgd_dense_4_bias_momentum_read_readvariableopMsavev2_sgd_simple_rnn_8_simple_rnn_cell_8_kernel_momentum_read_readvariableopWsavev2_sgd_simple_rnn_8_simple_rnn_cell_8_recurrent_kernel_momentum_read_readvariableopKsavev2_sgd_simple_rnn_8_simple_rnn_cell_8_bias_momentum_read_readvariableopMsavev2_sgd_simple_rnn_9_simple_rnn_cell_9_kernel_momentum_read_readvariableopWsavev2_sgd_simple_rnn_9_simple_rnn_cell_9_recurrent_kernel_momentum_read_readvariableopKsavev2_sgd_simple_rnn_9_simple_rnn_cell_9_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :(:: : : : :(:((:(:((:((:(: : : : :(::(:((:(:((:((:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:(: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$ 

_output_shapes

:((: 	

_output_shapes
:(:$
 

_output_shapes

:((:$ 

_output_shapes

:((: 

_output_shapes
:(:
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
: :$ 

_output_shapes

:(: 

_output_shapes
::$ 

_output_shapes

:(:$ 

_output_shapes

:((: 

_output_shapes
:(:$ 

_output_shapes

:((:$ 

_output_shapes

:((: 

_output_shapes
:(:

_output_shapes
: 
�,
�
while_body_30353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(G
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_8_matmul_readvariableop_resource:(E
7while_simple_rnn_cell_8_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_8/MatMul/ReadVariableOp�/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_8/TanhTanhwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_8/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_sequential_4_layer_call_and_return_conditional_losses_29732
lambda_8_input$
simple_rnn_8_29711:( 
simple_rnn_8_29713:($
simple_rnn_8_29715:(($
simple_rnn_9_29718:(( 
simple_rnn_9_29720:($
simple_rnn_9_29722:((
dense_4_29725:(
dense_4_29727:
identity��dense_4/StatefulPartitionedCall�$simple_rnn_8/StatefulPartitionedCall�$simple_rnn_9/StatefulPartitionedCall�
lambda_8/PartitionedCallPartitionedCalllambda_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_8_layer_call_and_return_conditional_losses_29591�
$simple_rnn_8/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0simple_rnn_8_29711simple_rnn_8_29713simple_rnn_8_29715*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29568�
$simple_rnn_9/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_8/StatefulPartitionedCall:output:0simple_rnn_9_29718simple_rnn_9_29720simple_rnn_9_29722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_29438�
dense_4/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_9/StatefulPartitionedCall:output:0dense_4_29725dense_4_29727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_29256�
lambda_9/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_9_layer_call_and_return_conditional_losses_29304p
IdentityIdentity!lambda_9/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_4/StatefulPartitionedCall%^simple_rnn_8/StatefulPartitionedCall%^simple_rnn_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$simple_rnn_8/StatefulPartitionedCall$simple_rnn_8/StatefulPartitionedCall2L
$simple_rnn_9/StatefulPartitionedCall$simple_rnn_9/StatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namelambda_8_input
�
D
(__inference_lambda_8_layer_call_fn_30255

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lambda_8_layer_call_and_return_conditional_losses_29591d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_30568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30568___redundant_placeholder03
/while_while_cond_30568___redundant_placeholder13
/while_while_cond_30568___redundant_placeholder23
/while_while_cond_30568___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�=
�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_29568

inputsB
0simple_rnn_cell_8_matmul_readvariableop_resource:(?
1simple_rnn_cell_8_biasadd_readvariableop_resource:(D
2simple_rnn_cell_8_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_8/BiasAdd/ReadVariableOp�'simple_rnn_cell_8/MatMul/ReadVariableOp�)simple_rnn_cell_8/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
'simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0�
simple_rnn_cell_8/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_8/BiasAddBiasAdd"simple_rnn_cell_8/MatMul:product:00simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_8_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_8/MatMul_1MatMulzeros:output:01simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_8/addAddV2"simple_rnn_cell_8/BiasAdd:output:0$simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_8/TanhTanhsimple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_8_matmul_readvariableop_resource1simple_rnn_cell_8_biasadd_readvariableop_resource2simple_rnn_cell_8_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_29502*
condR
while_cond_29501*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_8/BiasAdd/ReadVariableOp(^simple_rnn_cell_8/MatMul/ReadVariableOp*^simple_rnn_cell_8/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2T
(simple_rnn_cell_8/BiasAdd/ReadVariableOp(simple_rnn_cell_8/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_8/MatMul/ReadVariableOp'simple_rnn_cell_8/MatMul/ReadVariableOp2V
)simple_rnn_cell_8/MatMul_1/ReadVariableOp)simple_rnn_cell_8/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
,__inference_sequential_4_layer_call_fn_29801

inputs
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_29642o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_29501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_29501___redundant_placeholder03
/while_while_cond_29501___redundant_placeholder13
/while_while_cond_29501___redundant_placeholder23
/while_while_cond_29501___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�

�
simple_rnn_8_while_cond_298446
2simple_rnn_8_while_simple_rnn_8_while_loop_counter<
8simple_rnn_8_while_simple_rnn_8_while_maximum_iterations"
simple_rnn_8_while_placeholder$
 simple_rnn_8_while_placeholder_1$
 simple_rnn_8_while_placeholder_28
4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_29844___redundant_placeholder0M
Isimple_rnn_8_while_simple_rnn_8_while_cond_29844___redundant_placeholder1M
Isimple_rnn_8_while_simple_rnn_8_while_cond_29844___redundant_placeholder2M
Isimple_rnn_8_while_simple_rnn_8_while_cond_29844___redundant_placeholder3
simple_rnn_8_while_identity
�
simple_rnn_8/while/LessLesssimple_rnn_8_while_placeholder4simple_rnn_8_while_less_simple_rnn_8_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_8/while/IdentityIdentitysimple_rnn_8/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_8_while_identity$simple_rnn_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
_
C__inference_lambda_8_layer_call_and_return_conditional_losses_29591

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�=
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31219

inputsB
0simple_rnn_cell_9_matmul_readvariableop_resource:((?
1simple_rnn_cell_9_biasadd_readvariableop_resource:(D
2simple_rnn_cell_9_matmul_1_readvariableop_resource:((
identity��(simple_rnn_cell_9/BiasAdd/ReadVariableOp�'simple_rnn_cell_9/MatMul/ReadVariableOp�)simple_rnn_cell_9/MatMul_1/ReadVariableOp�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
'simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_9_matmul_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
(simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_9_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0�
simple_rnn_cell_9/BiasAddBiasAdd"simple_rnn_cell_9/MatMul:product:00simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
)simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_9_matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0�
simple_rnn_cell_9/MatMul_1MatMulzeros:output:01simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
simple_rnn_cell_9/addAddV2"simple_rnn_cell_9/BiasAdd:output:0$simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(k
simple_rnn_cell_9/TanhTanhsimple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_9_matmul_readvariableop_resource1simple_rnn_cell_9_biasadd_readvariableop_resource2simple_rnn_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_31153*
condR
while_cond_31152*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp)^simple_rnn_cell_9/BiasAdd/ReadVariableOp(^simple_rnn_cell_9/MatMul/ReadVariableOp*^simple_rnn_cell_9/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2T
(simple_rnn_cell_9/BiasAdd/ReadVariableOp(simple_rnn_cell_9/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_9/MatMul/ReadVariableOp'simple_rnn_cell_9/MatMul/ReadVariableOp2V
)simple_rnn_cell_9/MatMul_1/ReadVariableOp)simple_rnn_cell_9/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
� 
�
while_body_28478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_8_28500_0:(-
while_simple_rnn_cell_8_28502_0:(1
while_simple_rnn_cell_8_28504_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_8_28500:(+
while_simple_rnn_cell_8_28502:(/
while_simple_rnn_cell_8_28504:((��/while/simple_rnn_cell_8/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
/while/simple_rnn_cell_8/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_8_28500_0while_simple_rnn_cell_8_28502_0while_simple_rnn_cell_8_28504_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_28465�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_8/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_8/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������(~

while/NoOpNoOp0^while/simple_rnn_cell_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_8_28500while_simple_rnn_cell_8_28500_0"@
while_simple_rnn_cell_8_28502while_simple_rnn_cell_8_28502_0"@
while_simple_rnn_cell_8_28504while_simple_rnn_cell_8_28504_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2b
/while/simple_rnn_cell_8/StatefulPartitionedCall/while/simple_rnn_cell_8/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
�
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_31367

inputs
states_00
matmul_readvariableop_resource:((-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:((*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������(:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
�	
�
B__inference_dense_4_layer_call_and_return_conditional_losses_31238

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
,__inference_simple_rnn_9_layer_call_fn_30765
inputs_0
unknown:((
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_28992o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������(
"
_user_specified_name
inputs/0
�3
�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_28833

inputs)
simple_rnn_cell_9_28758:((%
simple_rnn_cell_9_28760:()
simple_rnn_cell_9_28762:((
identity��)simple_rnn_cell_9/StatefulPartitionedCall�while;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :(s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������(c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������(D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_mask�
)simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_9_28758simple_rnn_cell_9_28760simple_rnn_cell_9_28762*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28757n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_9_28758simple_rnn_cell_9_28760simple_rnn_cell_9_28762*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������(: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_28770*
condR
while_cond_28769*8
output_shapes'
%: : : : :���������(: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������(*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������(*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������(z
NoOpNoOp*^simple_rnn_cell_9/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������(: : : 2V
)simple_rnn_cell_9/StatefulPartitionedCall)simple_rnn_cell_9/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������(
 
_user_specified_nameinputs
�
�
while_cond_28928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_28928___redundant_placeholder03
/while_while_cond_28928___redundant_placeholder13
/while_while_cond_28928___redundant_placeholder23
/while_while_cond_28928___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�
�
,__inference_simple_rnn_9_layer_call_fn_30754
inputs_0
unknown:((
	unknown_0:(
	unknown_1:((
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_28833o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������(
"
_user_specified_name
inputs/0
�
�
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_31305

inputs
states_00
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(2
 matmul_1_readvariableop_resource:((
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:((*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������(G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������(W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������(: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
�,
�
while_body_31045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_9_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_9/MatMul/ReadVariableOp�/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�
_
C__inference_lambda_9_layer_call_and_return_conditional_losses_31260

inputs
identityJ
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �BT
mulMulinputsmul/y:output:0*
T0*'
_output_shapes
:���������O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�,
�
while_body_29502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_8_matmul_readvariableop_resource_0:(G
9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_8_matmul_readvariableop_resource:(E
7while_simple_rnn_cell_8_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_8/MatMul/ReadVariableOp�/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
-while/simple_rnn_cell_8/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_8_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype0�
while/simple_rnn_cell_8/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_8/BiasAddBiasAdd(while/simple_rnn_cell_8/MatMul:product:06while/simple_rnn_cell_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_8/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_8/addAddV2(while/simple_rnn_cell_8/BiasAdd:output:0*while/simple_rnn_cell_8/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_8/TanhTanhwhile/simple_rnn_cell_8/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_8/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_8/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_8/MatMul/ReadVariableOp0^while/simple_rnn_cell_8/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_8_biasadd_readvariableop_resource9while_simple_rnn_cell_8_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_8_matmul_1_readvariableop_resource:while_simple_rnn_cell_8_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_8_matmul_readvariableop_resource8while_simple_rnn_cell_8_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp.while/simple_rnn_cell_8/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_8/MatMul/ReadVariableOp-while/simple_rnn_cell_8/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp/while/simple_rnn_cell_8/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�,
�
while_body_29372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_9_matmul_readvariableop_resource_0:((G
9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0:(L
:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_9_matmul_readvariableop_resource:((E
7while_simple_rnn_cell_9_biasadd_readvariableop_resource:(J
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:((��.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_9/MatMul/ReadVariableOp�/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
-while/simple_rnn_cell_9/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_9_matmul_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
while/simple_rnn_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0�
while/simple_rnn_cell_9/BiasAddBiasAdd(while/simple_rnn_cell_9/MatMul:product:06while/simple_rnn_cell_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0*
_output_shapes

:((*
dtype0�
 while/simple_rnn_cell_9/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������(�
while/simple_rnn_cell_9/addAddV2(while/simple_rnn_cell_9/BiasAdd:output:0*while/simple_rnn_cell_9/MatMul_1:product:0*
T0*'
_output_shapes
:���������(w
while/simple_rnn_cell_9/TanhTanhwhile/simple_rnn_cell_9/add:z:0*
T0*'
_output_shapes
:���������(�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_9/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_9/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������(�

while/NoOpNoOp/^while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_9/MatMul/ReadVariableOp0^while/simple_rnn_cell_9/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_9_biasadd_readvariableop_resource9while_simple_rnn_cell_9_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_9_matmul_1_readvariableop_resource:while_simple_rnn_cell_9_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_9_matmul_readvariableop_resource8while_simple_rnn_cell_9_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2`
.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp.while/simple_rnn_cell_9/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_9/MatMul/ReadVariableOp-while/simple_rnn_cell_9/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp/while/simple_rnn_cell_9/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�	
�
#__inference_signature_wrapper_29759
lambda_8_input
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_28417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namelambda_8_input
�	
�
,__inference_sequential_4_layer_call_fn_29780

inputs
unknown:(
	unknown_0:(
	unknown_1:((
	unknown_2:((
	unknown_3:(
	unknown_4:((
	unknown_5:(
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_29271o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_30352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_30352___redundant_placeholder03
/while_while_cond_30352___redundant_placeholder13
/while_while_cond_30352___redundant_placeholder23
/while_while_cond_30352___redundant_placeholder3
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
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:
�

�
1__inference_simple_rnn_cell_9_layer_call_fn_31336

inputs
states_0
unknown:((
	unknown_0:(
	unknown_1:((
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28757o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������(q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������(:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������(
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������(
"
_user_specified_name
states/0
� 
�
while_body_28929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_9_28951_0:((-
while_simple_rnn_cell_9_28953_0:(1
while_simple_rnn_cell_9_28955_0:((
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_9_28951:((+
while_simple_rnn_cell_9_28953:(/
while_simple_rnn_cell_9_28955:((��/while/simple_rnn_cell_9/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����(   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������(*
element_dtype0�
/while/simple_rnn_cell_9/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_9_28951_0while_simple_rnn_cell_9_28953_0while_simple_rnn_cell_9_28955_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������(:���������(*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_28877�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_9/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_9/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������(~

while/NoOpNoOp0^while/simple_rnn_cell_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_9_28951while_simple_rnn_cell_9_28951_0"@
while_simple_rnn_cell_9_28953while_simple_rnn_cell_9_28953_0"@
while_simple_rnn_cell_9_28955while_simple_rnn_cell_9_28955_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������(: : : : : 2b
/while/simple_rnn_cell_9/StatefulPartitionedCall/while/simple_rnn_cell_9/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
: 
�

�
simple_rnn_9_while_cond_301706
2simple_rnn_9_while_simple_rnn_9_while_loop_counter<
8simple_rnn_9_while_simple_rnn_9_while_maximum_iterations"
simple_rnn_9_while_placeholder$
 simple_rnn_9_while_placeholder_1$
 simple_rnn_9_while_placeholder_28
4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_30170___redundant_placeholder0M
Isimple_rnn_9_while_simple_rnn_9_while_cond_30170___redundant_placeholder1M
Isimple_rnn_9_while_simple_rnn_9_while_cond_30170___redundant_placeholder2M
Isimple_rnn_9_while_simple_rnn_9_while_cond_30170___redundant_placeholder3
simple_rnn_9_while_identity
�
simple_rnn_9/while/LessLesssimple_rnn_9_while_placeholder4simple_rnn_9_while_less_simple_rnn_9_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_9/while/IdentityIdentitysimple_rnn_9/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_9_while_identity$simple_rnn_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������(: ::::: 
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
: :-)
'
_output_shapes
:���������(:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I
lambda_8_input7
 serving_default_lambda_8_input:0���������<
lambda_90
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
u__call__
*v&call_and_return_all_conditional_losses
w_default_save_signature"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&iter
	'decay
(learning_rate
)momentummomentummmomentumn*momentumo+momentump,momentumq-momentumr.momentums/momentumt"
	optimizer
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
X
*0
+1
,2
-3
.4
/5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
	regularization_losses
u__call__
w_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�

*kernel
+recurrent_kernel
,bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�

-kernel
.recurrent_kernel
/bias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Hstates
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 :(2dense_4/kernel
:2dense_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
 regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
"	variables
#trainable_variables
$regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
7:5(2%simple_rnn_8/simple_rnn_cell_8/kernel
A:?((2/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel
1:/(2#simple_rnn_8/simple_rnn_cell_8/bias
7:5((2%simple_rnn_9/simple_rnn_cell_9/kernel
A:?((2/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel
1:/(2#simple_rnn_9/simple_rnn_cell_9/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
X0
Y1"
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
trackable_dict_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
:	variables
;trainable_variables
<regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
N
	dtotal
	ecount
f	variables
g	keras_api"
_tf_keras_metric
^
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api"
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
:  (2total
:  (2count
.
d0
e1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
h0
i1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
+:)(2SGD/dense_4/kernel/momentum
%:#2SGD/dense_4/bias/momentum
B:@(22SGD/simple_rnn_8/simple_rnn_cell_8/kernel/momentum
L:J((2<SGD/simple_rnn_8/simple_rnn_cell_8/recurrent_kernel/momentum
<::(20SGD/simple_rnn_8/simple_rnn_cell_8/bias/momentum
B:@((22SGD/simple_rnn_9/simple_rnn_cell_9/kernel/momentum
L:J((2<SGD/simple_rnn_9/simple_rnn_cell_9/recurrent_kernel/momentum
<::(20SGD/simple_rnn_9/simple_rnn_cell_9/bias/momentum
�2�
,__inference_sequential_4_layer_call_fn_29290
,__inference_sequential_4_layer_call_fn_29780
,__inference_sequential_4_layer_call_fn_29801
,__inference_sequential_4_layer_call_fn_29682�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_4_layer_call_and_return_conditional_losses_30023
G__inference_sequential_4_layer_call_and_return_conditional_losses_30245
G__inference_sequential_4_layer_call_and_return_conditional_losses_29707
G__inference_sequential_4_layer_call_and_return_conditional_losses_29732�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_28417lambda_8_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_lambda_8_layer_call_fn_30250
(__inference_lambda_8_layer_call_fn_30255�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_lambda_8_layer_call_and_return_conditional_losses_30261
C__inference_lambda_8_layer_call_and_return_conditional_losses_30267�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_simple_rnn_8_layer_call_fn_30278
,__inference_simple_rnn_8_layer_call_fn_30289
,__inference_simple_rnn_8_layer_call_fn_30300
,__inference_simple_rnn_8_layer_call_fn_30311�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30419
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30527
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30635
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30743�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_simple_rnn_9_layer_call_fn_30754
,__inference_simple_rnn_9_layer_call_fn_30765
,__inference_simple_rnn_9_layer_call_fn_30776
,__inference_simple_rnn_9_layer_call_fn_30787�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_30895
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31003
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31111
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31219�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_dense_4_layer_call_fn_31228�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
B__inference_dense_4_layer_call_and_return_conditional_losses_31238�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
(__inference_lambda_9_layer_call_fn_31243
(__inference_lambda_9_layer_call_fn_31248�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_lambda_9_layer_call_and_return_conditional_losses_31254
C__inference_lambda_9_layer_call_and_return_conditional_losses_31260�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference_signature_wrapper_29759lambda_8_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_simple_rnn_cell_8_layer_call_fn_31274
1__inference_simple_rnn_cell_8_layer_call_fn_31288�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_31305
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_31322�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
1__inference_simple_rnn_cell_9_layer_call_fn_31336
1__inference_simple_rnn_cell_9_layer_call_fn_31350�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_31367
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_31384�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
 __inference__wrapped_model_28417x*,+-/.7�4
-�*
(�%
lambda_8_input���������
� "3�0
.
lambda_9"�
lambda_9����������
B__inference_dense_4_layer_call_and_return_conditional_losses_31238\/�,
%�"
 �
inputs���������(
� "%�"
�
0���������
� z
'__inference_dense_4_layer_call_fn_31228O/�,
%�"
 �
inputs���������(
� "�����������
C__inference_lambda_8_layer_call_and_return_conditional_losses_30261d7�4
-�*
 �
inputs���������

 
p 
� ")�&
�
0���������
� �
C__inference_lambda_8_layer_call_and_return_conditional_losses_30267d7�4
-�*
 �
inputs���������

 
p
� ")�&
�
0���������
� �
(__inference_lambda_8_layer_call_fn_30250W7�4
-�*
 �
inputs���������

 
p 
� "�����������
(__inference_lambda_8_layer_call_fn_30255W7�4
-�*
 �
inputs���������

 
p
� "�����������
C__inference_lambda_9_layer_call_and_return_conditional_losses_31254`7�4
-�*
 �
inputs���������

 
p 
� "%�"
�
0���������
� �
C__inference_lambda_9_layer_call_and_return_conditional_losses_31260`7�4
-�*
 �
inputs���������

 
p
� "%�"
�
0���������
� 
(__inference_lambda_9_layer_call_fn_31243S7�4
-�*
 �
inputs���������

 
p 
� "����������
(__inference_lambda_9_layer_call_fn_31248S7�4
-�*
 �
inputs���������

 
p
� "�����������
G__inference_sequential_4_layer_call_and_return_conditional_losses_29707r*,+-/.?�<
5�2
(�%
lambda_8_input���������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_29732r*,+-/.?�<
5�2
(�%
lambda_8_input���������
p

 
� "%�"
�
0���������
� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_30023j*,+-/.7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
G__inference_sequential_4_layer_call_and_return_conditional_losses_30245j*,+-/.7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
,__inference_sequential_4_layer_call_fn_29290e*,+-/.?�<
5�2
(�%
lambda_8_input���������
p 

 
� "�����������
,__inference_sequential_4_layer_call_fn_29682e*,+-/.?�<
5�2
(�%
lambda_8_input���������
p

 
� "�����������
,__inference_sequential_4_layer_call_fn_29780]*,+-/.7�4
-�*
 �
inputs���������
p 

 
� "�����������
,__inference_sequential_4_layer_call_fn_29801]*,+-/.7�4
-�*
 �
inputs���������
p

 
� "�����������
#__inference_signature_wrapper_29759�*,+-/.I�F
� 
?�<
:
lambda_8_input(�%
lambda_8_input���������"3�0
.
lambda_9"�
lambda_9����������
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30419�*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������(
� �
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30527�*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������(
� �
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30635q*,+?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������(
� �
G__inference_simple_rnn_8_layer_call_and_return_conditional_losses_30743q*,+?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������(
� �
,__inference_simple_rnn_8_layer_call_fn_30278}*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������(�
,__inference_simple_rnn_8_layer_call_fn_30289}*,+O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������(�
,__inference_simple_rnn_8_layer_call_fn_30300d*,+?�<
5�2
$�!
inputs���������

 
p 

 
� "����������(�
,__inference_simple_rnn_8_layer_call_fn_30311d*,+?�<
5�2
$�!
inputs���������

 
p

 
� "����������(�
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_30895}-/.O�L
E�B
4�1
/�,
inputs/0������������������(

 
p 

 
� "%�"
�
0���������(
� �
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31003}-/.O�L
E�B
4�1
/�,
inputs/0������������������(

 
p

 
� "%�"
�
0���������(
� �
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31111m-/.?�<
5�2
$�!
inputs���������(

 
p 

 
� "%�"
�
0���������(
� �
G__inference_simple_rnn_9_layer_call_and_return_conditional_losses_31219m-/.?�<
5�2
$�!
inputs���������(

 
p

 
� "%�"
�
0���������(
� �
,__inference_simple_rnn_9_layer_call_fn_30754p-/.O�L
E�B
4�1
/�,
inputs/0������������������(

 
p 

 
� "����������(�
,__inference_simple_rnn_9_layer_call_fn_30765p-/.O�L
E�B
4�1
/�,
inputs/0������������������(

 
p

 
� "����������(�
,__inference_simple_rnn_9_layer_call_fn_30776`-/.?�<
5�2
$�!
inputs���������(

 
p 

 
� "����������(�
,__inference_simple_rnn_9_layer_call_fn_30787`-/.?�<
5�2
$�!
inputs���������(

 
p

 
� "����������(�
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_31305�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������(
p 
� "R�O
H�E
�
0/0���������(
$�!
�
0/1/0���������(
� �
L__inference_simple_rnn_cell_8_layer_call_and_return_conditional_losses_31322�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������(
p
� "R�O
H�E
�
0/0���������(
$�!
�
0/1/0���������(
� �
1__inference_simple_rnn_cell_8_layer_call_fn_31274�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������(
p 
� "D�A
�
0���������(
"�
�
1/0���������(�
1__inference_simple_rnn_cell_8_layer_call_fn_31288�*,+\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������(
p
� "D�A
�
0���������(
"�
�
1/0���������(�
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_31367�-/.\�Y
R�O
 �
inputs���������(
'�$
"�
states/0���������(
p 
� "R�O
H�E
�
0/0���������(
$�!
�
0/1/0���������(
� �
L__inference_simple_rnn_cell_9_layer_call_and_return_conditional_losses_31384�-/.\�Y
R�O
 �
inputs���������(
'�$
"�
states/0���������(
p
� "R�O
H�E
�
0/0���������(
$�!
�
0/1/0���������(
� �
1__inference_simple_rnn_cell_9_layer_call_fn_31336�-/.\�Y
R�O
 �
inputs���������(
'�$
"�
states/0���������(
p 
� "D�A
�
0���������(
"�
�
1/0���������(�
1__inference_simple_rnn_cell_9_layer_call_fn_31350�-/.\�Y
R�O
 �
inputs���������(
'�$
"�
states/0���������(
p
� "D�A
�
0���������(
"�
�
1/0���������(