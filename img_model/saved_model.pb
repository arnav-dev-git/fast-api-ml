їЭ
кЉ
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

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

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
resource
.
Identity

input"T
output"T"	
Ttype

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
H
ShardedFilename
basename	
shard

num_shards
filename
7
Square
x"T
y"T"
Ttype:
2	
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
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
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.12.02v2.12.0-rc1-12-g0db597d0d758дг

Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d_6/bias
y
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes
:*
dtype0

Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d_6/bias
y
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes
:*
dtype0

Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/v/conv2d_6/kernel

*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*&
_output_shapes
:@*
dtype0

Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/m/conv2d_6/kernel

*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*&
_output_shapes
:@*
dtype0

Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_5/bias
y
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_5/bias
y
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/v/conv2d_5/kernel

*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*&
_output_shapes
:@ *
dtype0

Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/m/conv2d_5/kernel

*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*&
_output_shapes
:@ *
dtype0

Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/v/conv2d_4/kernel

*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
:@ *
dtype0

Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *'
shared_nameAdam/m/conv2d_4/kernel

*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
:@ *
dtype0

Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_3/bias
y
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_3/bias
y
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/v/conv2d_3/kernel

*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*&
_output_shapes
:  *
dtype0

Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/m/conv2d_3/kernel

*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*&
_output_shapes
:  *
dtype0

Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/v/conv2d_2/kernel

*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
:  *
dtype0

Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/m/conv2d_2/kernel

*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
:  *
dtype0

Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/v/conv2d_1/kernel

*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
:  *
dtype0

Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/m/conv2d_1/kernel

*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
:  *
dtype0
|
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
: *
dtype0
|
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d/kernel

(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d/kernel

(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@ *
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:  *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0

serving_default_input_1Placeholder*1
_output_shapes
:џџџџџџџџџи*
dtype0*&
shape:џџџџџџџџџи
Ж
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_30418

NoOpNoOp
Іe
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*сd
valueзdBдd BЭd
х
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	dce_model
		optimizer

loss

signatures*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
* 
А
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
 trace_1
!trace_2
"trace_3* 
6
#trace_0
$trace_1
%trace_2
&trace_3* 
* 
ж
'layer-0
(layer_with_weights-0
(layer-1
)layer_with_weights-1
)layer-2
*layer_with_weights-2
*layer-3
+layer_with_weights-3
+layer-4
,layer-5
-layer_with_weights-4
-layer-6
.layer-7
/layer_with_weights-5
/layer-8
0layer-9
1layer_with_weights-6
1layer-10
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*

8
_variables
9_iterations
:_learning_rate
;_index_dict
<
_momentums
=_velocities
>_update_step_xla*
* 

?serving_default* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_6/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_6/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*
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
@_init_input_shape* 
Ш
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
 G_jit_compiled_convolution_op*
Ш
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias
 N_jit_compiled_convolution_op*
Ш
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias
 U_jit_compiled_convolution_op*
Ш
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

kernel
bias
 \_jit_compiled_convolution_op*

]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
Ш
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

kernel
bias
 i_jit_compiled_convolution_op*

j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses* 
Ш
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

kernel
bias
 v_jit_compiled_convolution_op*

w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
Ь
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
ў
90
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
Ё17
Ђ18
Ѓ19
Є20
Ѕ21
І22
Ї23
Ј24
Љ25
Њ26
Ћ27
Ќ28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
0
1
2
3
4
5
6
7
Ё8
Ѓ9
Ѕ10
Ї11
Љ12
Ћ13*
x
0
1
2
3
4
5
6
 7
Ђ8
Є9
І10
Ј11
Њ12
Ќ13*
Ъ
­trace_0
Ўtrace_1
Џtrace_2
Аtrace_3
Бtrace_4
Вtrace_5
Гtrace_6
Дtrace_7
Еtrace_8
Жtrace_9
Зtrace_10
Иtrace_11
Йtrace_12
Кtrace_13* 
* 
* 

0
1*

0
1*
* 

Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

Рtrace_0* 

Сtrace_0* 
* 

0
1*

0
1*
* 

Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

Чtrace_0* 

Шtrace_0* 
* 

0
1*

0
1*
* 

Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
* 

0
1*

0
1*
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

еtrace_0* 

жtrace_0* 
* 
* 
* 
* 

зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 

мtrace_0* 

нtrace_0* 

0
1*

0
1*
* 

оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

уtrace_0* 

фtrace_0* 
* 
* 
* 
* 

хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

ъtrace_0* 

ыtrace_0* 

0
1*

0
1*
* 

ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

ёtrace_0* 

ђtrace_0* 
* 
* 
* 
* 

ѓnon_trainable_variables
єlayers
ѕmetrics
 іlayer_regularization_losses
їlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

јtrace_0* 

љtrace_0* 

0
1*

0
1*
* 

њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

џtrace_0* 

trace_0* 
* 
* 
R
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110*
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
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_4/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_4/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_4/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_4/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_5/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_5/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_5/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_5/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_6/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_6/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_6/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_6/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
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
Л	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasConst*9
Tin2
02.*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_31450
Ж	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/bias*8
Tin1
/2-*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_31592Цќ
Д

(__inference_conv2d_6_layer_call_fn_31152

inputs!
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29502
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
а
В
C__inference_zero_dce_layer_call_and_return_conditional_losses_30607
dataE
+model_conv2d_conv2d_readvariableop_resource: :
,model_conv2d_biasadd_readvariableop_resource: G
-model_conv2d_1_conv2d_readvariableop_resource:  <
.model_conv2d_1_biasadd_readvariableop_resource: G
-model_conv2d_2_conv2d_readvariableop_resource:  <
.model_conv2d_2_biasadd_readvariableop_resource: G
-model_conv2d_3_conv2d_readvariableop_resource:  <
.model_conv2d_3_biasadd_readvariableop_resource: G
-model_conv2d_4_conv2d_readvariableop_resource:@ <
.model_conv2d_4_biasadd_readvariableop_resource: G
-model_conv2d_5_conv2d_readvariableop_resource:@ <
.model_conv2d_5_biasadd_readvariableop_resource: G
-model_conv2d_6_conv2d_readvariableop_resource:@<
.model_conv2d_6_biasadd_readvariableop_resource:
identityЂ#model/conv2d/BiasAdd/ReadVariableOpЂ"model/conv2d/Conv2D/ReadVariableOpЂ%model/conv2d_1/BiasAdd/ReadVariableOpЂ$model/conv2d_1/Conv2D/ReadVariableOpЂ%model/conv2d_2/BiasAdd/ReadVariableOpЂ$model/conv2d_2/Conv2D/ReadVariableOpЂ%model/conv2d_3/BiasAdd/ReadVariableOpЂ$model/conv2d_3/Conv2D/ReadVariableOpЂ%model/conv2d_4/BiasAdd/ReadVariableOpЂ$model/conv2d_4/Conv2D/ReadVariableOpЂ%model/conv2d_5/BiasAdd/ReadVariableOpЂ$model/conv2d_5/Conv2D/ReadVariableOpЂ%model/conv2d_6/BiasAdd/ReadVariableOpЂ$model/conv2d_6/Conv2D/ReadVariableOp
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Г
model/conv2d/Conv2DConv2Ddata*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи t
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи 
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0в
model/conv2d_1/Conv2DConv2Dmodel/conv2d/Relu:activations:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи 
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0д
model/conv2d_2/Conv2DConv2D!model/conv2d_1/Relu:activations:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_2/ReluRelumodel/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи 
$model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0д
model/conv2d_3/Conv2DConv2D!model/conv2d_2/Relu:activations:0,model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_3/BiasAddBiasAddmodel/conv2d_3/Conv2D:output:0-model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_3/ReluRelumodel/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи _
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :з
model/concatenate/concatConcatV2!model/conv2d_3/Relu:activations:0!model/conv2d_2/Relu:activations:0&model/concatenate/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@
$model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0д
model/conv2d_4/Conv2DConv2D!model/concatenate/concat:output:0,model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_4/BiasAddBiasAddmodel/conv2d_4/Conv2D:output:0-model/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_4/ReluRelumodel/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи a
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :л
model/concatenate_1/concatConcatV2!model/conv2d_4/Relu:activations:0!model/conv2d_1/Relu:activations:0(model/concatenate_1/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@
$model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ж
model/conv2d_5/Conv2DConv2D#model/concatenate_1/concat:output:0,model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_5/BiasAddBiasAddmodel/conv2d_5/Conv2D:output:0-model/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_5/ReluRelumodel/conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи a
model/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :й
model/concatenate_2/concatConcatV2!model/conv2d_5/Relu:activations:0model/conv2d/Relu:activations:0(model/concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@
$model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ж
model/conv2d_6/Conv2DConv2D#model/concatenate_2/concat:output:0,model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи*
paddingSAME*
strides

%model/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
model/conv2d_6/BiasAddBiasAddmodel/conv2d_6/Conv2D:output:0-model/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџиx
model/conv2d_6/TanhTanhmodel/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџиl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            џ
strided_sliceStridedSlicemodel/conv2d_6/Tanh:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_1StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_2StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_3StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_4StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_5StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_6StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_7StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskR
SquareSquaredata*
T0*1
_output_shapes
:џџџџџџџџџиX
subSub
Square:y:0data*
T0*1
_output_shapes
:џџџџџџџџџиg
mulMulstrided_slice:output:0sub:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
addAddV2datamul:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџи_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_1Mulstrided_slice_1:output:0	sub_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_2Mulstrided_slice_2:output:0	sub_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_3Mulstrided_slice_3:output:0	sub_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_4Mulstrided_slice_4:output:0	sub_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_5Mulstrided_slice_5:output:0	sub_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_6Mulstrided_slice_6:output:0	sub_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_7Mulstrided_slice_7:output:0	sub_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџиb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџиы
NoOpNoOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp&^model/conv2d_3/BiasAdd/ReadVariableOp%^model/conv2d_3/Conv2D/ReadVariableOp&^model/conv2d_4/BiasAdd/ReadVariableOp%^model/conv2d_4/Conv2D/ReadVariableOp&^model/conv2d_5/BiasAdd/ReadVariableOp%^model/conv2d_5/Conv2D/ReadVariableOp&^model/conv2d_6/BiasAdd/ReadVariableOp%^model/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2N
%model/conv2d_3/BiasAdd/ReadVariableOp%model/conv2d_3/BiasAdd/ReadVariableOp2L
$model/conv2d_3/Conv2D/ReadVariableOp$model/conv2d_3/Conv2D/ReadVariableOp2N
%model/conv2d_4/BiasAdd/ReadVariableOp%model/conv2d_4/BiasAdd/ReadVariableOp2L
$model/conv2d_4/Conv2D/ReadVariableOp$model/conv2d_4/Conv2D/ReadVariableOp2N
%model/conv2d_5/BiasAdd/ReadVariableOp%model/conv2d_5/BiasAdd/ReadVariableOp2L
$model/conv2d_5/Conv2D/ReadVariableOp$model/conv2d_5/Conv2D/ReadVariableOp2N
%model/conv2d_6/BiasAdd/ReadVariableOp%model/conv2d_6/BiasAdd/ReadVariableOp2L
$model/conv2d_6/Conv2D/ReadVariableOp$model/conv2d_6/Conv2D/ReadVariableOp:W S
1
_output_shapes
:џџџџџџџџџи

_user_specified_namedata
Щ
Y
-__inference_concatenate_2_layer_call_fn_31136
inputs_0
inputs_1
identityн
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_29489z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_1
Я
V
"__inference__update_step_xla_30785
gradient"
variable:@ *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@ : *
	_noinline(:P L
&
_output_shapes
:@ 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable


(__inference_zero_dce_layer_call_fn_30451
data!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldataunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_zero_dce_layer_call_and_return_conditional_losses_30154y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџи`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
1
_output_shapes
:џџџџџџџџџи

_user_specified_namedata
м

%__inference_model_layer_call_fn_30866

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29671
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
З1
Ч
@__inference_model_layer_call_and_return_conditional_losses_29509
input_1&
conv2d_29374: 
conv2d_29376: (
conv2d_1_29391:  
conv2d_1_29393: (
conv2d_2_29408:  
conv2d_2_29410: (
conv2d_3_29425:  
conv2d_3_29427: (
conv2d_4_29451:@ 
conv2d_4_29453: (
conv2d_5_29477:@ 
conv2d_5_29479: (
conv2d_6_29503:@
conv2d_6_29505:
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_29374conv2d_29376*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_29373Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_29391conv2d_1_29393*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29390­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_29408conv2d_2_29410*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29407­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_29425conv2d_3_29427*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29424Љ
concatenate/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_29437Ј
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_4_29451conv2d_4_29453*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29450­
concatenate_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_29463Њ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_5_29477conv2d_5_29479*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29476Ћ
concatenate_2/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_29489Њ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_6_29503conv2d_6_29505*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29502
IdentityIdentity)conv2d_6/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЙ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
д
p
F__inference_concatenate_layer_call_and_return_conditional_losses_29437

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
я
ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29390

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
а
В
C__inference_zero_dce_layer_call_and_return_conditional_losses_30730
dataE
+model_conv2d_conv2d_readvariableop_resource: :
,model_conv2d_biasadd_readvariableop_resource: G
-model_conv2d_1_conv2d_readvariableop_resource:  <
.model_conv2d_1_biasadd_readvariableop_resource: G
-model_conv2d_2_conv2d_readvariableop_resource:  <
.model_conv2d_2_biasadd_readvariableop_resource: G
-model_conv2d_3_conv2d_readvariableop_resource:  <
.model_conv2d_3_biasadd_readvariableop_resource: G
-model_conv2d_4_conv2d_readvariableop_resource:@ <
.model_conv2d_4_biasadd_readvariableop_resource: G
-model_conv2d_5_conv2d_readvariableop_resource:@ <
.model_conv2d_5_biasadd_readvariableop_resource: G
-model_conv2d_6_conv2d_readvariableop_resource:@<
.model_conv2d_6_biasadd_readvariableop_resource:
identityЂ#model/conv2d/BiasAdd/ReadVariableOpЂ"model/conv2d/Conv2D/ReadVariableOpЂ%model/conv2d_1/BiasAdd/ReadVariableOpЂ$model/conv2d_1/Conv2D/ReadVariableOpЂ%model/conv2d_2/BiasAdd/ReadVariableOpЂ$model/conv2d_2/Conv2D/ReadVariableOpЂ%model/conv2d_3/BiasAdd/ReadVariableOpЂ$model/conv2d_3/Conv2D/ReadVariableOpЂ%model/conv2d_4/BiasAdd/ReadVariableOpЂ$model/conv2d_4/Conv2D/ReadVariableOpЂ%model/conv2d_5/BiasAdd/ReadVariableOpЂ$model/conv2d_5/Conv2D/ReadVariableOpЂ%model/conv2d_6/BiasAdd/ReadVariableOpЂ$model/conv2d_6/Conv2D/ReadVariableOp
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Г
model/conv2d/Conv2DConv2Ddata*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0І
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи t
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи 
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0в
model/conv2d_1/Conv2DConv2Dmodel/conv2d/Relu:activations:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи 
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0д
model/conv2d_2/Conv2DConv2D!model/conv2d_1/Relu:activations:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_2/ReluRelumodel/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи 
$model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0д
model/conv2d_3/Conv2DConv2D!model/conv2d_2/Relu:activations:0,model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_3/BiasAddBiasAddmodel/conv2d_3/Conv2D:output:0-model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_3/ReluRelumodel/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи _
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :з
model/concatenate/concatConcatV2!model/conv2d_3/Relu:activations:0!model/conv2d_2/Relu:activations:0&model/concatenate/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@
$model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0д
model/conv2d_4/Conv2DConv2D!model/concatenate/concat:output:0,model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_4/BiasAddBiasAddmodel/conv2d_4/Conv2D:output:0-model/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_4/ReluRelumodel/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи a
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :л
model/concatenate_1/concatConcatV2!model/conv2d_4/Relu:activations:0!model/conv2d_1/Relu:activations:0(model/concatenate_1/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@
$model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ж
model/conv2d_5/Conv2DConv2D#model/concatenate_1/concat:output:0,model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

%model/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ќ
model/conv2d_5/BiasAddBiasAddmodel/conv2d_5/Conv2D:output:0-model/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи x
model/conv2d_5/ReluRelumodel/conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи a
model/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :й
model/concatenate_2/concatConcatV2!model/conv2d_5/Relu:activations:0model/conv2d/Relu:activations:0(model/concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@
$model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ж
model/conv2d_6/Conv2DConv2D#model/concatenate_2/concat:output:0,model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи*
paddingSAME*
strides

%model/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
model/conv2d_6/BiasAddBiasAddmodel/conv2d_6/Conv2D:output:0-model/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџиx
model/conv2d_6/TanhTanhmodel/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџиl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            џ
strided_sliceStridedSlicemodel/conv2d_6/Tanh:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_1StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_2StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_3StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_4StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_5StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_6StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_7StridedSlicemodel/conv2d_6/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskR
SquareSquaredata*
T0*1
_output_shapes
:џџџџџџџџџиX
subSub
Square:y:0data*
T0*1
_output_shapes
:џџџџџџџџџиg
mulMulstrided_slice:output:0sub:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
addAddV2datamul:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџи_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_1Mulstrided_slice_1:output:0	sub_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_2Mulstrided_slice_2:output:0	sub_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_3Mulstrided_slice_3:output:0	sub_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_4Mulstrided_slice_4:output:0	sub_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_5Mulstrided_slice_5:output:0	sub_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_6Mulstrided_slice_6:output:0	sub_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_7Mulstrided_slice_7:output:0	sub_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџиb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџиы
NoOpNoOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp&^model/conv2d_3/BiasAdd/ReadVariableOp%^model/conv2d_3/Conv2D/ReadVariableOp&^model/conv2d_4/BiasAdd/ReadVariableOp%^model/conv2d_4/Conv2D/ReadVariableOp&^model/conv2d_5/BiasAdd/ReadVariableOp%^model/conv2d_5/Conv2D/ReadVariableOp&^model/conv2d_6/BiasAdd/ReadVariableOp%^model/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2N
%model/conv2d_3/BiasAdd/ReadVariableOp%model/conv2d_3/BiasAdd/ReadVariableOp2L
$model/conv2d_3/Conv2D/ReadVariableOp$model/conv2d_3/Conv2D/ReadVariableOp2N
%model/conv2d_4/BiasAdd/ReadVariableOp%model/conv2d_4/BiasAdd/ReadVariableOp2L
$model/conv2d_4/Conv2D/ReadVariableOp$model/conv2d_4/Conv2D/ReadVariableOp2N
%model/conv2d_5/BiasAdd/ReadVariableOp%model/conv2d_5/BiasAdd/ReadVariableOp2L
$model/conv2d_5/Conv2D/ReadVariableOp$model/conv2d_5/Conv2D/ReadVariableOp2N
%model/conv2d_6/BiasAdd/ReadVariableOp%model/conv2d_6/BiasAdd/ReadVariableOp2L
$model/conv2d_6/Conv2D/ReadVariableOp$model/conv2d_6/Conv2D/ReadVariableOp:W S
1
_output_shapes
:џџџџџџџџџи

_user_specified_namedata
Д1
Ц
@__inference_model_layer_call_and_return_conditional_losses_29596

inputs&
conv2d_29557: 
conv2d_29559: (
conv2d_1_29562:  
conv2d_1_29564: (
conv2d_2_29567:  
conv2d_2_29569: (
conv2d_3_29572:  
conv2d_3_29574: (
conv2d_4_29578:@ 
conv2d_4_29580: (
conv2d_5_29584:@ 
conv2d_5_29586: (
conv2d_6_29590:@
conv2d_6_29592:
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_29557conv2d_29559*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_29373Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_29562conv2d_1_29564*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29390­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_29567conv2d_2_29569*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29407­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_29572conv2d_3_29574*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29424Љ
concatenate/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_29437Ј
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_4_29578conv2d_4_29580*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29450­
concatenate_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_29463Њ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_5_29584conv2d_5_29586*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29476Ћ
concatenate_2/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_29489Њ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_6_29590conv2d_6_29592*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29502
IdentityIdentity)conv2d_6/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЙ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_30740
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
п

%__inference_model_layer_call_fn_29627
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29596
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
Є

(__inference_zero_dce_layer_call_fn_30315
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_zero_dce_layer_call_and_return_conditional_losses_30284y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџи`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџи
!
_user_specified_name	input_1
ж
r
H__inference_concatenate_2_layer_call_and_return_conditional_losses_29489

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_30760
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
З1
Ч
@__inference_model_layer_call_and_return_conditional_losses_29551
input_1&
conv2d_29512: 
conv2d_29514: (
conv2d_1_29517:  
conv2d_1_29519: (
conv2d_2_29522:  
conv2d_2_29524: (
conv2d_3_29527:  
conv2d_3_29529: (
conv2d_4_29533:@ 
conv2d_4_29535: (
conv2d_5_29539:@ 
conv2d_5_29541: (
conv2d_6_29545:@
conv2d_6_29547:
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_29512conv2d_29514*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_29373Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_29517conv2d_1_29519*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29390­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_29522conv2d_2_29524*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29407­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_29527conv2d_3_29529*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29424Љ
concatenate/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_29437Ј
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_4_29533conv2d_4_29535*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29450­
concatenate_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_29463Њ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_5_29539conv2d_5_29541*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29476Ћ
concatenate_2/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_29489Њ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_6_29545conv2d_6_29547*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29502
IdentityIdentity)conv2d_6/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЙ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
Я
V
"__inference__update_step_xla_30795
gradient"
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@: *
	_noinline(:P L
&
_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Я
V
"__inference__update_step_xla_30745
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:P L
&
_output_shapes
:  
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
я
ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29407

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Д

(__inference_conv2d_4_layer_call_fn_31086

inputs!
unknown:@ 
	unknown_0: 
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29450
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
я
ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_31097

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
п

%__inference_model_layer_call_fn_29702
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29671
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1
э
њ
A__inference_conv2d_layer_call_and_return_conditional_losses_29373

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
о
t
H__inference_concatenate_1_layer_call_and_return_conditional_losses_31110
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_1
Я
V
"__inference__update_step_xla_30775
gradient"
variable:@ *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@ : *
	_noinline(:P L
&
_output_shapes
:@ 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
L
Ю
C__inference_zero_dce_layer_call_and_return_conditional_losses_30154
data%
model_30060: 
model_30062: %
model_30064:  
model_30066: %
model_30068:  
model_30070: %
model_30072:  
model_30074: %
model_30076:@ 
model_30078: %
model_30080:@ 
model_30082: %
model_30084:@
model_30086:
identityЂmodel/StatefulPartitionedCall 
model/StatefulPartitionedCallStatefulPartitionedCalldatamodel_30060model_30062model_30064model_30066model_30068model_30070model_30072model_30074model_30076model_30078model_30080model_30082model_30084model_30086*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29596l
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSlice&model/StatefulPartitionedCall:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_1StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_2StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_3StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_4StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_5StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_6StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_7StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskR
SquareSquaredata*
T0*1
_output_shapes
:џџџџџџџџџиX
subSub
Square:y:0data*
T0*1
_output_shapes
:џџџџџџџџџиg
mulMulstrided_slice:output:0sub:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
addAddV2datamul:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџи_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_1Mulstrided_slice_1:output:0	sub_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_2Mulstrided_slice_2:output:0	sub_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_3Mulstrided_slice_3:output:0	sub_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_4Mulstrided_slice_4:output:0	sub_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_5Mulstrided_slice_5:output:0	sub_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_6Mulstrided_slice_6:output:0	sub_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_7Mulstrided_slice_7:output:0	sub_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџиb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџиf
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:W S
1
_output_shapes
:џџџџџџџџџи

_user_specified_namedata
я
ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29424

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Щ
Y
-__inference_concatenate_1_layer_call_fn_31103
inputs_0
inputs_1
identityн
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_29463z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_1
ЙП
Њ)
__inference__traced_save_31450
file_prefix>
$read_disablecopyonread_conv2d_kernel: 2
$read_1_disablecopyonread_conv2d_bias: B
(read_2_disablecopyonread_conv2d_1_kernel:  4
&read_3_disablecopyonread_conv2d_1_bias: B
(read_4_disablecopyonread_conv2d_2_kernel:  4
&read_5_disablecopyonread_conv2d_2_bias: B
(read_6_disablecopyonread_conv2d_3_kernel:  4
&read_7_disablecopyonread_conv2d_3_bias: B
(read_8_disablecopyonread_conv2d_4_kernel:@ 4
&read_9_disablecopyonread_conv2d_4_bias: C
)read_10_disablecopyonread_conv2d_5_kernel:@ 5
'read_11_disablecopyonread_conv2d_5_bias: C
)read_12_disablecopyonread_conv2d_6_kernel:@5
'read_13_disablecopyonread_conv2d_6_bias:-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: H
.read_16_disablecopyonread_adam_m_conv2d_kernel: H
.read_17_disablecopyonread_adam_v_conv2d_kernel: :
,read_18_disablecopyonread_adam_m_conv2d_bias: :
,read_19_disablecopyonread_adam_v_conv2d_bias: J
0read_20_disablecopyonread_adam_m_conv2d_1_kernel:  J
0read_21_disablecopyonread_adam_v_conv2d_1_kernel:  <
.read_22_disablecopyonread_adam_m_conv2d_1_bias: <
.read_23_disablecopyonread_adam_v_conv2d_1_bias: J
0read_24_disablecopyonread_adam_m_conv2d_2_kernel:  J
0read_25_disablecopyonread_adam_v_conv2d_2_kernel:  <
.read_26_disablecopyonread_adam_m_conv2d_2_bias: <
.read_27_disablecopyonread_adam_v_conv2d_2_bias: J
0read_28_disablecopyonread_adam_m_conv2d_3_kernel:  J
0read_29_disablecopyonread_adam_v_conv2d_3_kernel:  <
.read_30_disablecopyonread_adam_m_conv2d_3_bias: <
.read_31_disablecopyonread_adam_v_conv2d_3_bias: J
0read_32_disablecopyonread_adam_m_conv2d_4_kernel:@ J
0read_33_disablecopyonread_adam_v_conv2d_4_kernel:@ <
.read_34_disablecopyonread_adam_m_conv2d_4_bias: <
.read_35_disablecopyonread_adam_v_conv2d_4_bias: J
0read_36_disablecopyonread_adam_m_conv2d_5_kernel:@ J
0read_37_disablecopyonread_adam_v_conv2d_5_kernel:@ <
.read_38_disablecopyonread_adam_m_conv2d_5_bias: <
.read_39_disablecopyonread_adam_v_conv2d_5_bias: J
0read_40_disablecopyonread_adam_m_conv2d_6_kernel:@J
0read_41_disablecopyonread_adam_v_conv2d_6_kernel:@<
.read_42_disablecopyonread_adam_m_conv2d_6_bias:<
.read_43_disablecopyonread_adam_v_conv2d_6_bias:
savev2_const
identity_89ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_30/DisableCopyOnReadЂRead_30/ReadVariableOpЂRead_31/DisableCopyOnReadЂRead_31/ReadVariableOpЂRead_32/DisableCopyOnReadЂRead_32/ReadVariableOpЂRead_33/DisableCopyOnReadЂRead_33/ReadVariableOpЂRead_34/DisableCopyOnReadЂRead_34/ReadVariableOpЂRead_35/DisableCopyOnReadЂRead_35/ReadVariableOpЂRead_36/DisableCopyOnReadЂRead_36/ReadVariableOpЂRead_37/DisableCopyOnReadЂRead_37/ReadVariableOpЂRead_38/DisableCopyOnReadЂRead_38/ReadVariableOpЂRead_39/DisableCopyOnReadЂRead_39/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_40/DisableCopyOnReadЂRead_40/ReadVariableOpЂRead_41/DisableCopyOnReadЂRead_41/ReadVariableOpЂRead_42/DisableCopyOnReadЂRead_42/ReadVariableOpЂRead_43/DisableCopyOnReadЂRead_43/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 Ј
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
  
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 А
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:  z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 А
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:  z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 А
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:  z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 А
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_conv2d_4_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_conv2d_4_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 Г
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_conv2d_5_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_conv2d_5_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 Г
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv2d_6_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:@|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv2d_6_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_iteration^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ё
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_learning_rate^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 И
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_m_conv2d_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 И
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_adam_v_conv2d_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_18/DisableCopyOnReadDisableCopyOnRead,read_18_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 Њ
Read_18/ReadVariableOpReadVariableOp,read_18_disablecopyonread_adam_m_conv2d_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_19/DisableCopyOnReadDisableCopyOnRead,read_19_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 Њ
Read_19/ReadVariableOpReadVariableOp,read_19_disablecopyonread_adam_v_conv2d_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_adam_m_conv2d_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_21/DisableCopyOnReadDisableCopyOnRead0read_21_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_21/ReadVariableOpReadVariableOp0read_21_disablecopyonread_adam_v_conv2d_1_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_22/DisableCopyOnReadDisableCopyOnRead.read_22_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_22/ReadVariableOpReadVariableOp.read_22_disablecopyonread_adam_m_conv2d_1_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_23/DisableCopyOnReadDisableCopyOnRead.read_23_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_23/ReadVariableOpReadVariableOp.read_23_disablecopyonread_adam_v_conv2d_1_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 К
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_m_conv2d_2_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_25/DisableCopyOnReadDisableCopyOnRead0read_25_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 К
Read_25/ReadVariableOpReadVariableOp0read_25_disablecopyonread_adam_v_conv2d_2_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_26/DisableCopyOnReadDisableCopyOnRead.read_26_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_26/ReadVariableOpReadVariableOp.read_26_disablecopyonread_adam_m_conv2d_2_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_v_conv2d_2_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_28/DisableCopyOnReadDisableCopyOnRead0read_28_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 К
Read_28/ReadVariableOpReadVariableOp0read_28_disablecopyonread_adam_m_conv2d_3_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 К
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_v_conv2d_3_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_m_conv2d_3_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_v_conv2d_3_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_32/DisableCopyOnReadDisableCopyOnRead0read_32_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 К
Read_32/ReadVariableOpReadVariableOp0read_32_disablecopyonread_adam_m_conv2d_4_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_33/DisableCopyOnReadDisableCopyOnRead0read_33_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 К
Read_33/ReadVariableOpReadVariableOp0read_33_disablecopyonread_adam_v_conv2d_4_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_34/DisableCopyOnReadDisableCopyOnRead.read_34_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_34/ReadVariableOpReadVariableOp.read_34_disablecopyonread_adam_m_conv2d_4_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_35/DisableCopyOnReadDisableCopyOnRead.read_35_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_35/ReadVariableOpReadVariableOp.read_35_disablecopyonread_adam_v_conv2d_4_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_36/DisableCopyOnReadDisableCopyOnRead0read_36_disablecopyonread_adam_m_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 К
Read_36/ReadVariableOpReadVariableOp0read_36_disablecopyonread_adam_m_conv2d_5_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_37/DisableCopyOnReadDisableCopyOnRead0read_37_disablecopyonread_adam_v_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 К
Read_37/ReadVariableOpReadVariableOp0read_37_disablecopyonread_adam_v_conv2d_5_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_38/DisableCopyOnReadDisableCopyOnRead.read_38_disablecopyonread_adam_m_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_38/ReadVariableOpReadVariableOp.read_38_disablecopyonread_adam_m_conv2d_5_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_39/DisableCopyOnReadDisableCopyOnRead.read_39_disablecopyonread_adam_v_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_39/ReadVariableOpReadVariableOp.read_39_disablecopyonread_adam_v_conv2d_5_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_40/DisableCopyOnReadDisableCopyOnRead0read_40_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 К
Read_40/ReadVariableOpReadVariableOp0read_40_disablecopyonread_adam_m_conv2d_6_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*&
_output_shapes
:@
Read_41/DisableCopyOnReadDisableCopyOnRead0read_41_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 К
Read_41/ReadVariableOpReadVariableOp0read_41_disablecopyonread_adam_v_conv2d_6_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*&
_output_shapes
:@
Read_42/DisableCopyOnReadDisableCopyOnRead.read_42_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_42/ReadVariableOpReadVariableOp.read_42_disablecopyonread_adam_m_conv2d_6_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_adam_v_conv2d_6_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:Ь
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*ѕ
valueыBш-B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЧ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ч	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *;
dtypes1
/2-	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_88Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_89IdentityIdentity_88:output:0^NoOp*
T0*
_output_shapes
: п
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_89Identity_89:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_43/ReadVariableOpRead_43/ReadVariableOp24
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
_user_specified_namefile_prefix:-

_output_shapes
: 
ќЄ

 __inference__wrapped_model_29358
input_1N
4zero_dce_model_conv2d_conv2d_readvariableop_resource: C
5zero_dce_model_conv2d_biasadd_readvariableop_resource: P
6zero_dce_model_conv2d_1_conv2d_readvariableop_resource:  E
7zero_dce_model_conv2d_1_biasadd_readvariableop_resource: P
6zero_dce_model_conv2d_2_conv2d_readvariableop_resource:  E
7zero_dce_model_conv2d_2_biasadd_readvariableop_resource: P
6zero_dce_model_conv2d_3_conv2d_readvariableop_resource:  E
7zero_dce_model_conv2d_3_biasadd_readvariableop_resource: P
6zero_dce_model_conv2d_4_conv2d_readvariableop_resource:@ E
7zero_dce_model_conv2d_4_biasadd_readvariableop_resource: P
6zero_dce_model_conv2d_5_conv2d_readvariableop_resource:@ E
7zero_dce_model_conv2d_5_biasadd_readvariableop_resource: P
6zero_dce_model_conv2d_6_conv2d_readvariableop_resource:@E
7zero_dce_model_conv2d_6_biasadd_readvariableop_resource:
identityЂ,zero_dce/model/conv2d/BiasAdd/ReadVariableOpЂ+zero_dce/model/conv2d/Conv2D/ReadVariableOpЂ.zero_dce/model/conv2d_1/BiasAdd/ReadVariableOpЂ-zero_dce/model/conv2d_1/Conv2D/ReadVariableOpЂ.zero_dce/model/conv2d_2/BiasAdd/ReadVariableOpЂ-zero_dce/model/conv2d_2/Conv2D/ReadVariableOpЂ.zero_dce/model/conv2d_3/BiasAdd/ReadVariableOpЂ-zero_dce/model/conv2d_3/Conv2D/ReadVariableOpЂ.zero_dce/model/conv2d_4/BiasAdd/ReadVariableOpЂ-zero_dce/model/conv2d_4/Conv2D/ReadVariableOpЂ.zero_dce/model/conv2d_5/BiasAdd/ReadVariableOpЂ-zero_dce/model/conv2d_5/Conv2D/ReadVariableOpЂ.zero_dce/model/conv2d_6/BiasAdd/ReadVariableOpЂ-zero_dce/model/conv2d_6/Conv2D/ReadVariableOpЈ
+zero_dce/model/conv2d/Conv2D/ReadVariableOpReadVariableOp4zero_dce_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ш
zero_dce/model/conv2d/Conv2DConv2Dinput_13zero_dce/model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides

,zero_dce/model/conv2d/BiasAdd/ReadVariableOpReadVariableOp5zero_dce_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
zero_dce/model/conv2d/BiasAddBiasAdd%zero_dce/model/conv2d/Conv2D:output:04zero_dce/model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи 
zero_dce/model/conv2d/ReluRelu&zero_dce/model/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи Ќ
-zero_dce/model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp6zero_dce_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0э
zero_dce/model/conv2d_1/Conv2DConv2D(zero_dce/model/conv2d/Relu:activations:05zero_dce/model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides
Ђ
.zero_dce/model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp7zero_dce_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ч
zero_dce/model/conv2d_1/BiasAddBiasAdd'zero_dce/model/conv2d_1/Conv2D:output:06zero_dce/model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи 
zero_dce/model/conv2d_1/ReluRelu(zero_dce/model/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи Ќ
-zero_dce/model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp6zero_dce_model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0я
zero_dce/model/conv2d_2/Conv2DConv2D*zero_dce/model/conv2d_1/Relu:activations:05zero_dce/model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides
Ђ
.zero_dce/model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp7zero_dce_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ч
zero_dce/model/conv2d_2/BiasAddBiasAdd'zero_dce/model/conv2d_2/Conv2D:output:06zero_dce/model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи 
zero_dce/model/conv2d_2/ReluRelu(zero_dce/model/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи Ќ
-zero_dce/model/conv2d_3/Conv2D/ReadVariableOpReadVariableOp6zero_dce_model_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0я
zero_dce/model/conv2d_3/Conv2DConv2D*zero_dce/model/conv2d_2/Relu:activations:05zero_dce/model/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides
Ђ
.zero_dce/model/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp7zero_dce_model_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ч
zero_dce/model/conv2d_3/BiasAddBiasAdd'zero_dce/model/conv2d_3/Conv2D:output:06zero_dce/model/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи 
zero_dce/model/conv2d_3/ReluRelu(zero_dce/model/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи h
&zero_dce/model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ћ
!zero_dce/model/concatenate/concatConcatV2*zero_dce/model/conv2d_3/Relu:activations:0*zero_dce/model/conv2d_2/Relu:activations:0/zero_dce/model/concatenate/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@Ќ
-zero_dce/model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp6zero_dce_model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0я
zero_dce/model/conv2d_4/Conv2DConv2D*zero_dce/model/concatenate/concat:output:05zero_dce/model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides
Ђ
.zero_dce/model/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp7zero_dce_model_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ч
zero_dce/model/conv2d_4/BiasAddBiasAdd'zero_dce/model/conv2d_4/Conv2D:output:06zero_dce/model/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи 
zero_dce/model/conv2d_4/ReluRelu(zero_dce/model/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи j
(zero_dce/model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :џ
#zero_dce/model/concatenate_1/concatConcatV2*zero_dce/model/conv2d_4/Relu:activations:0*zero_dce/model/conv2d_1/Relu:activations:01zero_dce/model/concatenate_1/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@Ќ
-zero_dce/model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp6zero_dce_model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ё
zero_dce/model/conv2d_5/Conv2DConv2D,zero_dce/model/concatenate_1/concat:output:05zero_dce/model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи *
paddingSAME*
strides
Ђ
.zero_dce/model/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp7zero_dce_model_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ч
zero_dce/model/conv2d_5/BiasAddBiasAdd'zero_dce/model/conv2d_5/Conv2D:output:06zero_dce/model/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи 
zero_dce/model/conv2d_5/ReluRelu(zero_dce/model/conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџи j
(zero_dce/model/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :§
#zero_dce/model/concatenate_2/concatConcatV2*zero_dce/model/conv2d_5/Relu:activations:0(zero_dce/model/conv2d/Relu:activations:01zero_dce/model/concatenate_2/concat/axis:output:0*
N*
T0*1
_output_shapes
:џџџџџџџџџи@Ќ
-zero_dce/model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp6zero_dce_model_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ё
zero_dce/model/conv2d_6/Conv2DConv2D,zero_dce/model/concatenate_2/concat:output:05zero_dce/model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи*
paddingSAME*
strides
Ђ
.zero_dce/model/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp7zero_dce_model_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ч
zero_dce/model/conv2d_6/BiasAddBiasAdd'zero_dce/model/conv2d_6/Conv2D:output:06zero_dce/model/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/model/conv2d_6/TanhTanh(zero_dce/model/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџиu
zero_dce/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                w
zero_dce/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               w
zero_dce/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Ќ
zero_dce/strided_sliceStridedSlice zero_dce/model/conv2d_6/Tanh:y:0%zero_dce/strided_slice/stack:output:0'zero_dce/strided_slice/stack_1:output:0'zero_dce/strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskw
zero_dce/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Д
zero_dce/strided_slice_1StridedSlice zero_dce/model/conv2d_6/Tanh:y:0'zero_dce/strided_slice_1/stack:output:0)zero_dce/strided_slice_1/stack_1:output:0)zero_dce/strided_slice_1/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskw
zero_dce/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"            	   y
 zero_dce/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Д
zero_dce/strided_slice_2StridedSlice zero_dce/model/conv2d_6/Tanh:y:0'zero_dce/strided_slice_2/stack:output:0)zero_dce/strided_slice_2/stack_1:output:0)zero_dce/strided_slice_2/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskw
zero_dce/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"            	   y
 zero_dce/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Д
zero_dce/strided_slice_3StridedSlice zero_dce/model/conv2d_6/Tanh:y:0'zero_dce/strided_slice_3/stack:output:0)zero_dce/strided_slice_3/stack_1:output:0)zero_dce/strided_slice_3/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskw
zero_dce/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Д
zero_dce/strided_slice_4StridedSlice zero_dce/model/conv2d_6/Tanh:y:0'zero_dce/strided_slice_4/stack:output:0)zero_dce/strided_slice_4/stack_1:output:0)zero_dce/strided_slice_4/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskw
zero_dce/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Д
zero_dce/strided_slice_5StridedSlice zero_dce/model/conv2d_6/Tanh:y:0'zero_dce/strided_slice_5/stack:output:0)zero_dce/strided_slice_5/stack_1:output:0)zero_dce/strided_slice_5/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskw
zero_dce/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Д
zero_dce/strided_slice_6StridedSlice zero_dce/model/conv2d_6/Tanh:y:0'zero_dce/strided_slice_6/stack:output:0)zero_dce/strided_slice_6/stack_1:output:0)zero_dce/strided_slice_6/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskw
zero_dce/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               y
 zero_dce/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            Д
zero_dce/strided_slice_7StridedSlice zero_dce/model/conv2d_6/Tanh:y:0'zero_dce/strided_slice_7/stack:output:0)zero_dce/strided_slice_7/stack_1:output:0)zero_dce/strided_slice_7/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_mask^
zero_dce/SquareSquareinput_1*
T0*1
_output_shapes
:џџџџџџџџџиm
zero_dce/subSubzero_dce/Square:y:0input_1*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mulMulzero_dce/strided_slice:output:0zero_dce/sub:z:0*
T0*1
_output_shapes
:џџџџџџџџџиl
zero_dce/addAddV2input_1zero_dce/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџиi
zero_dce/Square_1Squarezero_dce/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџиz
zero_dce/sub_1Subzero_dce/Square_1:y:0zero_dce/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mul_1Mul!zero_dce/strided_slice_1:output:0zero_dce/sub_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиy
zero_dce/add_1AddV2zero_dce/add:z:0zero_dce/mul_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиk
zero_dce/Square_2Squarezero_dce/add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи|
zero_dce/sub_2Subzero_dce/Square_2:y:0zero_dce/add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mul_2Mul!zero_dce/strided_slice_2:output:0zero_dce/sub_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи{
zero_dce/add_2AddV2zero_dce/add_1:z:0zero_dce/mul_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиk
zero_dce/Square_3Squarezero_dce/add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи|
zero_dce/sub_3Subzero_dce/Square_3:y:0zero_dce/add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mul_3Mul!zero_dce/strided_slice_3:output:0zero_dce/sub_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи{
zero_dce/add_3AddV2zero_dce/add_2:z:0zero_dce/mul_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиk
zero_dce/Square_4Squarezero_dce/add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи|
zero_dce/sub_4Subzero_dce/Square_4:y:0zero_dce/add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mul_4Mul!zero_dce/strided_slice_4:output:0zero_dce/sub_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи{
zero_dce/add_4AddV2zero_dce/add_3:z:0zero_dce/mul_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиk
zero_dce/Square_5Squarezero_dce/add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи|
zero_dce/sub_5Subzero_dce/Square_5:y:0zero_dce/add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mul_5Mul!zero_dce/strided_slice_5:output:0zero_dce/sub_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи{
zero_dce/add_5AddV2zero_dce/add_4:z:0zero_dce/mul_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиk
zero_dce/Square_6Squarezero_dce/add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи|
zero_dce/sub_6Subzero_dce/Square_6:y:0zero_dce/add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mul_6Mul!zero_dce/strided_slice_6:output:0zero_dce/sub_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи{
zero_dce/add_6AddV2zero_dce/add_5:z:0zero_dce/mul_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиk
zero_dce/Square_7Squarezero_dce/add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи|
zero_dce/sub_7Subzero_dce/Square_7:y:0zero_dce/add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи
zero_dce/mul_7Mul!zero_dce/strided_slice_7:output:0zero_dce/sub_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџи{
zero_dce/add_7AddV2zero_dce/add_6:z:0zero_dce/mul_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџиk
IdentityIdentityzero_dce/add_7:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџищ
NoOpNoOp-^zero_dce/model/conv2d/BiasAdd/ReadVariableOp,^zero_dce/model/conv2d/Conv2D/ReadVariableOp/^zero_dce/model/conv2d_1/BiasAdd/ReadVariableOp.^zero_dce/model/conv2d_1/Conv2D/ReadVariableOp/^zero_dce/model/conv2d_2/BiasAdd/ReadVariableOp.^zero_dce/model/conv2d_2/Conv2D/ReadVariableOp/^zero_dce/model/conv2d_3/BiasAdd/ReadVariableOp.^zero_dce/model/conv2d_3/Conv2D/ReadVariableOp/^zero_dce/model/conv2d_4/BiasAdd/ReadVariableOp.^zero_dce/model/conv2d_4/Conv2D/ReadVariableOp/^zero_dce/model/conv2d_5/BiasAdd/ReadVariableOp.^zero_dce/model/conv2d_5/Conv2D/ReadVariableOp/^zero_dce/model/conv2d_6/BiasAdd/ReadVariableOp.^zero_dce/model/conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 2\
,zero_dce/model/conv2d/BiasAdd/ReadVariableOp,zero_dce/model/conv2d/BiasAdd/ReadVariableOp2Z
+zero_dce/model/conv2d/Conv2D/ReadVariableOp+zero_dce/model/conv2d/Conv2D/ReadVariableOp2`
.zero_dce/model/conv2d_1/BiasAdd/ReadVariableOp.zero_dce/model/conv2d_1/BiasAdd/ReadVariableOp2^
-zero_dce/model/conv2d_1/Conv2D/ReadVariableOp-zero_dce/model/conv2d_1/Conv2D/ReadVariableOp2`
.zero_dce/model/conv2d_2/BiasAdd/ReadVariableOp.zero_dce/model/conv2d_2/BiasAdd/ReadVariableOp2^
-zero_dce/model/conv2d_2/Conv2D/ReadVariableOp-zero_dce/model/conv2d_2/Conv2D/ReadVariableOp2`
.zero_dce/model/conv2d_3/BiasAdd/ReadVariableOp.zero_dce/model/conv2d_3/BiasAdd/ReadVariableOp2^
-zero_dce/model/conv2d_3/Conv2D/ReadVariableOp-zero_dce/model/conv2d_3/Conv2D/ReadVariableOp2`
.zero_dce/model/conv2d_4/BiasAdd/ReadVariableOp.zero_dce/model/conv2d_4/BiasAdd/ReadVariableOp2^
-zero_dce/model/conv2d_4/Conv2D/ReadVariableOp-zero_dce/model/conv2d_4/Conv2D/ReadVariableOp2`
.zero_dce/model/conv2d_5/BiasAdd/ReadVariableOp.zero_dce/model/conv2d_5/BiasAdd/ReadVariableOp2^
-zero_dce/model/conv2d_5/Conv2D/ReadVariableOp-zero_dce/model/conv2d_5/Conv2D/ReadVariableOp2`
.zero_dce/model/conv2d_6/BiasAdd/ReadVariableOp.zero_dce/model/conv2d_6/BiasAdd/ReadVariableOp2^
-zero_dce/model/conv2d_6/Conv2D/ReadVariableOp-zero_dce/model/conv2d_6/Conv2D/ReadVariableOp:Z V
1
_output_shapes
:џџџџџџџџџи
!
_user_specified_name	input_1


(__inference_zero_dce_layer_call_fn_30484
data!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldataunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_zero_dce_layer_call_and_return_conditional_losses_30284y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџи`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
1
_output_shapes
:џџџџџџџџџи

_user_specified_namedata
я
ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31064

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
я
ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31024

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Д

(__inference_conv2d_2_layer_call_fn_31033

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29407
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_30800
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ћ
J
"__inference__update_step_xla_30780
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ЏL
б
C__inference_zero_dce_layer_call_and_return_conditional_losses_30054
input_1%
model_29960: 
model_29962: %
model_29964:  
model_29966: %
model_29968:  
model_29970: %
model_29972:  
model_29974: %
model_29976:@ 
model_29978: %
model_29980:@ 
model_29982: %
model_29984:@
model_29986:
identityЂmodel/StatefulPartitionedCallЃ
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_29960model_29962model_29964model_29966model_29968model_29970model_29972model_29974model_29976model_29978model_29980model_29982model_29984model_29986*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29671l
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSlice&model/StatefulPartitionedCall:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_1StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_2StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_3StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_4StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_5StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_6StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_7StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskU
SquareSquareinput_1*
T0*1
_output_shapes
:џџџџџџџџџи[
subSub
Square:y:0input_1*
T0*1
_output_shapes
:џџџџџџџџџиg
mulMulstrided_slice:output:0sub:z:0*
T0*1
_output_shapes
:џџџџџџџџџиZ
addAddV2input_1mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџи_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_1Mulstrided_slice_1:output:0	sub_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_2Mulstrided_slice_2:output:0	sub_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_3Mulstrided_slice_3:output:0	sub_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_4Mulstrided_slice_4:output:0	sub_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_5Mulstrided_slice_5:output:0	sub_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_6Mulstrided_slice_6:output:0	sub_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_7Mulstrided_slice_7:output:0	sub_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџиb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџиf
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџи
!
_user_specified_name	input_1
х
ќ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29502

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџq
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
я
ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31044

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Є

(__inference_zero_dce_layer_call_fn_30185
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_zero_dce_layer_call_and_return_conditional_losses_30154y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџи`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџи
!
_user_specified_name	input_1
Д1
Ц
@__inference_model_layer_call_and_return_conditional_losses_29671

inputs&
conv2d_29632: 
conv2d_29634: (
conv2d_1_29637:  
conv2d_1_29639: (
conv2d_2_29642:  
conv2d_2_29644: (
conv2d_3_29647:  
conv2d_3_29649: (
conv2d_4_29653:@ 
conv2d_4_29655: (
conv2d_5_29659:@ 
conv2d_5_29661: (
conv2d_6_29665:@
conv2d_6_29667:
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_29632conv2d_29634*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_29373Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_29637conv2d_1_29639*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29390­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_29642conv2d_2_29644*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_29407­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_29647conv2d_3_29649*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29424Љ
concatenate/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_29437Ј
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_4_29653conv2d_4_29655*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29450­
concatenate_1/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_29463Њ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0conv2d_5_29659conv2d_5_29661*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29476Ћ
concatenate_2/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_29489Њ
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0conv2d_6_29665conv2d_6_29667*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29502
IdentityIdentity)conv2d_6/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЙ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
я
ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_31130

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Я
V
"__inference__update_step_xla_30765
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:P L
&
_output_shapes
:  
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
х
ќ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31163

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџq
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Д

(__inference_conv2d_1_layer_call_fn_31013

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_29390
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
А

&__inference_conv2d_layer_call_fn_30993

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_29373
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ж
r
H__inference_concatenate_1_layer_call_and_return_conditional_losses_29463

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
м

%__inference_model_layer_call_fn_30833

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29596
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
я
ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_29450

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Я
V
"__inference__update_step_xla_30755
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:P L
&
_output_shapes
:  
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
м
r
F__inference_concatenate_layer_call_and_return_conditional_losses_31077
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_1
ЏL
б
C__inference_zero_dce_layer_call_and_return_conditional_losses_29957
input_1%
model_29863: 
model_29865: %
model_29867:  
model_29869: %
model_29871:  
model_29873: %
model_29875:  
model_29877: %
model_29879:@ 
model_29881: %
model_29883:@ 
model_29885: %
model_29887:@
model_29889:
identityЂmodel/StatefulPartitionedCallЃ
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_29863model_29865model_29867model_29869model_29871model_29873model_29875model_29877model_29879model_29881model_29883model_29885model_29887model_29889*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29596l
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSlice&model/StatefulPartitionedCall:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_1StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_2StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_3StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_4StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_5StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_6StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_7StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskU
SquareSquareinput_1*
T0*1
_output_shapes
:џџџџџџџџџи[
subSub
Square:y:0input_1*
T0*1
_output_shapes
:џџџџџџџџџиg
mulMulstrided_slice:output:0sub:z:0*
T0*1
_output_shapes
:џџџџџџџџџиZ
addAddV2input_1mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџи_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_1Mulstrided_slice_1:output:0	sub_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_2Mulstrided_slice_2:output:0	sub_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_3Mulstrided_slice_3:output:0	sub_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_4Mulstrided_slice_4:output:0	sub_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_5Mulstrided_slice_5:output:0	sub_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_6Mulstrided_slice_6:output:0	sub_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_7Mulstrided_slice_7:output:0	sub_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџиb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџиf
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџи
!
_user_specified_name	input_1
Д

(__inference_conv2d_5_layer_call_fn_31119

inputs!
unknown:@ 
	unknown_0: 
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29476
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
L
Ю
C__inference_zero_dce_layer_call_and_return_conditional_losses_30284
data%
model_30190: 
model_30192: %
model_30194:  
model_30196: %
model_30198:  
model_30200: %
model_30202:  
model_30204: %
model_30206:@ 
model_30208: %
model_30210:@ 
model_30212: %
model_30214:@
model_30216:
identityЂmodel/StatefulPartitionedCall 
model/StatefulPartitionedCallStatefulPartitionedCalldatamodel_30190model_30192model_30194model_30196model_30198model_30200model_30202model_30204model_30206model_30208model_30210model_30212model_30214model_30216*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29671l
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSlice&model/StatefulPartitionedCall:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_1StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_2StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*%
valueB"            	   p
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_3StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_4StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_5StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_6StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskn
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_slice_7StridedSlice&model/StatefulPartitionedCall:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*1
_output_shapes
:џџџџџџџџџи*

begin_mask*
end_maskR
SquareSquaredata*
T0*1
_output_shapes
:џџџџџџџџџиX
subSub
Square:y:0data*
T0*1
_output_shapes
:џџџџџџџџџиg
mulMulstrided_slice:output:0sub:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
addAddV2datamul:z:0*
T0*1
_output_shapes
:џџџџџџџџџиW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:џџџџџџџџџи_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_1Mulstrided_slice_1:output:0	sub_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџи^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_2Mulstrided_slice_2:output:0	sub_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_3Mulstrided_slice_3:output:0	sub_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_4Mulstrided_slice_4:output:0	sub_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_5Mulstrided_slice_5:output:0	sub_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_6Mulstrided_slice_6:output:0	sub_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:џџџџџџџџџиm
mul_7Mulstrided_slice_7:output:0	sub_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџи`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:џџџџџџџџџиb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџиf
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:W S
1
_output_shapes
:џџџџџџџџџи

_user_specified_namedata
цK

@__inference_model_layer_call_and_return_conditional_losses_30925

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource:  6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:@ 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource:@ 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource:@6
(conv2d_6_biasadd_readvariableop_resource:
identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂconv2d_6/BiasAdd/ReadVariableOpЂconv2d_6/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Й
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Є
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ x
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0а
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0в
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0в
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Я
concatenate/concatConcatV2conv2d_3/Relu:activations:0conv2d_2/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0в
conv2d_4/Conv2DConv2Dconcatenate/concat:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ [
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :г
concatenate_1/concatConcatV2conv2d_4/Relu:activations:0conv2d_1/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0д
conv2d_5/Conv2DConv2Dconcatenate_1/concat:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :б
concatenate_2/concatConcatV2conv2d_5/Relu:activations:0conv2d/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0д
conv2d_6/Conv2DConv2Dconcatenate_2/concat:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ|
conv2d_6/TanhTanhconv2d_6/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџz
IdentityIdentityconv2d_6/Tanh:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
цK

@__inference_model_layer_call_and_return_conditional_losses_30984

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource:  6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource:  6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource:@ 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource:@ 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource:@6
(conv2d_6_biasadd_readvariableop_resource:
identityЂconv2d/BiasAdd/ReadVariableOpЂconv2d/Conv2D/ReadVariableOpЂconv2d_1/BiasAdd/ReadVariableOpЂconv2d_1/Conv2D/ReadVariableOpЂconv2d_2/BiasAdd/ReadVariableOpЂconv2d_2/Conv2D/ReadVariableOpЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂconv2d_6/BiasAdd/ReadVariableOpЂconv2d_6/Conv2D/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Й
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Є
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ x
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0а
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0в
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0в
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Я
concatenate/concatConcatV2conv2d_3/Relu:activations:0conv2d_2/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0в
conv2d_4/Conv2DConv2Dconcatenate/concat:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ [
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :г
concatenate_1/concatConcatV2conv2d_4/Relu:activations:0conv2d_1/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0д
conv2d_5/Conv2DConv2Dconcatenate_1/concat:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ |
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :б
concatenate_2/concatConcatV2conv2d_5/Relu:activations:0conv2d/Relu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0д
conv2d_6/Conv2DConv2Dconcatenate_2/concat:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ|
conv2d_6/TanhTanhconv2d_6/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџz
IdentityIdentityconv2d_6/Tanh:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ќ

#__inference_signature_wrapper_30418
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџи*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_29358y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџи`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:џџџџџџџџџи: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџи
!
_user_specified_name	input_1
Ћ
J
"__inference__update_step_xla_30750
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ЯИ
Ж
!__inference__traced_restore_31592
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel:  .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel:  .
 assignvariableop_5_conv2d_2_bias: <
"assignvariableop_6_conv2d_3_kernel:  .
 assignvariableop_7_conv2d_3_bias: <
"assignvariableop_8_conv2d_4_kernel:@ .
 assignvariableop_9_conv2d_4_bias: =
#assignvariableop_10_conv2d_5_kernel:@ /
!assignvariableop_11_conv2d_5_bias: =
#assignvariableop_12_conv2d_6_kernel:@/
!assignvariableop_13_conv2d_6_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: B
(assignvariableop_16_adam_m_conv2d_kernel: B
(assignvariableop_17_adam_v_conv2d_kernel: 4
&assignvariableop_18_adam_m_conv2d_bias: 4
&assignvariableop_19_adam_v_conv2d_bias: D
*assignvariableop_20_adam_m_conv2d_1_kernel:  D
*assignvariableop_21_adam_v_conv2d_1_kernel:  6
(assignvariableop_22_adam_m_conv2d_1_bias: 6
(assignvariableop_23_adam_v_conv2d_1_bias: D
*assignvariableop_24_adam_m_conv2d_2_kernel:  D
*assignvariableop_25_adam_v_conv2d_2_kernel:  6
(assignvariableop_26_adam_m_conv2d_2_bias: 6
(assignvariableop_27_adam_v_conv2d_2_bias: D
*assignvariableop_28_adam_m_conv2d_3_kernel:  D
*assignvariableop_29_adam_v_conv2d_3_kernel:  6
(assignvariableop_30_adam_m_conv2d_3_bias: 6
(assignvariableop_31_adam_v_conv2d_3_bias: D
*assignvariableop_32_adam_m_conv2d_4_kernel:@ D
*assignvariableop_33_adam_v_conv2d_4_kernel:@ 6
(assignvariableop_34_adam_m_conv2d_4_bias: 6
(assignvariableop_35_adam_v_conv2d_4_bias: D
*assignvariableop_36_adam_m_conv2d_5_kernel:@ D
*assignvariableop_37_adam_v_conv2d_5_kernel:@ 6
(assignvariableop_38_adam_m_conv2d_5_bias: 6
(assignvariableop_39_adam_v_conv2d_5_bias: D
*assignvariableop_40_adam_m_conv2d_6_kernel:@D
*assignvariableop_41_adam_v_conv2d_6_kernel:@6
(assignvariableop_42_adam_m_conv2d_6_bias:6
(assignvariableop_43_adam_v_conv2d_6_bias:
identity_45ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Я
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*ѕ
valueыBш-B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЪ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ъ
_output_shapesЗ
Д:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_6_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_6_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_m_conv2d_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_v_conv2d_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_m_conv2d_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_v_conv2d_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_m_conv2d_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_v_conv2d_1_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_m_conv2d_1_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_v_conv2d_1_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_conv2d_2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_conv2d_2_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_conv2d_2_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_conv2d_2_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_conv2d_3_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_conv2d_3_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_conv2d_3_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_conv2d_3_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_m_conv2d_4_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_v_conv2d_4_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_m_conv2d_4_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_v_conv2d_4_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_m_conv2d_5_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_v_conv2d_5_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_m_conv2d_5_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_v_conv2d_5_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_m_conv2d_6_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_v_conv2d_6_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_m_conv2d_6_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_v_conv2d_6_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_45IdentityIdentity_44:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_45Identity_45:output:0*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_43AssignVariableOp_432(
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
Я
V
"__inference__update_step_xla_30735
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
я
ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_29476

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_30770
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ћ
J
"__inference__update_step_xla_30790
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Х
W
+__inference_concatenate_layer_call_fn_31070
inputs_0
inputs_1
identityл
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_29437z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_1
Д

(__inference_conv2d_3_layer_call_fn_31053

inputs!
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_29424
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
э
њ
A__inference_conv2d_layer_call_and_return_conditional_losses_31004

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
о
t
H__inference_concatenate_2_layer_call_and_return_conditional_losses_31143
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
"
_user_specified_name
inputs_1"ѓ
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*П
serving_defaultЋ
E
input_1:
serving_default_input_1:0џџџџџџџџџиF
output_1:
StatefulPartitionedCall:0џџџџџџџџџиtensorflow/serving/predict:Эт
њ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	dce_model
		optimizer

loss

signatures"
_tf_keras_model

0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper

0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Щ
trace_0
 trace_1
!trace_2
"trace_32о
(__inference_zero_dce_layer_call_fn_30185
(__inference_zero_dce_layer_call_fn_30315
(__inference_zero_dce_layer_call_fn_30451
(__inference_zero_dce_layer_call_fn_30484Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 ztrace_0z trace_1z!trace_2z"trace_3
Е
#trace_0
$trace_1
%trace_2
&trace_32Ъ
C__inference_zero_dce_layer_call_and_return_conditional_losses_29957
C__inference_zero_dce_layer_call_and_return_conditional_losses_30054
C__inference_zero_dce_layer_call_and_return_conditional_losses_30607
C__inference_zero_dce_layer_call_and_return_conditional_losses_30730Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 z#trace_0z$trace_1z%trace_2z&trace_3
ЫBШ
 __inference__wrapped_model_29358input_1"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э
'layer-0
(layer_with_weights-0
(layer-1
)layer_with_weights-1
)layer-2
*layer_with_weights-2
*layer-3
+layer_with_weights-3
+layer-4
,layer-5
-layer_with_weights-4
-layer-6
.layer-7
/layer_with_weights-5
/layer-8
0layer-9
1layer_with_weights-6
1layer-10
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_network

8
_variables
9_iterations
:_learning_rate
;_index_dict
<
_momentums
=_velocities
>_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
?serving_default"
signature_map
':% 2conv2d/kernel
: 2conv2d/bias
):'  2conv2d_1/kernel
: 2conv2d_1/bias
):'  2conv2d_2/kernel
: 2conv2d_2/bias
):'  2conv2d_3/kernel
: 2conv2d_3/bias
):'@ 2conv2d_4/kernel
: 2conv2d_4/bias
):'@ 2conv2d_5/kernel
: 2conv2d_5/bias
):'@2conv2d_6/kernel
:2conv2d_6/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
(__inference_zero_dce_layer_call_fn_30185input_1"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
юBы
(__inference_zero_dce_layer_call_fn_30315input_1"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ыBш
(__inference_zero_dce_layer_call_fn_30451data"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
ыBш
(__inference_zero_dce_layer_call_fn_30484data"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
C__inference_zero_dce_layer_call_and_return_conditional_losses_29957input_1"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
C__inference_zero_dce_layer_call_and_return_conditional_losses_30054input_1"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
C__inference_zero_dce_layer_call_and_return_conditional_losses_30607data"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
B
C__inference_zero_dce_layer_call_and_return_conditional_losses_30730data"Г
ЌВЈ
FullArgSpec
args
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 
6
@_init_input_shape"
_tf_keras_input_layer
н
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
 G_jit_compiled_convolution_op"
_tf_keras_layer
н
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

kernel
bias
 N_jit_compiled_convolution_op"
_tf_keras_layer
н
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias
 U_jit_compiled_convolution_op"
_tf_keras_layer
н
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

kernel
bias
 \_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
н
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

kernel
bias
 i_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
н
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

kernel
bias
 v_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
с
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op"
_tf_keras_layer

0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper

0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
Ч
trace_0
trace_1
trace_2
trace_32д
%__inference_model_layer_call_fn_29627
%__inference_model_layer_call_fn_29702
%__inference_model_layer_call_fn_30833
%__inference_model_layer_call_fn_30866Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
Г
trace_0
trace_1
trace_2
trace_32Р
@__inference_model_layer_call_and_return_conditional_losses_29509
@__inference_model_layer_call_and_return_conditional_losses_29551
@__inference_model_layer_call_and_return_conditional_losses_30925
@__inference_model_layer_call_and_return_conditional_losses_30984Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3

90
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
Ё17
Ђ18
Ѓ19
Є20
Ѕ21
І22
Ї23
Ј24
Љ25
Њ26
Ћ27
Ќ28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper

0
1
2
3
4
5
6
7
Ё8
Ѓ9
Ѕ10
Ї11
Љ12
Ћ13"
trackable_list_wrapper

0
1
2
3
4
5
6
 7
Ђ8
Є9
І10
Ј11
Њ12
Ќ13"
trackable_list_wrapper
Н
­trace_0
Ўtrace_1
Џtrace_2
Аtrace_3
Бtrace_4
Вtrace_5
Гtrace_6
Дtrace_7
Еtrace_8
Жtrace_9
Зtrace_10
Иtrace_11
Йtrace_12
Кtrace_132Њ
"__inference__update_step_xla_30735
"__inference__update_step_xla_30740
"__inference__update_step_xla_30745
"__inference__update_step_xla_30750
"__inference__update_step_xla_30755
"__inference__update_step_xla_30760
"__inference__update_step_xla_30765
"__inference__update_step_xla_30770
"__inference__update_step_xla_30775
"__inference__update_step_xla_30780
"__inference__update_step_xla_30785
"__inference__update_step_xla_30790
"__inference__update_step_xla_30795
"__inference__update_step_xla_30800Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0z­trace_0zЎtrace_1zЏtrace_2zАtrace_3zБtrace_4zВtrace_5zГtrace_6zДtrace_7zЕtrace_8zЖtrace_9zЗtrace_10zИtrace_11zЙtrace_12zКtrace_13
ЪBЧ
#__inference_signature_wrapper_30418input_1"
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
т
Рtrace_02У
&__inference_conv2d_layer_call_fn_30993
В
FullArgSpec
args

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
annotationsЊ *
 zРtrace_0
§
Сtrace_02о
A__inference_conv2d_layer_call_and_return_conditional_losses_31004
В
FullArgSpec
args

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
annotationsЊ *
 zСtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
ф
Чtrace_02Х
(__inference_conv2d_1_layer_call_fn_31013
В
FullArgSpec
args

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
annotationsЊ *
 zЧtrace_0
џ
Шtrace_02р
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31024
В
FullArgSpec
args

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
annotationsЊ *
 zШtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
ф
Юtrace_02Х
(__inference_conv2d_2_layer_call_fn_31033
В
FullArgSpec
args

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
annotationsЊ *
 zЮtrace_0
џ
Яtrace_02р
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31044
В
FullArgSpec
args

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
annotationsЊ *
 zЯtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ф
еtrace_02Х
(__inference_conv2d_3_layer_call_fn_31053
В
FullArgSpec
args

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
annotationsЊ *
 zеtrace_0
џ
жtrace_02р
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31064
В
FullArgSpec
args

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
annotationsЊ *
 zжtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
ч
мtrace_02Ш
+__inference_concatenate_layer_call_fn_31070
В
FullArgSpec
args

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
annotationsЊ *
 zмtrace_0

нtrace_02у
F__inference_concatenate_layer_call_and_return_conditional_losses_31077
В
FullArgSpec
args

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
annotationsЊ *
 zнtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ф
уtrace_02Х
(__inference_conv2d_4_layer_call_fn_31086
В
FullArgSpec
args

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
annotationsЊ *
 zуtrace_0
џ
фtrace_02р
C__inference_conv2d_4_layer_call_and_return_conditional_losses_31097
В
FullArgSpec
args

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
annotationsЊ *
 zфtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
щ
ъtrace_02Ъ
-__inference_concatenate_1_layer_call_fn_31103
В
FullArgSpec
args

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
annotationsЊ *
 zъtrace_0

ыtrace_02х
H__inference_concatenate_1_layer_call_and_return_conditional_losses_31110
В
FullArgSpec
args

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
annotationsЊ *
 zыtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ф
ёtrace_02Х
(__inference_conv2d_5_layer_call_fn_31119
В
FullArgSpec
args

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
annotationsЊ *
 zёtrace_0
џ
ђtrace_02р
C__inference_conv2d_5_layer_call_and_return_conditional_losses_31130
В
FullArgSpec
args

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
annotationsЊ *
 zђtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
ѓnon_trainable_variables
єlayers
ѕmetrics
 іlayer_regularization_losses
їlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
щ
јtrace_02Ъ
-__inference_concatenate_2_layer_call_fn_31136
В
FullArgSpec
args

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
annotationsЊ *
 zјtrace_0

љtrace_02х
H__inference_concatenate_2_layer_call_and_return_conditional_losses_31143
В
FullArgSpec
args

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
annotationsЊ *
 zљtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
џtrace_02Х
(__inference_conv2d_6_layer_call_fn_31152
В
FullArgSpec
args

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
annotationsЊ *
 zџtrace_0
џ
trace_02р
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31163
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
n
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
%__inference_model_layer_call_fn_29627input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
%__inference_model_layer_call_fn_29702input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
%__inference_model_layer_call_fn_30833inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
%__inference_model_layer_call_fn_30866inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_29509input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_29551input_1"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_30925inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
@__inference_model_layer_call_and_return_conditional_losses_30984inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
,:* 2Adam/m/conv2d/kernel
,:* 2Adam/v/conv2d/kernel
: 2Adam/m/conv2d/bias
: 2Adam/v/conv2d/bias
.:,  2Adam/m/conv2d_1/kernel
.:,  2Adam/v/conv2d_1/kernel
 : 2Adam/m/conv2d_1/bias
 : 2Adam/v/conv2d_1/bias
.:,  2Adam/m/conv2d_2/kernel
.:,  2Adam/v/conv2d_2/kernel
 : 2Adam/m/conv2d_2/bias
 : 2Adam/v/conv2d_2/bias
.:,  2Adam/m/conv2d_3/kernel
.:,  2Adam/v/conv2d_3/kernel
 : 2Adam/m/conv2d_3/bias
 : 2Adam/v/conv2d_3/bias
.:,@ 2Adam/m/conv2d_4/kernel
.:,@ 2Adam/v/conv2d_4/kernel
 : 2Adam/m/conv2d_4/bias
 : 2Adam/v/conv2d_4/bias
.:,@ 2Adam/m/conv2d_5/kernel
.:,@ 2Adam/v/conv2d_5/kernel
 : 2Adam/m/conv2d_5/bias
 : 2Adam/v/conv2d_5/bias
.:,@2Adam/m/conv2d_6/kernel
.:,@2Adam/v/conv2d_6/kernel
 :2Adam/m/conv2d_6/bias
 :2Adam/v/conv2d_6/bias
эBъ
"__inference__update_step_xla_30735gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30740gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30745gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30750gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30755gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30760gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30765gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30770gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30775gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30780gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30785gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30790gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30795gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
"__inference__update_step_xla_30800gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
аBЭ
&__inference_conv2d_layer_call_fn_30993inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
ыBш
A__inference_conv2d_layer_call_and_return_conditional_losses_31004inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_1_layer_call_fn_31013inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31024inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_2_layer_call_fn_31033inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31044inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_3_layer_call_fn_31053inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31064inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
сBо
+__inference_concatenate_layer_call_fn_31070inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
 
ќBљ
F__inference_concatenate_layer_call_and_return_conditional_losses_31077inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_4_layer_call_fn_31086inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_31097inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
уBр
-__inference_concatenate_1_layer_call_fn_31103inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
 
ўBћ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_31110inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_5_layer_call_fn_31119inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_31130inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
уBр
-__inference_concatenate_2_layer_call_fn_31136inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
 
ўBћ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_31143inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_6_layer_call_fn_31152inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31163inputs"
В
FullArgSpec
args

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
annotationsЊ *
 Є
"__inference__update_step_xla_30735~xЂu
nЂk
!
gradient 
<9	%Ђ"
њ 

p
` VariableSpec 
`ЊЕьд?
Њ "
 
"__inference__update_step_xla_30740f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рЈМьд?
Њ "
 Є
"__inference__update_step_xla_30745~xЂu
nЂk
!
gradient  
<9	%Ђ"
њ  

p
` VariableSpec 
`Рньд?
Њ "
 
"__inference__update_step_xla_30750f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
` мьд?
Њ "
 Є
"__inference__update_step_xla_30755~xЂu
nЂk
!
gradient  
<9	%Ђ"
њ  

p
` VariableSpec 
`рйьд?
Њ "
 
"__inference__update_step_xla_30760f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`Риьд?
Њ "
 Є
"__inference__update_step_xla_30765~xЂu
nЂk
!
gradient  
<9	%Ђ"
њ  

p
` VariableSpec 
`Ргьд?
Њ "
 
"__inference__update_step_xla_30770f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
` вьд?
Њ "
 Є
"__inference__update_step_xla_30775~xЂu
nЂk
!
gradient@ 
<9	%Ђ"
њ@ 

p
` VariableSpec 
`жьд?
Њ "
 
"__inference__update_step_xla_30780f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рдьд?
Њ "
 Є
"__inference__update_step_xla_30785~xЂu
nЂk
!
gradient@ 
<9	%Ђ"
њ@ 

p
` VariableSpec 
` №ьд?
Њ "
 
"__inference__update_step_xla_30790f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рђьд?
Њ "
 Є
"__inference__update_step_xla_30795~xЂu
nЂk
!
gradient@
<9	%Ђ"
њ@

p
` VariableSpec 
`ьд?
Њ "
 
"__inference__update_step_xla_30800f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`рьд?
Њ "
 А
 __inference__wrapped_model_29358:Ђ7
0Ђ-
+(
input_1џџџџџџџџџи
Њ "=Њ:
8
output_1,)
output_1џџџџџџџџџиЉ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_31110мЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
-__inference_concatenate_1_layer_call_fn_31103бЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Љ
H__inference_concatenate_2_layer_call_and_return_conditional_losses_31143мЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
-__inference_concatenate_2_layer_call_fn_31136бЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ї
F__inference_concatenate_layer_call_and_return_conditional_losses_31077мЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
+__inference_concatenate_layer_call_fn_31070бЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_1_layer_call_and_return_conditional_losses_31024IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Й
(__inference_conv2d_1_layer_call_fn_31013IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ п
C__inference_conv2d_2_layer_call_and_return_conditional_losses_31044IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Й
(__inference_conv2d_2_layer_call_fn_31033IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ п
C__inference_conv2d_3_layer_call_and_return_conditional_losses_31064IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Й
(__inference_conv2d_3_layer_call_fn_31053IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ п
C__inference_conv2d_4_layer_call_and_return_conditional_losses_31097IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Й
(__inference_conv2d_4_layer_call_fn_31086IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ п
C__inference_conv2d_5_layer_call_and_return_conditional_losses_31130IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Й
(__inference_conv2d_5_layer_call_fn_31119IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ п
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31163IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Й
(__inference_conv2d_6_layer_call_fn_31152IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџн
A__inference_conv2d_layer_call_and_return_conditional_losses_31004IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 З
&__inference_conv2d_layer_call_fn_30993IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ё
@__inference_model_layer_call_and_return_conditional_losses_29509ЌRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ё
@__inference_model_layer_call_and_return_conditional_losses_29551ЌRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 №
@__inference_model_layer_call_and_return_conditional_losses_30925ЋQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 №
@__inference_model_layer_call_and_return_conditional_losses_30984ЋQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ы
%__inference_model_layer_call_fn_29627ЁRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџЫ
%__inference_model_layer_call_fn_29702ЁRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџЪ
%__inference_model_layer_call_fn_30833 QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџЪ
%__inference_model_layer_call_fn_30866 QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџО
#__inference_signature_wrapper_30418EЂB
Ђ 
;Њ8
6
input_1+(
input_1џџџџџџџџџи"=Њ:
8
output_1,)
output_1џџџџџџџџџим
C__inference_zero_dce_layer_call_and_return_conditional_losses_29957JЂG
0Ђ-
+(
input_1џџџџџџџџџи
Њ

trainingp"6Ђ3
,)
tensor_0џџџџџџџџџи
 м
C__inference_zero_dce_layer_call_and_return_conditional_losses_30054JЂG
0Ђ-
+(
input_1џџџџџџџџџи
Њ

trainingp "6Ђ3
,)
tensor_0џџџџџџџџџи
 й
C__inference_zero_dce_layer_call_and_return_conditional_losses_30607GЂD
-Ђ*
(%
dataџџџџџџџџџи
Њ

trainingp"6Ђ3
,)
tensor_0џџџџџџџџџи
 й
C__inference_zero_dce_layer_call_and_return_conditional_losses_30730GЂD
-Ђ*
(%
dataџџџџџџџџџи
Њ

trainingp "6Ђ3
,)
tensor_0џџџџџџџџџи
 Ж
(__inference_zero_dce_layer_call_fn_30185JЂG
0Ђ-
+(
input_1џџџџџџџџџи
Њ

trainingp"+(
unknownџџџџџџџџџиЖ
(__inference_zero_dce_layer_call_fn_30315JЂG
0Ђ-
+(
input_1џџџџџџџџџи
Њ

trainingp "+(
unknownџџџџџџџџџиГ
(__inference_zero_dce_layer_call_fn_30451GЂD
-Ђ*
(%
dataџџџџџџџџџи
Њ

trainingp"+(
unknownџџџџџџџџџиГ
(__inference_zero_dce_layer_call_fn_30484GЂD
-Ђ*
(%
dataџџџџџџџџџи
Њ

trainingp "+(
unknownџџџџџџџџџи